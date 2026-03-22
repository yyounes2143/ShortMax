.class public final Lcom/applovin/shadow/okio/internal/-ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,363:1\n131#1,2:369\n133#1,9:372\n68#2:364\n74#2:365\n74#2:367\n74#2:368\n68#2:396\n74#2:408\n1#3:366\n1#3:371\n212#4,7:381\n122#4:388\n219#4,5:389\n122#4:394\n226#4:395\n228#4:397\n397#4,2:398\n122#4:400\n400#4,6:401\n127#4:407\n406#4:409\n122#4:410\n407#4,13:411\n122#4:424\n422#4:425\n122#4:426\n425#4:427\n230#4,3:428\n440#4,3:431\n122#4:434\n443#4:435\n127#4:436\n446#4,10:437\n127#4:447\n456#4:448\n122#4:449\n457#4,4:450\n127#4:454\n461#4:455\n122#4:456\n462#4,14:457\n122#4:471\n477#4,2:472\n122#4:474\n481#4:475\n122#4:476\n484#4:477\n234#4,3:478\n500#4,3:481\n122#4:484\n503#4:485\n127#4:486\n506#4,2:487\n127#4:489\n510#4,10:490\n127#4:500\n520#4:501\n122#4:502\n521#4,4:503\n127#4:507\n525#4:508\n122#4:509\n526#4,4:510\n127#4:514\n530#4:515\n122#4:516\n531#4,15:517\n122#4:532\n547#4,2:533\n122#4:535\n550#4,2:536\n122#4:538\n554#4:539\n122#4:540\n557#4:541\n241#4:542\n122#4:543\n242#4,5:544\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n*L\n329#1:369,2\n329#1:372,9\n67#1:364\n68#1:365\n258#1:367\n259#1:368\n348#1:396\n348#1:408\n329#1:371\n348#1:381,7\n353#1:388\n348#1:389,5\n353#1:394\n348#1:395\n348#1:397\n348#1:398,2\n353#1:400\n348#1:401,6\n348#1:407\n348#1:409\n353#1:410\n348#1:411,13\n353#1:424\n348#1:425\n353#1:426\n348#1:427\n348#1:428,3\n348#1:431,3\n353#1:434\n348#1:435\n348#1:436\n348#1:437,10\n348#1:447\n348#1:448\n353#1:449\n348#1:450,4\n348#1:454\n348#1:455\n353#1:456\n348#1:457,14\n353#1:471\n348#1:472,2\n353#1:474\n348#1:475\n353#1:476\n348#1:477\n348#1:478,3\n348#1:481,3\n353#1:484\n348#1:485\n348#1:486\n348#1:487,2\n348#1:489\n348#1:490,10\n348#1:500\n348#1:501\n353#1:502\n348#1:503,4\n348#1:507\n348#1:508\n353#1:509\n348#1:510,4\n348#1:514\n348#1:515\n353#1:516\n348#1:517,15\n353#1:532\n348#1:533,2\n353#1:535\n348#1:536,2\n353#1:538\n348#1:539\n353#1:540\n348#1:541\n348#1:542\n353#1:543\n348#1:544,5\n*E\n"
    }
.end annotation


