.class public final enum Lcom/inmobi/media/o4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum A:Lcom/inmobi/media/o4;

.field public static final synthetic B:[Lcom/inmobi/media/o4;

.field public static final b:Lcom/inmobi/media/l4;

.field public static final c:Landroid/util/SparseArray;

.field public static final enum d:Lcom/inmobi/media/o4;

.field public static final enum e:Lcom/inmobi/media/o4;

.field public static final enum f:Lcom/inmobi/media/o4;

.field public static final enum g:Lcom/inmobi/media/o4;

.field public static final enum h:Lcom/inmobi/media/o4;

.field public static final enum i:Lcom/inmobi/media/o4;

.field public static final enum j:Lcom/inmobi/media/o4;

.field public static final enum k:Lcom/inmobi/media/o4;

.field public static final enum l:Lcom/inmobi/media/o4;

.field public static final enum m:Lcom/inmobi/media/o4;

.field public static final enum n:Lcom/inmobi/media/o4;

.field public static final enum o:Lcom/inmobi/media/o4;

.field public static final enum p:Lcom/inmobi/media/o4;

.field public static final enum q:Lcom/inmobi/media/o4;

.field public static final enum r:Lcom/inmobi/media/o4;

.field public static final enum s:Lcom/inmobi/media/o4;

.field public static final enum t:Lcom/inmobi/media/o4;

.field public static final enum u:Lcom/inmobi/media/o4;

.field public static final enum v:Lcom/inmobi/media/o4;

.field public static final enum w:Lcom/inmobi/media/o4;

.field public static final enum x:Lcom/inmobi/media/o4;

.field public static final enum y:Lcom/inmobi/media/o4;

.field public static final enum z:Lcom/inmobi/media/o4;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1
    new-instance v1, Lcom/inmobi/media/o4;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "NETWORK_UNAVAILABLE_ERROR"

    .line 5
    .line 6
    const/4 v15, 0x0

    .line 7
    invoke-direct {v1, v15, v15, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lcom/inmobi/media/o4;->d:Lcom/inmobi/media/o4;

    .line 11
    .line 12
    new-instance v2, Lcom/inmobi/media/o4;

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    const/4 v3, -0x1

    .line 16
    const-string v4, "UNKNOWN_ERROR"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-direct {v2, v5, v3, v4}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lcom/inmobi/media/o4;->e:Lcom/inmobi/media/o4;

    .line 23
    .line 24
    new-instance v3, Lcom/inmobi/media/o4;

    .line 25
    .line 26
    move-object v2, v3

    .line 27
    const/4 v4, -0x2

    .line 28
    const-string v5, "NETWORK_IO_ERROR"

    .line 29
    .line 30
    const/4 v6, 0x2

    .line 31
    invoke-direct {v3, v6, v4, v5}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v3, Lcom/inmobi/media/o4;->f:Lcom/inmobi/media/o4;

    .line 35
    .line 36
    new-instance v4, Lcom/inmobi/media/o4;

    .line 37
    .line 38
    move-object v3, v4

    .line 39
    const/4 v5, -0x3

    .line 40
    const-string v6, "OUT_OF_MEMORY_ERROR"

    .line 41
    .line 42
    const/4 v7, 0x3

    .line 43
    invoke-direct {v4, v7, v5, v6}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sput-object v4, Lcom/inmobi/media/o4;->g:Lcom/inmobi/media/o4;

    .line 47
    .line 48
    new-instance v5, Lcom/inmobi/media/o4;

    .line 49
    .line 50
    move-object v4, v5

    .line 51
    const/4 v6, -0x4

    .line 52
    const-string v7, "INVALID_ENCRYPTED_RESPONSE_RECEIVED"

    .line 53
    .line 54
    const/4 v8, 0x4

    .line 55
    invoke-direct {v5, v8, v6, v7}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Lcom/inmobi/media/o4;

    .line 59
    .line 60
    move-object v5, v6

    .line 61
    const/4 v7, -0x5

    .line 62
    const-string v8, "RESPONSE_EXCEEDS_SPECIFIED_SIZE_LIMIT"

    .line 63
    .line 64
    const/4 v9, 0x5

    .line 65
    invoke-direct {v6, v9, v7, v8}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v7, Lcom/inmobi/media/o4;

    .line 69
    .line 70
    move-object v6, v7

    .line 71
    const/4 v8, -0x6

    .line 72
    const-string v9, "GZIP_DECOMPRESSION_FAILED"

    .line 73
    .line 74
    const/4 v10, 0x6

    .line 75
    invoke-direct {v7, v10, v8, v9}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sput-object v7, Lcom/inmobi/media/o4;->h:Lcom/inmobi/media/o4;

    .line 79
    .line 80
    new-instance v8, Lcom/inmobi/media/o4;

    .line 81
    .line 82
    move-object v7, v8

    .line 83
    const/4 v9, -0x7

    .line 84
    const-string v10, "BAD_REQUEST"

    .line 85
    .line 86
    const/4 v11, 0x7

    .line 87
    invoke-direct {v8, v11, v9, v10}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lcom/inmobi/media/o4;->i:Lcom/inmobi/media/o4;

    .line 91
    .line 92
    new-instance v9, Lcom/inmobi/media/o4;

    .line 93
    .line 94
    move-object v8, v9

    .line 95
    const/4 v10, -0x8

    .line 96
    const-string v11, "GDPR_COMPLIANCE_ENFORCED"

    .line 97
    .line 98
    const/16 v12, 0x8

    .line 99
    .line 100
    invoke-direct {v9, v12, v10, v11}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sput-object v9, Lcom/inmobi/media/o4;->j:Lcom/inmobi/media/o4;

    .line 104
    .line 105
    new-instance v10, Lcom/inmobi/media/o4;

    .line 106
    .line 107
    move-object v9, v10

    .line 108
    const/16 v11, -0x9

    .line 109
    .line 110
    const-string v12, "GENERIC_HTTP_2XX"

    .line 111
    .line 112
    const/16 v13, 0x9

    .line 113
    .line 114
    invoke-direct {v10, v13, v11, v12}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sput-object v10, Lcom/inmobi/media/o4;->k:Lcom/inmobi/media/o4;

    .line 118
    .line 119
    new-instance v11, Lcom/inmobi/media/o4;

    .line 120
    .line 121
    move-object v10, v11

    .line 122
    const/16 v12, -0xa

    .line 123
    .line 124
    const-string v13, "RESPONSE_PARSING_ERROR"

    .line 125
    .line 126
    const/16 v14, 0xa

    .line 127
    .line 128
    invoke-direct {v11, v14, v12, v13}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sput-object v11, Lcom/inmobi/media/o4;->l:Lcom/inmobi/media/o4;

    .line 132
    .line 133
    new-instance v12, Lcom/inmobi/media/o4;

    .line 134
    .line 135
    move-object v11, v12

    .line 136
    const/16 v13, -0xb

    .line 137
    .line 138
    const-string v14, "RETRY_ATTEMPTED"

    .line 139
    .line 140
    const/16 v15, 0xb

    .line 141
    .line 142
    invoke-direct {v12, v15, v13, v14}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sput-object v12, Lcom/inmobi/media/o4;->m:Lcom/inmobi/media/o4;

    .line 146
    .line 147
    new-instance v13, Lcom/inmobi/media/o4;

    .line 148
    .line 149
    move-object v12, v13

    .line 150
    const/16 v14, -0xc

    .line 151
    .line 152
    const-string v15, "NETWORK_UNAVAILABLE_CONTEXT_LOSS"

    .line 153
    .line 154
    move-object/from16 v31, v0

    .line 155
    .line 156
    const/16 v0, 0xc

    .line 157
    .line 158
    invoke-direct {v13, v0, v14, v15}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sput-object v13, Lcom/inmobi/media/o4;->n:Lcom/inmobi/media/o4;

    .line 162
    .line 163
    new-instance v0, Lcom/inmobi/media/o4;

    .line 164
    .line 165
    move-object v13, v0

    .line 166
    const/16 v14, -0xd

    .line 167
    .line 168
    const-string v15, "NETWORK_UNAVAILABLE_IDLE_MODE"

    .line 169
    .line 170
    move-object/from16 v32, v1

    .line 171
    .line 172
    const/16 v1, 0xd

    .line 173
    .line 174
    invoke-direct {v0, v1, v14, v15}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sput-object v0, Lcom/inmobi/media/o4;->o:Lcom/inmobi/media/o4;

    .line 178
    .line 179
    new-instance v0, Lcom/inmobi/media/o4;

    .line 180
    .line 181
    move-object v14, v0

    .line 182
    const/16 v1, -0xe

    .line 183
    .line 184
    const-string v15, "NETWORK_UNAVAILABLE_NO_CONNECTION_M_OR_ABOVE"

    .line 185
    .line 186
    move-object/from16 v33, v2

    .line 187
    .line 188
    const/16 v2, 0xe

    .line 189
    .line 190
    invoke-direct {v0, v2, v1, v15}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    sput-object v0, Lcom/inmobi/media/o4;->p:Lcom/inmobi/media/o4;

    .line 194
    .line 195
    new-instance v0, Lcom/inmobi/media/o4;

    .line 196
    .line 197
    const/16 v34, 0x0

    .line 198
    .line 199
    move-object v15, v0

    .line 200
    const/16 v1, -0xf

    .line 201
    .line 202
    const-string v2, "NETWORK_UNAVAILABLE_NO_CONNECTION_BELOW_M"

    .line 203
    .line 204
    move-object/from16 v35, v3

    .line 205
    .line 206
    const/16 v3, 0xf

    .line 207
    .line 208
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lcom/inmobi/media/o4;->q:Lcom/inmobi/media/o4;

    .line 212
    .line 213
    new-instance v0, Lcom/inmobi/media/o4;

    .line 214
    .line 215
    move-object/from16 v16, v0

    .line 216
    .line 217
    const/16 v1, -0x10

    .line 218
    .line 219
    const-string v2, "NETWORK_UNAVAILABLE_EXCEPTION"

    .line 220
    .line 221
    const/16 v3, 0x10

    .line 222
    .line 223
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sput-object v0, Lcom/inmobi/media/o4;->r:Lcom/inmobi/media/o4;

    .line 227
    .line 228
    new-instance v0, Lcom/inmobi/media/o4;

    .line 229
    .line 230
    move-object/from16 v17, v0

    .line 231
    .line 232
    const/16 v1, -0x11

    .line 233
    .line 234
    const-string v2, "NETWORK_PREPARE_FAIL"

    .line 235
    .line 236
    const/16 v3, 0x11

    .line 237
    .line 238
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    sput-object v0, Lcom/inmobi/media/o4;->s:Lcom/inmobi/media/o4;

    .line 242
    .line 243
    new-instance v0, Lcom/inmobi/media/o4;

    .line 244
    .line 245
    move-object/from16 v18, v0

    .line 246
    .line 247
    const/16 v1, -0x12

    .line 248
    .line 249
    const-string v2, "NETWORK_UNAVAILABLE_CUSTOM_VALIDATOR"

    .line 250
    .line 251
    const/16 v3, 0x12

    .line 252
    .line 253
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sput-object v0, Lcom/inmobi/media/o4;->t:Lcom/inmobi/media/o4;

    .line 257
    .line 258
    new-instance v0, Lcom/inmobi/media/o4;

    .line 259
    .line 260
    move-object/from16 v19, v0

    .line 261
    .line 262
    const/16 v1, -0x16

    .line 263
    .line 264
    const-string v2, "NETWORK_REDIRECT_MALFORMED"

    .line 265
    .line 266
    const/16 v3, 0x13

    .line 267
    .line 268
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 269
    .line 270
    .line 271
    sput-object v0, Lcom/inmobi/media/o4;->u:Lcom/inmobi/media/o4;

    .line 272
    .line 273
    new-instance v0, Lcom/inmobi/media/o4;

    .line 274
    .line 275
    move-object/from16 v20, v0

    .line 276
    .line 277
    const/16 v1, 0xcc

    .line 278
    .line 279
    const-string v2, "HTTP_NO_CONTENT"

    .line 280
    .line 281
    const/16 v3, 0x14

    .line 282
    .line 283
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    new-instance v0, Lcom/inmobi/media/o4;

    .line 287
    .line 288
    move-object/from16 v21, v0

    .line 289
    .line 290
    const/16 v1, 0x130

    .line 291
    .line 292
    const-string v2, "HTTP_NOT_MODIFIED"

    .line 293
    .line 294
    const/16 v3, 0x15

    .line 295
    .line 296
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 297
    .line 298
    .line 299
    new-instance v0, Lcom/inmobi/media/o4;

    .line 300
    .line 301
    move-object/from16 v22, v0

    .line 302
    .line 303
    const/16 v1, 0x12f

    .line 304
    .line 305
    const-string v2, "HTTP_SEE_OTHER"

    .line 306
    .line 307
    const/16 v3, 0x16

    .line 308
    .line 309
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 310
    .line 311
    .line 312
    sput-object v0, Lcom/inmobi/media/o4;->v:Lcom/inmobi/media/o4;

    .line 313
    .line 314
    new-instance v0, Lcom/inmobi/media/o4;

    .line 315
    .line 316
    move-object/from16 v23, v0

    .line 317
    .line 318
    const/16 v1, 0x194

    .line 319
    .line 320
    const-string v2, "HTTP_SERVER_NOT_FOUND"

    .line 321
    .line 322
    const/16 v3, 0x17

    .line 323
    .line 324
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    sput-object v0, Lcom/inmobi/media/o4;->w:Lcom/inmobi/media/o4;

    .line 328
    .line 329
    new-instance v0, Lcom/inmobi/media/o4;

    .line 330
    .line 331
    move-object/from16 v24, v0

    .line 332
    .line 333
    const/16 v1, 0x12e

    .line 334
    .line 335
    const-string v2, "HTTP_MOVED_TEMP"

    .line 336
    .line 337
    const/16 v3, 0x18

    .line 338
    .line 339
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    sput-object v0, Lcom/inmobi/media/o4;->x:Lcom/inmobi/media/o4;

    .line 343
    .line 344
    new-instance v0, Lcom/inmobi/media/o4;

    .line 345
    .line 346
    move-object/from16 v25, v0

    .line 347
    .line 348
    const/16 v1, 0x1f4

    .line 349
    .line 350
    const-string v2, "HTTP_INTERNAL_SERVER_ERROR"

    .line 351
    .line 352
    const/16 v3, 0x19

    .line 353
    .line 354
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    new-instance v0, Lcom/inmobi/media/o4;

    .line 358
    .line 359
    move-object/from16 v26, v0

    .line 360
    .line 361
    const/16 v1, 0x1f5

    .line 362
    .line 363
    const-string v2, "HTTP_NOT_IMPLEMENTED"

    .line 364
    .line 365
    const/16 v3, 0x1a

    .line 366
    .line 367
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 368
    .line 369
    .line 370
    new-instance v0, Lcom/inmobi/media/o4;

    .line 371
    .line 372
    move-object/from16 v27, v0

    .line 373
    .line 374
    const/16 v1, 0x1f6

    .line 375
    .line 376
    const-string v2, "HTTP_BAD_GATEWAY"

    .line 377
    .line 378
    const/16 v3, 0x1b

    .line 379
    .line 380
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    sput-object v0, Lcom/inmobi/media/o4;->y:Lcom/inmobi/media/o4;

    .line 384
    .line 385
    new-instance v0, Lcom/inmobi/media/o4;

    .line 386
    .line 387
    move-object/from16 v28, v0

    .line 388
    .line 389
    const/16 v1, 0x1f7

    .line 390
    .line 391
    const-string v2, "HTTP_SERVER_NOT_AVAILABLE"

    .line 392
    .line 393
    const/16 v3, 0x1c

    .line 394
    .line 395
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 396
    .line 397
    .line 398
    sput-object v0, Lcom/inmobi/media/o4;->z:Lcom/inmobi/media/o4;

    .line 399
    .line 400
    new-instance v0, Lcom/inmobi/media/o4;

    .line 401
    .line 402
    move-object/from16 v29, v0

    .line 403
    .line 404
    const/16 v1, 0x1f8

    .line 405
    .line 406
    const-string v2, "HTTP_GATEWAY_TIMEOUT"

    .line 407
    .line 408
    const/16 v3, 0x1d

    .line 409
    .line 410
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 411
    .line 412
    .line 413
    sput-object v0, Lcom/inmobi/media/o4;->A:Lcom/inmobi/media/o4;

    .line 414
    .line 415
    new-instance v0, Lcom/inmobi/media/o4;

    .line 416
    .line 417
    move-object/from16 v30, v0

    .line 418
    .line 419
    const/16 v1, 0x1f9

    .line 420
    .line 421
    const-string v2, "HTTP_VERSION_NOT_SUPPORTED"

    .line 422
    .line 423
    const/16 v3, 0x1e

    .line 424
    .line 425
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/o4;-><init>(IILjava/lang/String;)V

    .line 426
    .line 427
    .line 428
    move-object/from16 v0, v31

    .line 429
    .line 430
    move-object/from16 v1, v32

    .line 431
    .line 432
    move-object/from16 v2, v33

    .line 433
    .line 434
    move-object/from16 v3, v35

    .line 435
    .line 436
    filled-new-array/range {v0 .. v30}, [Lcom/inmobi/media/o4;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    sput-object v0, Lcom/inmobi/media/o4;->B:[Lcom/inmobi/media/o4;

    .line 441
    .line 442
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 443
    .line 444
    .line 445
    new-instance v0, Lcom/inmobi/media/l4;

    .line 446
    .line 447
    invoke-direct {v0}, Lcom/inmobi/media/l4;-><init>()V

    .line 448
    .line 449
    .line 450
    sput-object v0, Lcom/inmobi/media/o4;->b:Lcom/inmobi/media/l4;

    .line 451
    .line 452
    new-instance v0, Landroid/util/SparseArray;

    .line 453
    .line 454
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 455
    .line 456
    .line 457
    sput-object v0, Lcom/inmobi/media/o4;->c:Landroid/util/SparseArray;

    .line 458
    .line 459
    invoke-static {}, Lcom/inmobi/media/o4;->values()[Lcom/inmobi/media/o4;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    array-length v1, v0

    .line 464
    move/from16 v15, v34

    .line 465
    .line 466
    :goto_0
    if-ge v15, v1, :cond_0

    .line 467
    .line 468
    aget-object v2, v0, v15

    .line 469
    .line 470
    sget-object v3, Lcom/inmobi/media/o4;->c:Landroid/util/SparseArray;

    .line 471
    .line 472
    iget v4, v2, Lcom/inmobi/media/o4;->a:I

    .line 473
    .line 474
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    add-int/lit8 v15, v15, 0x1

    .line 478
    .line 479
    goto :goto_0

    .line 480
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
    iput p2, p0, Lcom/inmobi/media/o4;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/media/o4;
    .locals 1

    .line 1
    const-class v0, Lcom/inmobi/media/o4;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/inmobi/media/o4;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/inmobi/media/o4;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/o4;->B:[Lcom/inmobi/media/o4;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/inmobi/media/o4;

    .line 8
    .line 9
    return-object v0
.end method
