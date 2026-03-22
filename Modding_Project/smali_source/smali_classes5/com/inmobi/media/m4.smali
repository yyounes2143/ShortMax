.class public final enum Lcom/inmobi/media/m4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final b:Lcom/inmobi/media/k4;

.field public static final c:Landroid/util/SparseArray;

.field public static final enum d:Lcom/inmobi/media/m4;

.field public static final enum e:Lcom/inmobi/media/m4;

.field public static final enum f:Lcom/inmobi/media/m4;

.field public static final enum g:Lcom/inmobi/media/m4;

.field public static final enum h:Lcom/inmobi/media/m4;

.field public static final enum i:Lcom/inmobi/media/m4;

.field public static final synthetic j:[Lcom/inmobi/media/m4;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 1
    new-instance v1, Lcom/inmobi/media/m4;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "NETWORK_UNAVAILABLE_ERROR"

    .line 6
    .line 7
    invoke-direct {v1, v2, v2, v3}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/inmobi/media/m4;

    .line 11
    .line 12
    move-object v1, v2

    .line 13
    const/4 v3, -0x1

    .line 14
    const-string v4, "UNKNOWN_ERROR"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    invoke-direct {v2, v5, v3, v4}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcom/inmobi/media/m4;->d:Lcom/inmobi/media/m4;

    .line 21
    .line 22
    new-instance v3, Lcom/inmobi/media/m4;

    .line 23
    .line 24
    move-object v2, v3

    .line 25
    const/4 v4, -0x2

    .line 26
    const-string v5, "NETWORK_IO_ERROR"

    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    invoke-direct {v3, v6, v4, v5}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v3, Lcom/inmobi/media/m4;->e:Lcom/inmobi/media/m4;

    .line 33
    .line 34
    new-instance v4, Lcom/inmobi/media/m4;

    .line 35
    .line 36
    move-object v3, v4

    .line 37
    const/4 v5, -0x3

    .line 38
    const-string v6, "OUT_OF_MEMORY_ERROR"

    .line 39
    .line 40
    const/4 v7, 0x3

    .line 41
    invoke-direct {v4, v7, v5, v6}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v5, Lcom/inmobi/media/m4;

    .line 45
    .line 46
    move-object v4, v5

    .line 47
    const/4 v6, -0x4

    .line 48
    const-string v7, "INVALID_ENCRYPTED_RESPONSE_RECEIVED"

    .line 49
    .line 50
    const/4 v8, 0x4

    .line 51
    invoke-direct {v5, v8, v6, v7}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v6, Lcom/inmobi/media/m4;

    .line 55
    .line 56
    move-object v5, v6

    .line 57
    const/4 v7, -0x5

    .line 58
    const-string v8, "RESPONSE_EXCEEDS_SPECIFIED_SIZE_LIMIT"

    .line 59
    .line 60
    const/4 v9, 0x5

    .line 61
    invoke-direct {v6, v9, v7, v8}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v7, Lcom/inmobi/media/m4;

    .line 65
    .line 66
    move-object v6, v7

    .line 67
    const/4 v8, -0x6

    .line 68
    const-string v9, "GZIP_DECOMPRESSION_FAILED"

    .line 69
    .line 70
    const/4 v10, 0x6

    .line 71
    invoke-direct {v7, v10, v8, v9}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v8, Lcom/inmobi/media/m4;

    .line 75
    .line 76
    move-object v7, v8

    .line 77
    const/4 v9, -0x7

    .line 78
    const-string v10, "BAD_REQUEST"

    .line 79
    .line 80
    const/4 v11, 0x7

    .line 81
    invoke-direct {v8, v11, v9, v10}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v8, Lcom/inmobi/media/m4;->f:Lcom/inmobi/media/m4;

    .line 85
    .line 86
    new-instance v9, Lcom/inmobi/media/m4;

    .line 87
    .line 88
    move-object v8, v9

    .line 89
    const/4 v10, -0x8

    .line 90
    const-string v11, "GDPR_COMPLIANCE_ENFORCED"

    .line 91
    .line 92
    const/16 v12, 0x8

    .line 93
    .line 94
    invoke-direct {v9, v12, v10, v11}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v10, Lcom/inmobi/media/m4;

    .line 98
    .line 99
    move-object v9, v10

    .line 100
    const/16 v11, -0x9

    .line 101
    .line 102
    const-string v12, "GENERIC_HTTP_2XX"

    .line 103
    .line 104
    const/16 v13, 0x9

    .line 105
    .line 106
    invoke-direct {v10, v13, v11, v12}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sput-object v10, Lcom/inmobi/media/m4;->g:Lcom/inmobi/media/m4;

    .line 110
    .line 111
    new-instance v11, Lcom/inmobi/media/m4;

    .line 112
    .line 113
    move-object v10, v11

    .line 114
    const/16 v12, -0xa

    .line 115
    .line 116
    const-string v13, "RESPONSE_PARSING_ERROR"

    .line 117
    .line 118
    const/16 v14, 0xa

    .line 119
    .line 120
    invoke-direct {v11, v14, v12, v13}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance v12, Lcom/inmobi/media/m4;

    .line 124
    .line 125
    move-object v11, v12

    .line 126
    const/16 v13, -0xb

    .line 127
    .line 128
    const-string v14, "RETRY_ATTEMPTED"

    .line 129
    .line 130
    const/16 v15, 0xb

    .line 131
    .line 132
    invoke-direct {v12, v15, v13, v14}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v13, Lcom/inmobi/media/m4;

    .line 136
    .line 137
    move-object v12, v13

    .line 138
    const/16 v14, -0xc

    .line 139
    .line 140
    const-string v15, "NETWORK_UNAVAILABLE_CONTEXT_LOSS"

    .line 141
    .line 142
    move-object/from16 v35, v0

    .line 143
    .line 144
    const/16 v0, 0xc

    .line 145
    .line 146
    invoke-direct {v13, v0, v14, v15}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Lcom/inmobi/media/m4;

    .line 150
    .line 151
    move-object v13, v0

    .line 152
    const/16 v14, -0xd

    .line 153
    .line 154
    const-string v15, "NETWORK_UNAVAILABLE_IDLE_MODE"

    .line 155
    .line 156
    move-object/from16 v36, v1

    .line 157
    .line 158
    const/16 v1, 0xd

    .line 159
    .line 160
    invoke-direct {v0, v1, v14, v15}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lcom/inmobi/media/m4;

    .line 164
    .line 165
    move-object v14, v0

    .line 166
    const/16 v1, -0xe

    .line 167
    .line 168
    const-string v15, "NETWORK_UNAVAILABLE_NO_CONNECTION_M_OR_ABOVE"

    .line 169
    .line 170
    move-object/from16 v37, v2

    .line 171
    .line 172
    const/16 v2, 0xe

    .line 173
    .line 174
    invoke-direct {v0, v2, v1, v15}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    new-instance v0, Lcom/inmobi/media/m4;

    .line 178
    .line 179
    move-object v15, v0

    .line 180
    const/16 v1, -0xf

    .line 181
    .line 182
    const-string v2, "NETWORK_UNAVAILABLE_NO_CONNECTION_BELOW_M"

    .line 183
    .line 184
    move-object/from16 v38, v3

    .line 185
    .line 186
    const/16 v3, 0xf

    .line 187
    .line 188
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Lcom/inmobi/media/m4;

    .line 192
    .line 193
    move-object/from16 v16, v0

    .line 194
    .line 195
    const/16 v1, -0x10

    .line 196
    .line 197
    const-string v2, "NETWORK_UNAVAILABLE_EXCEPTION"

    .line 198
    .line 199
    const/16 v3, 0x10

    .line 200
    .line 201
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lcom/inmobi/media/m4;

    .line 205
    .line 206
    move-object/from16 v17, v0

    .line 207
    .line 208
    const/16 v1, -0x11

    .line 209
    .line 210
    const-string v2, "NETWORK_PREPARE_FAIL"

    .line 211
    .line 212
    const/16 v3, 0x11

    .line 213
    .line 214
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v0, Lcom/inmobi/media/m4;

    .line 218
    .line 219
    move-object/from16 v18, v0

    .line 220
    .line 221
    const/16 v1, -0x13

    .line 222
    .line 223
    const-string v2, "NETWORK_REQUEST_GENERIC_DROPPED_BY_INTERCEPTOR"

    .line 224
    .line 225
    const/16 v3, 0x12

    .line 226
    .line 227
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lcom/inmobi/media/m4;

    .line 231
    .line 232
    move-object/from16 v19, v0

    .line 233
    .line 234
    const/16 v1, -0x14

    .line 235
    .line 236
    const-string v2, "NETWORK_REQUEST_CANCELLED"

    .line 237
    .line 238
    const/16 v3, 0x13

    .line 239
    .line 240
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance v0, Lcom/inmobi/media/m4;

    .line 244
    .line 245
    move-object/from16 v20, v0

    .line 246
    .line 247
    const/16 v1, -0x15

    .line 248
    .line 249
    const-string v2, "NETWORK_REQUEST_EXCEPTION"

    .line 250
    .line 251
    const/16 v3, 0x14

    .line 252
    .line 253
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Lcom/inmobi/media/m4;

    .line 257
    .line 258
    move-object/from16 v21, v0

    .line 259
    .line 260
    const/16 v1, -0x12

    .line 261
    .line 262
    const-string v2, "NETWORK_UNAVAILABLE_CUSTOM_VALIDATOR"

    .line 263
    .line 264
    const/16 v3, 0x15

    .line 265
    .line 266
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 267
    .line 268
    .line 269
    new-instance v0, Lcom/inmobi/media/m4;

    .line 270
    .line 271
    move-object/from16 v22, v0

    .line 272
    .line 273
    const/16 v1, -0x16

    .line 274
    .line 275
    const-string v2, "NETWORK_REDIRECT_MALFORMED"

    .line 276
    .line 277
    const/16 v3, 0x16

    .line 278
    .line 279
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 280
    .line 281
    .line 282
    sput-object v0, Lcom/inmobi/media/m4;->h:Lcom/inmobi/media/m4;

    .line 283
    .line 284
    new-instance v0, Lcom/inmobi/media/m4;

    .line 285
    .line 286
    move-object/from16 v23, v0

    .line 287
    .line 288
    const/16 v1, 0xcc

    .line 289
    .line 290
    const-string v2, "HTTP_NO_CONTENT"

    .line 291
    .line 292
    const/16 v3, 0x17

    .line 293
    .line 294
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 295
    .line 296
    .line 297
    new-instance v0, Lcom/inmobi/media/m4;

    .line 298
    .line 299
    move-object/from16 v24, v0

    .line 300
    .line 301
    const/16 v1, 0x130

    .line 302
    .line 303
    const-string v2, "HTTP_NOT_MODIFIED"

    .line 304
    .line 305
    const/16 v3, 0x18

    .line 306
    .line 307
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 308
    .line 309
    .line 310
    new-instance v0, Lcom/inmobi/media/m4;

    .line 311
    .line 312
    move-object/from16 v25, v0

    .line 313
    .line 314
    const/16 v1, 0x12f

    .line 315
    .line 316
    const-string v2, "HTTP_SEE_OTHER"

    .line 317
    .line 318
    const/16 v3, 0x19

    .line 319
    .line 320
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    new-instance v0, Lcom/inmobi/media/m4;

    .line 324
    .line 325
    move-object/from16 v26, v0

    .line 326
    .line 327
    const/16 v1, 0x194

    .line 328
    .line 329
    const-string v2, "HTTP_SERVER_NOT_FOUND"

    .line 330
    .line 331
    const/16 v3, 0x1a

    .line 332
    .line 333
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    new-instance v0, Lcom/inmobi/media/m4;

    .line 337
    .line 338
    move-object/from16 v27, v0

    .line 339
    .line 340
    const/16 v1, 0x12e

    .line 341
    .line 342
    const-string v2, "HTTP_MOVED_TEMP"

    .line 343
    .line 344
    const/16 v3, 0x1b

    .line 345
    .line 346
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    new-instance v0, Lcom/inmobi/media/m4;

    .line 350
    .line 351
    move-object/from16 v28, v0

    .line 352
    .line 353
    const/16 v1, 0x1f4

    .line 354
    .line 355
    const-string v2, "HTTP_INTERNAL_SERVER_ERROR"

    .line 356
    .line 357
    const/16 v3, 0x1c

    .line 358
    .line 359
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    new-instance v0, Lcom/inmobi/media/m4;

    .line 363
    .line 364
    move-object/from16 v29, v0

    .line 365
    .line 366
    const/16 v1, 0x1f5

    .line 367
    .line 368
    const-string v2, "HTTP_NOT_IMPLEMENTED"

    .line 369
    .line 370
    const/16 v3, 0x1d

    .line 371
    .line 372
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 373
    .line 374
    .line 375
    new-instance v0, Lcom/inmobi/media/m4;

    .line 376
    .line 377
    move-object/from16 v30, v0

    .line 378
    .line 379
    const/16 v1, 0x1f6

    .line 380
    .line 381
    const-string v2, "HTTP_BAD_GATEWAY"

    .line 382
    .line 383
    const/16 v3, 0x1e

    .line 384
    .line 385
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 386
    .line 387
    .line 388
    new-instance v0, Lcom/inmobi/media/m4;

    .line 389
    .line 390
    move-object/from16 v31, v0

    .line 391
    .line 392
    const/16 v1, 0x1f7

    .line 393
    .line 394
    const-string v2, "HTTP_SERVER_NOT_AVAILABLE"

    .line 395
    .line 396
    const/16 v3, 0x1f

    .line 397
    .line 398
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    new-instance v0, Lcom/inmobi/media/m4;

    .line 402
    .line 403
    move-object/from16 v32, v0

    .line 404
    .line 405
    const/16 v1, 0x1f8

    .line 406
    .line 407
    const-string v2, "HTTP_GATEWAY_TIMEOUT"

    .line 408
    .line 409
    const/16 v3, 0x20

    .line 410
    .line 411
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 412
    .line 413
    .line 414
    sput-object v0, Lcom/inmobi/media/m4;->i:Lcom/inmobi/media/m4;

    .line 415
    .line 416
    new-instance v0, Lcom/inmobi/media/m4;

    .line 417
    .line 418
    move-object/from16 v33, v0

    .line 419
    .line 420
    const/16 v1, 0x1f9

    .line 421
    .line 422
    const-string v2, "HTTP_VERSION_NOT_SUPPORTED"

    .line 423
    .line 424
    const/16 v3, 0x21

    .line 425
    .line 426
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 427
    .line 428
    .line 429
    new-instance v0, Lcom/inmobi/media/m4;

    .line 430
    .line 431
    move-object/from16 v34, v0

    .line 432
    .line 433
    const/16 v1, 0x191

    .line 434
    .line 435
    const-string v2, "HTTP_UNAUTHORISED"

    .line 436
    .line 437
    const/16 v3, 0x22

    .line 438
    .line 439
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/m4;-><init>(IILjava/lang/String;)V

    .line 440
    .line 441
    .line 442
    move-object/from16 v0, v35

    .line 443
    .line 444
    move-object/from16 v1, v36

    .line 445
    .line 446
    move-object/from16 v2, v37

    .line 447
    .line 448
    move-object/from16 v3, v38

    .line 449
    .line 450
    filled-new-array/range {v0 .. v34}, [Lcom/inmobi/media/m4;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    sput-object v0, Lcom/inmobi/media/m4;->j:[Lcom/inmobi/media/m4;

    .line 455
    .line 456
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    new-instance v1, Lcom/inmobi/media/k4;

    .line 461
    .line 462
    invoke-direct {v1}, Lcom/inmobi/media/k4;-><init>()V

    .line 463
    .line 464
    .line 465
    sput-object v1, Lcom/inmobi/media/m4;->b:Lcom/inmobi/media/k4;

    .line 466
    .line 467
    new-instance v1, Landroid/util/SparseArray;

    .line 468
    .line 469
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 470
    .line 471
    .line 472
    sput-object v1, Lcom/inmobi/media/m4;->c:Landroid/util/SparseArray;

    .line 473
    .line 474
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-eqz v1, :cond_0

    .line 483
    .line 484
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    check-cast v1, Lcom/inmobi/media/m4;

    .line 489
    .line 490
    sget-object v2, Lcom/inmobi/media/m4;->c:Landroid/util/SparseArray;

    .line 491
    .line 492
    iget v3, v1, Lcom/inmobi/media/m4;->a:I

    .line 493
    .line 494
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    goto :goto_0

    .line 498
    :cond_0
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/inmobi/media/m4;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/media/m4;
    .locals 1

    .line 1
    const-class v0, Lcom/inmobi/media/m4;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/inmobi/media/m4;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/inmobi/media/m4;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/m4;->j:[Lcom/inmobi/media/m4;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/inmobi/media/m4;

    .line 8
    .line 9
    return-object v0
.end method