# static fields
.field private static final HEX_DIGIT_CHARS:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/applovin/shadow/okio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/shadow/okio/internal/-ByteString;->codePointIndexToCharIndex([BI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/applovin/shadow/okio/internal/-ByteString;->decodeHexDigit(C)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    array-length v4, v0

    .line 7
    const/4 v5, 0x0

    .line 8
    move v6, v5

    .line 9
    move v7, v6

    .line 10
    :cond_0
    :goto_0
    if-ge v5, v4, :cond_3d

    .line 11
    .line 12
    aget-byte v8, v0, v5

    .line 13
    .line 14
    const v9, 0xfffd

    .line 15
    .line 16
    .line 17
    const/16 v10, 0xa0

    .line 18
    .line 19
    const/16 v11, 0x7f

    .line 20
    .line 21
    const/16 v12, 0x20

    .line 22
    .line 23
    const/16 v13, 0xd

    .line 24
    .line 25
    const/16 v14, 0xa

    .line 26
    .line 27
    const/high16 v15, 0x10000

    .line 28
    .line 29
    const/16 v16, -0x1

    .line 30
    .line 31
    if-ltz v8, :cond_b

    .line 32
    .line 33
    add-int/lit8 v17, v7, 0x1

    .line 34
    .line 35
    if-ne v7, v1, :cond_1

    .line 36
    .line 37
    return v6

    .line 38
    :cond_1
    if-eq v8, v14, :cond_3

    .line 39
    .line 40
    if-eq v8, v13, :cond_3

    .line 41
    .line 42
    if-ltz v8, :cond_2

    .line 43
    .line 44
    if-ge v8, v12, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    if-gt v11, v8, :cond_3

    .line 48
    .line 49
    if-ge v8, v10, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    if-ne v8, v9, :cond_4

    .line 53
    .line 54
    :goto_1
    return v16

    .line 55
    :cond_4
    if-ge v8, v15, :cond_5

    .line 56
    .line 57
    move v7, v3

    .line 58
    goto :goto_2

    .line 59
    :cond_5
    const/4 v7, 0x2

    .line 60
    :goto_2
    add-int/2addr v6, v7

    .line 61
    add-int/2addr v5, v3

    .line 62
    :goto_3
    move/from16 v7, v17

    .line 63
    .line 64
    if-ge v5, v4, :cond_0

    .line 65
    .line 66
    aget-byte v8, v0, v5

    .line 67
    .line 68
    if-ltz v8, :cond_0

    .line 69
    .line 70
    add-int/2addr v5, v3

    .line 71
    add-int/lit8 v17, v7, 0x1

    .line 72
    .line 73
    if-ne v7, v1, :cond_6

    .line 74
    .line 75
    return v6

    .line 76
    :cond_6
    if-eq v8, v14, :cond_8

    .line 77
    .line 78
    if-eq v8, v13, :cond_8

    .line 79
    .line 80
    if-ltz v8, :cond_7

    .line 81
    .line 82
    if-ge v8, v12, :cond_7

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_7
    if-gt v11, v8, :cond_8

    .line 86
    .line 87
    if-ge v8, v10, :cond_8

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_8
    if-ne v8, v9, :cond_9

    .line 91
    .line 92
    :goto_4
    return v16

    .line 93
    :cond_9
    if-ge v8, v15, :cond_a

    .line 94
    .line 95
    move v7, v3

    .line 96
    goto :goto_5

    .line 97
    :cond_a
    const/4 v7, 0x2

    .line 98
    :goto_5
    add-int/2addr v6, v7

    .line 99
    goto :goto_3

    .line 100
    :cond_b
    shr-int/lit8 v2, v8, 0x5

    .line 101
    .line 102
    const/4 v15, -0x2

    .line 103
    const/16 v9, 0x80

    .line 104
    .line 105
    if-ne v2, v15, :cond_17

    .line 106
    .line 107
    add-int/lit8 v2, v5, 0x1

    .line 108
    .line 109
    if-gt v4, v2, :cond_d

    .line 110
    .line 111
    if-ne v7, v1, :cond_c

    .line 112
    .line 113
    return v6

    .line 114
    :cond_c
    return v16

    .line 115
    :cond_d
    aget-byte v2, v0, v2

    .line 116
    .line 117
    and-int/lit16 v15, v2, 0xc0

    .line 118
    .line 119
    if-ne v15, v9, :cond_15

    .line 120
    .line 121
    xor-int/lit16 v2, v2, 0xf80

    .line 122
    .line 123
    shl-int/lit8 v8, v8, 0x6

    .line 124
    .line 125
    xor-int/2addr v2, v8

    .line 126
    if-ge v2, v9, :cond_f

    .line 127
    .line 128
    if-ne v7, v1, :cond_e

    .line 129
    .line 130
    return v6

    .line 131
    :cond_e
    return v16

    .line 132
    :cond_f
    add-int/lit8 v8, v7, 0x1

    .line 133
    .line 134
    if-ne v7, v1, :cond_10

    .line 135
    .line 136
    return v6

    .line 137
    :cond_10
    if-eq v2, v14, :cond_12

    .line 138
    .line 139
    if-eq v2, v13, :cond_12

    .line 140
    .line 141
    if-ltz v2, :cond_11

    .line 142
    .line 143
    if-ge v2, v12, :cond_11

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_11
    if-gt v11, v2, :cond_12

    .line 147
    .line 148
    if-ge v2, v10, :cond_12

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_12
    const v7, 0xfffd

    .line 152
    .line 153
    .line 154
    if-ne v2, v7, :cond_13

    .line 155
    .line 156
    :goto_6
    return v16

    .line 157
    :cond_13
    const/high16 v7, 0x10000

    .line 158
    .line 159
    if-ge v2, v7, :cond_14

    .line 160
    .line 161
    move v2, v3

    .line 162
    goto :goto_7

    .line 163
    :cond_14
    const/4 v2, 0x2

    .line 164
    :goto_7
    add-int/2addr v6, v2

    .line 165
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 166
    .line 167
    const/4 v2, 0x2

    .line 168
    add-int/2addr v5, v2

    .line 169
    :goto_8
    move v7, v8

    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_15
    if-ne v7, v1, :cond_16

    .line 173
    .line 174
    return v6

    .line 175
    :cond_16
    return v16

    .line 176
    :cond_17
    const/4 v2, 0x2

    .line 177
    shr-int/lit8 v10, v8, 0x4

    .line 178
    .line 179
    const v11, 0xe000

    .line 180
    .line 181
    .line 182
    const v12, 0xd800

    .line 183
    .line 184
    .line 185
    if-ne v10, v15, :cond_27

    .line 186
    .line 187
    add-int/lit8 v10, v5, 0x2

    .line 188
    .line 189
    if-gt v4, v10, :cond_19

    .line 190
    .line 191
    if-ne v7, v1, :cond_18

    .line 192
    .line 193
    return v6

    .line 194
    :cond_18
    return v16

    .line 195
    :cond_19
    add-int/lit8 v2, v5, 0x1

    .line 196
    .line 197
    aget-byte v2, v0, v2

    .line 198
    .line 199
    and-int/lit16 v15, v2, 0xc0

    .line 200
    .line 201
    if-ne v15, v9, :cond_25

    .line 202
    .line 203
    aget-byte v10, v0, v10

    .line 204
    .line 205
    and-int/lit16 v15, v10, 0xc0

    .line 206
    .line 207
    if-ne v15, v9, :cond_23

    .line 208
    .line 209
    const v9, -0x1e080

    .line 210
    .line 211
    .line 212
    xor-int/2addr v9, v10

    .line 213
    shl-int/lit8 v2, v2, 0x6

    .line 214
    .line 215
    xor-int/2addr v2, v9

    .line 216
    shl-int/lit8 v8, v8, 0xc

    .line 217
    .line 218
    xor-int/2addr v2, v8

    .line 219
    const/16 v8, 0x800

    .line 220
    .line 221
    if-ge v2, v8, :cond_1b

    .line 222
    .line 223
    if-ne v7, v1, :cond_1a

    .line 224
    .line 225
    return v6

    .line 226
    :cond_1a
    return v16

    .line 227
    :cond_1b
    if-gt v12, v2, :cond_1d

    .line 228
    .line 229
    if-ge v2, v11, :cond_1d

    .line 230
    .line 231
    if-ne v7, v1, :cond_1c

    .line 232
    .line 233
    return v6

    .line 234
    :cond_1c
    return v16

    .line 235
    :cond_1d
    add-int/lit8 v8, v7, 0x1

    .line 236
    .line 237
    if-ne v7, v1, :cond_1e

    .line 238
    .line 239
    return v6

    .line 240
    :cond_1e
    if-eq v2, v14, :cond_20

    .line 241
    .line 242
    if-eq v2, v13, :cond_20

    .line 243
    .line 244
    if-ltz v2, :cond_1f

    .line 245
    .line 246
    const/16 v7, 0x20

    .line 247
    .line 248
    if-ge v2, v7, :cond_1f

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_1f
    const/16 v7, 0x7f

    .line 252
    .line 253
    if-gt v7, v2, :cond_20

    .line 254
    .line 255
    const/16 v7, 0xa0

    .line 256
    .line 257
    if-ge v2, v7, :cond_20

    .line 258
    .line 259
    goto :goto_9

    .line 260
    :cond_20
    const v7, 0xfffd

    .line 261
    .line 262
    .line 263
    if-ne v2, v7, :cond_21

    .line 264
    .line 265
    :goto_9
    return v16

    .line 266
    :cond_21
    const/high16 v7, 0x10000

    .line 267
    .line 268
    if-ge v2, v7, :cond_22

    .line 269
    .line 270
    move v2, v3

    .line 271
    goto :goto_a

    .line 272
    :cond_22
    const/4 v2, 0x2

    .line 273
    :goto_a
    add-int/2addr v6, v2

    .line 274
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 275
    .line 276
    add-int/lit8 v5, v5, 0x3

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_23
    if-ne v7, v1, :cond_24

    .line 280
    .line 281
    return v6

    .line 282
    :cond_24
    return v16

    .line 283
    :cond_25
    if-ne v7, v1, :cond_26

    .line 284
    .line 285
    return v6

    .line 286
    :cond_26
    return v16

    .line 287
    :cond_27
    shr-int/lit8 v2, v8, 0x3

    .line 288
    .line 289
    if-ne v2, v15, :cond_3b

    .line 290
    .line 291
    add-int/lit8 v2, v5, 0x3

    .line 292
    .line 293
    if-gt v4, v2, :cond_29

    .line 294
    .line 295
    if-ne v7, v1, :cond_28

    .line 296
    .line 297
    return v6

    .line 298
    :cond_28
    return v16

    .line 299
    :cond_29
    add-int/lit8 v10, v5, 0x1

    .line 300
    .line 301
    aget-byte v10, v0, v10

    .line 302
    .line 303
    and-int/lit16 v15, v10, 0xc0

    .line 304
    .line 305
    if-ne v15, v9, :cond_39

    .line 306
    .line 307
    const/4 v15, 0x2

    .line 308
    add-int/lit8 v17, v5, 0x2

    .line 309
    .line 310
    aget-byte v15, v0, v17

    .line 311
    .line 312
    and-int/lit16 v13, v15, 0xc0

    .line 313
    .line 314
    if-ne v13, v9, :cond_37

    .line 315
    .line 316
    aget-byte v2, v0, v2

    .line 317
    .line 318
    and-int/lit16 v13, v2, 0xc0

    .line 319
    .line 320
    if-ne v13, v9, :cond_35

    .line 321
    .line 322
    const v9, 0x381f80

    .line 323
    .line 324
    .line 325
    xor-int/2addr v2, v9

    .line 326
    shl-int/lit8 v9, v15, 0x6

    .line 327
    .line 328
    xor-int/2addr v2, v9

    .line 329
    shl-int/lit8 v9, v10, 0xc

    .line 330
    .line 331
    xor-int/2addr v2, v9

    .line 332
    shl-int/lit8 v8, v8, 0x12

    .line 333
    .line 334
    xor-int/2addr v2, v8

    .line 335
    const v8, 0x10ffff

    .line 336
    .line 337
    .line 338
    if-le v2, v8, :cond_2b

    .line 339
    .line 340
    if-ne v7, v1, :cond_2a

    .line 341
    .line 342
    return v6

    .line 343
    :cond_2a
    return v16

    .line 344
    :cond_2b
    if-gt v12, v2, :cond_2d

    .line 345
    .line 346
    if-ge v2, v11, :cond_2d

    .line 347
    .line 348
    if-ne v7, v1, :cond_2c

    .line 349
    .line 350
    return v6

    .line 351
    :cond_2c
    return v16

    .line 352
    :cond_2d
    const/high16 v8, 0x10000

    .line 353
    .line 354
    if-ge v2, v8, :cond_2f

    .line 355
    .line 356
    if-ne v7, v1, :cond_2e

    .line 357
    .line 358
    return v6

    .line 359
    :cond_2e
    return v16

    .line 360
    :cond_2f
    add-int/lit8 v8, v7, 0x1

    .line 361
    .line 362
    if-ne v7, v1, :cond_30

    .line 363
    .line 364
    return v6

    .line 365
    :cond_30
    if-eq v2, v14, :cond_32

    .line 366
    .line 367
    const/16 v7, 0xd

    .line 368
    .line 369
    if-eq v2, v7, :cond_32

    .line 370
    .line 371
    if-ltz v2, :cond_31

    .line 372
    .line 373
    const/16 v7, 0x20

    .line 374
    .line 375
    if-ge v2, v7, :cond_31

    .line 376
    .line 377
    goto :goto_b

    .line 378
    :cond_31
    const/16 v7, 0x7f

    .line 379
    .line 380
    if-gt v7, v2, :cond_32

    .line 381
    .line 382
    const/16 v7, 0xa0

    .line 383
    .line 384
    if-ge v2, v7, :cond_32

    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_32
    const v7, 0xfffd

    .line 388
    .line 389
    .line 390
    if-ne v2, v7, :cond_33

    .line 391
    .line 392
    :goto_b
    return v16

    .line 393
    :cond_33
    const/high16 v7, 0x10000

    .line 394
    .line 395
    if-ge v2, v7, :cond_34

    .line 396
    .line 397
    move v2, v3

    .line 398
    goto :goto_c

    .line 399
    :cond_34
    const/4 v2, 0x2

    .line 400
    :goto_c
    add-int/2addr v6, v2

    .line 401
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 402
    .line 403
    add-int/lit8 v5, v5, 0x4

    .line 404
    .line 405
    goto/16 :goto_8

    .line 406
    .line 407
    :cond_35
    if-ne v7, v1, :cond_36

    .line 408
    .line 409
    return v6

    .line 410
    :cond_36
    return v16

    .line 411
    :cond_37
    if-ne v7, v1, :cond_38

    .line 412
    .line 413
    return v6

    .line 414
    :cond_38
    return v16

    .line 415
    :cond_39
    if-ne v7, v1, :cond_3a

    .line 416
    .line 417
    return v6

    .line 418
    :cond_3a
    return v16

    .line 419
    :cond_3b
    if-ne v7, v1, :cond_3c

    .line 420
    .line 421
    return v6

    .line 422
    :cond_3c
    return v16

    .line 423
    :cond_3d
    return v6
.end method

.method public static final commonBase64(Lcom/applovin/shadow/okio/ByteString;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p0, v0, v1, v0}, Lcom/applovin/shadow/okio/-Base64;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final commonBase64Url(Lcom/applovin/shadow/okio/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {}, Lcom/applovin/shadow/okio/-Base64;->getBASE64_URL_SAFE()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0, v0}, Lcom/applovin/shadow/okio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final commonCompareTo(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/ByteString;)I
    .locals 9
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/ByteString;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    const/4 v5, -0x1

    .line 26
    const/4 v6, 0x1

    .line 27
    if-ge v4, v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, v4}, Lcom/applovin/shadow/okio/ByteString;->getByte(I)B

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    and-int/lit16 v7, v7, 0xff

    .line 34
    .line 35
    invoke-virtual {p1, v4}, Lcom/applovin/shadow/okio/ByteString;->getByte(I)B

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    and-int/lit16 v8, v8, 0xff

    .line 40
    .line 41
    if-ne v7, v8, :cond_0

    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    if-ge v7, v8, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v5, v6

    .line 50
    :goto_1
    return v5

    .line 51
    :cond_2
    if-ne v0, v1, :cond_3

    .line 52
    .line 53
    return v3

    .line 54
    :cond_3
    if-ge v0, v1, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    move v5, v6

    .line 58
    :goto_2
    return v5
.end method

.method public static final commonCopyInto(Lcom/applovin/shadow/okio/ByteString;I[BII)V
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "target"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    add-int/2addr p4, p1

    .line 16
    invoke-static {p0, p2, p3, p1, p4}, Lkotlin/collections/n;->h([B[BIII)[B

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final commonDecodeBase64(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/applovin/shadow/okio/-Base64;->decodeBase64ToArray(Ljava/lang/String;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/applovin/shadow/okio/ByteString;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/applovin/shadow/okio/ByteString;-><init>([B)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public static final commonDecodeHex(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    rem-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    div-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    new-array v1, v0, [B

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_0

    .line 24
    .line 25
    mul-int/lit8 v3, v2, 0x2

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {v4}, Lcom/applovin/shadow/okio/internal/-ByteString;->access$decodeHexDigit(C)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    shl-int/lit8 v4, v4, 0x4

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v3}, Lcom/applovin/shadow/okio/internal/-ByteString;->access$decodeHexDigit(C)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v4, v3

    .line 48
    int-to-byte v3, v4

    .line 49
    aput-byte v3, v1, v2

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Lcom/applovin/shadow/okio/ByteString;

    .line 55
    .line 56
    invoke-direct {p0, v1}, Lcom/applovin/shadow/okio/ByteString;-><init>([B)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "Unexpected hex string: "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public static final commonEncodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/applovin/shadow/okio/ByteString;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/applovin/shadow/okio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lcom/applovin/shadow/okio/ByteString;-><init>([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/applovin/shadow/okio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static final commonEndsWith(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/ByteString;)Z
    .locals 3
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/shadow/okio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/applovin/shadow/okio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/applovin/shadow/okio/ByteString;->rangeEquals(ILcom/applovin/shadow/okio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonEndsWith(Lcom/applovin/shadow/okio/ByteString;[B)Z
    .locals 3
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/applovin/shadow/okio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonEquals(Lcom/applovin/shadow/okio/ByteString;Ljava/lang/Object;)Z
    .locals 4
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/applovin/shadow/okio/ByteString;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast p1, Lcom/applovin/shadow/okio/ByteString;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/ByteString;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    array-length v3, v3

    .line 26
    if-ne v1, v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    array-length p0, p0

    .line 37
    invoke-virtual {p1, v2, v1, v2, p0}, Lcom/applovin/shadow/okio/ByteString;->rangeEquals(I[BII)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v0, v2

    .line 45
    :goto_0
    return v0
.end method

.method public static final commonGetByte(Lcom/applovin/shadow/okio/ByteString;I)B
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    aget-byte p0, p0, p1

    .line 11
    .line 12
    return p0
.end method

.method public static final commonGetSize(Lcom/applovin/shadow/okio/ByteString;)I
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    array-length p0, p0

    .line 11
    return p0
.end method

.method public static final commonHashCode(Lcom/applovin/shadow/okio/ByteString;)I
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getHashCode$okio()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/applovin/shadow/okio/ByteString;->setHashCode$okio(I)V

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method public static final commonHex(Lcom/applovin/shadow/okio/ByteString;)Ljava/lang/String;
    .locals 8
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v0, v0

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    new-array v0, v0, [C

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    array-length v1, p0

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    if-ge v2, v1, :cond_0

    .line 23
    .line 24
    aget-byte v4, p0, v2

    .line 25
    .line 26
    add-int/lit8 v5, v3, 0x1

    .line 27
    .line 28
    invoke-static {}, Lcom/applovin/shadow/okio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    shr-int/lit8 v7, v4, 0x4

    .line 33
    .line 34
    and-int/lit8 v7, v7, 0xf

    .line 35
    .line 36
    aget-char v6, v6, v7

    .line 37
    .line 38
    aput-char v6, v0, v3

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x2

    .line 41
    .line 42
    invoke-static {}, Lcom/applovin/shadow/okio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    and-int/lit8 v4, v4, 0xf

    .line 47
    .line 48
    aget-char v4, v6, v4

    .line 49
    .line 50
    aput-char v4, v0, v5

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->x([C)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static final commonIndexOf(Lcom/applovin/shadow/okio/ByteString;[BI)I
    .locals 4
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v0, v0

    .line 16
    array-length v1, p1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-gt p2, v0, :cond_1

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    array-length v3, p1

    .line 30
    invoke-static {v2, p2, p1, v1, v3}, Lcom/applovin/shadow/okio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    return p2

    .line 37
    :cond_0
    if-eq p2, v0, :cond_1

    .line 38
    .line 39
    add-int/lit8 p2, p2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, -0x1

    .line 43
    return p0
.end method

.method public static final commonInternalArray(Lcom/applovin/shadow/okio/ByteString;)[B
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final commonLastIndexOf(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/ByteString;I)I
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/ByteString;->internalArray$okio()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/applovin/shadow/okio/ByteString;->lastIndexOf([BI)I

    move-result p0

    return p0
.end method

.method public static final commonLastIndexOf(Lcom/applovin/shadow/okio/ByteString;[BI)I
    .locals 3
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p2}, Lcom/applovin/shadow/okio/-SegmentedByteString;->resolveDefaultParameter(Lcom/applovin/shadow/okio/ByteString;I)I

    move-result p2

    .line 3
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Lcom/applovin/shadow/okio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static final commonOf([B)Lcom/applovin/shadow/okio/ByteString;
    .locals 2
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/applovin/shadow/okio/ByteString;

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "copyOf(this, size)"

    .line 14
    .line 15
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/applovin/shadow/okio/ByteString;-><init>([B)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static final commonRangeEquals(Lcom/applovin/shadow/okio/ByteString;ILcom/applovin/shadow/okio/ByteString;II)Z
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p2, p3, p0, p1, p4}, Lcom/applovin/shadow/okio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonRangeEquals(Lcom/applovin/shadow/okio/ByteString;I[BII)Z
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    .line 3
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/applovin/shadow/okio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final commonStartsWith(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/ByteString;)Z
    .locals 2
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/applovin/shadow/okio/ByteString;->rangeEquals(ILcom/applovin/shadow/okio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonStartsWith(Lcom/applovin/shadow/okio/ByteString;[B)Z
    .locals 2
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/applovin/shadow/okio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonSubstring(Lcom/applovin/shadow/okio/ByteString;II)Lcom/applovin/shadow/okio/ByteString;
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lcom/applovin/shadow/okio/-SegmentedByteString;->resolveDefaultParameter(Lcom/applovin/shadow/okio/ByteString;I)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-ltz p1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    array-length v0, v0

    .line 17
    if-gt p2, v0, :cond_2

    .line 18
    .line 19
    sub-int v0, p2, p1

    .line 20
    .line 21
    if-ltz v0, :cond_1

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    array-length v0, v0

    .line 30
    if-ne p2, v0, :cond_0

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    new-instance v0, Lcom/applovin/shadow/okio/ByteString;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0, p1, p2}, Lkotlin/collections/n;->w([BII)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, p0}, Lcom/applovin/shadow/okio/ByteString;-><init>([B)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string p1, "endIndex < beginIndex"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string p2, "endIndex > length("

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    array-length p0, p0

    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 p0, 0x29

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    const-string p1, "beginIndex < 0"

    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method public static final commonToAsciiLowercase(Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/ByteString;
    .locals 5
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v1, v1

    .line 12
    if-ge v0, v1, :cond_5

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    aget-byte v1, v1, v0

    .line 19
    .line 20
    const/16 v2, 0x41

    .line 21
    .line 22
    if-lt v1, v2, :cond_4

    .line 23
    .line 24
    const/16 v3, 0x5a

    .line 25
    .line 26
    if-le v1, v3, :cond_0

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    array-length v4, p0

    .line 34
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v4, "copyOf(this, size)"

    .line 39
    .line 40
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v0, 0x1

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x20

    .line 46
    .line 47
    int-to-byte v1, v1

    .line 48
    aput-byte v1, p0, v0

    .line 49
    .line 50
    :goto_1
    array-length v0, p0

    .line 51
    if-ge v4, v0, :cond_3

    .line 52
    .line 53
    aget-byte v0, p0, v4

    .line 54
    .line 55
    if-lt v0, v2, :cond_2

    .line 56
    .line 57
    if-le v0, v3, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    add-int/lit8 v0, v0, 0x20

    .line 61
    .line 62
    int-to-byte v0, v0

    .line 63
    aput-byte v0, p0, v4

    .line 64
    .line 65
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    new-instance v0, Lcom/applovin/shadow/okio/ByteString;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/applovin/shadow/okio/ByteString;-><init>([B)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    return-object p0
.end method

.method public static final commonToAsciiUppercase(Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/ByteString;
    .locals 5
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v1, v1

    .line 12
    if-ge v0, v1, :cond_5

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    aget-byte v1, v1, v0

    .line 19
    .line 20
    const/16 v2, 0x61

    .line 21
    .line 22
    if-lt v1, v2, :cond_4

    .line 23
    .line 24
    const/16 v3, 0x7a

    .line 25
    .line 26
    if-le v1, v3, :cond_0

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    array-length v4, p0

    .line 34
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v4, "copyOf(this, size)"

    .line 39
    .line 40
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v0, 0x1

    .line 44
    .line 45
    add-int/lit8 v1, v1, -0x20

    .line 46
    .line 47
    int-to-byte v1, v1

    .line 48
    aput-byte v1, p0, v0

    .line 49
    .line 50
    :goto_1
    array-length v0, p0

    .line 51
    if-ge v4, v0, :cond_3

    .line 52
    .line 53
    aget-byte v0, p0, v4

    .line 54
    .line 55
    if-lt v0, v2, :cond_2

    .line 56
    .line 57
    if-le v0, v3, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    add-int/lit8 v0, v0, -0x20

    .line 61
    .line 62
    int-to-byte v0, v0

    .line 63
    aput-byte v0, p0, v4

    .line 64
    .line 65
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    new-instance v0, Lcom/applovin/shadow/okio/ByteString;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/applovin/shadow/okio/ByteString;-><init>([B)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    return-object p0
.end method

.method public static final commonToByteArray(Lcom/applovin/shadow/okio/ByteString;)[B
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    array-length v0, p0

    .line 11
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "copyOf(this, size)"

    .line 16
    .line 17
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public static final commonToByteString([BII)Lcom/applovin/shadow/okio/ByteString;
    .locals 7
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lcom/applovin/shadow/okio/-SegmentedByteString;->resolveDefaultParameter([BI)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    array-length v0, p0

    .line 11
    int-to-long v1, v0

    .line 12
    int-to-long v3, p1

    .line 13
    int-to-long v5, p2

    .line 14
    invoke-static/range {v1 .. v6}, Lcom/applovin/shadow/okio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/applovin/shadow/okio/ByteString;

    .line 18
    .line 19
    add-int/2addr p2, p1

    .line 20
    invoke-static {p0, p1, p2}, Lkotlin/collections/n;->w([BII)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Lcom/applovin/shadow/okio/ByteString;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static final commonToString(Lcom/applovin/shadow/okio/ByteString;)Ljava/lang/String;
    .locals 20
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v1, v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v0, "[size=0]"

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/16 v2, 0x40

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/applovin/shadow/okio/internal/-ByteString;->access$codePointIndexToCharIndex([BI)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v3, -0x1

    .line 29
    const-string/jumbo v4, "\u2026]"

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const-string v6, "[size="

    .line 34
    .line 35
    const/16 v7, 0x5d

    .line 36
    .line 37
    if-ne v1, v3, :cond_5

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    array-length v1, v1

    .line 44
    if-gt v1, v2, :cond_1

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "[hex="

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/shadow/okio/ByteString;->hex()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    array-length v3, v3

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v3, " hex="

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v2}, Lcom/applovin/shadow/okio/-SegmentedByteString;->resolveDefaultParameter(Lcom/applovin/shadow/okio/ByteString;I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    array-length v3, v3

    .line 101
    if-gt v2, v3, :cond_4

    .line 102
    .line 103
    if-ltz v2, :cond_3

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    array-length v3, v3

    .line 110
    if-ne v2, v3, :cond_2

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    new-instance v3, Lcom/applovin/shadow/okio/ByteString;

    .line 114
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0, v5, v2}, Lkotlin/collections/n;->w([BII)[B

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {v3, v0}, Lcom/applovin/shadow/okio/ByteString;-><init>([B)V

    .line 124
    .line 125
    .line 126
    move-object v0, v3

    .line 127
    :goto_0
    invoke-virtual {v0}, Lcom/applovin/shadow/okio/ByteString;->hex()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_1
    return-object v0

    .line 142
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    const-string v1, "endIndex < beginIndex"

    .line 145
    .line 146
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v2, "endIndex > length("

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    array-length v0, v0

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const/16 v0, 0x29

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v1

    .line 187
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/shadow/okio/ByteString;->utf8()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 196
    .line 197
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const/4 v12, 0x4

    .line 201
    const/4 v13, 0x0

    .line 202
    const-string v9, "\\"

    .line 203
    .line 204
    const-string v10, "\\\\"

    .line 205
    .line 206
    const/4 v11, 0x0

    .line 207
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    const/16 v18, 0x4

    .line 212
    .line 213
    const/16 v19, 0x0

    .line 214
    .line 215
    const-string v15, "\n"

    .line 216
    .line 217
    const-string v16, "\\n"

    .line 218
    .line 219
    const/16 v17, 0x0

    .line 220
    .line 221
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    const-string v9, "\r"

    .line 226
    .line 227
    const-string v10, "\\r"

    .line 228
    .line 229
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-ge v1, v2, :cond_6

    .line 238
    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    array-length v0, v0

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v0, " text="

    .line 256
    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    goto :goto_2

    .line 271
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v1, "[text="

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    :goto_2
    return-object v0
.end method

.method public static final commonUtf8(Lcom/applovin/shadow/okio/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getUtf8$okio()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->internalArray$okio()[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/applovin/shadow/okio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/applovin/shadow/okio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v0
.end method

.method public static final commonWrite(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/Buffer;II)V
    .locals 1
    .param p0    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/shadow/okio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "buffer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/applovin/shadow/okio/ByteString;->getData$okio()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0, p2, p3}, Lcom/applovin/shadow/okio/Buffer;->write([BII)Lcom/applovin/shadow/okio/Buffer;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final decodeHexDigit(C)I
    .locals 3

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3a

    .line 6
    .line 7
    if-ge p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x61

    .line 12
    .line 13
    if-gt v0, p0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x67

    .line 16
    .line 17
    if-ge p0, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x57

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 v0, 0x41

    .line 23
    .line 24
    if-gt v0, p0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x47

    .line 27
    .line 28
    if-ge p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x37

    .line 31
    .line 32
    :goto_0
    return p0

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "Unexpected hex digit: "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/applovin/shadow/okio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getHEX_DIGIT_CHARS$annotations()V
    .locals 0

    .line 1
    return-void
.end method
