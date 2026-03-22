.class public final enum Lcom/amazonaws/regions/Regions;
.super Ljava/lang/Enum;
.source "Regions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/regions/Regions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/regions/Regions;

.field public static final enum AF_SOUTH_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_NORTHEAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_NORTHEAST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_3:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_4:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTH_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTH_2:Lcom/amazonaws/regions/Regions;

.field public static final enum CA_CENTRAL_1:Lcom/amazonaws/regions/Regions;

.field public static final enum CN_NORTHWEST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum CN_NORTH_1:Lcom/amazonaws/regions/Regions;

.field public static final DEFAULT_REGION:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_CENTRAL_1:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_CENTRAL_2:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_NORTH_1:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_SOUTH_1:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_SOUTH_2:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_WEST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_WEST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_WEST_3:Lcom/amazonaws/regions/Regions;

.field public static final enum GovCloud:Lcom/amazonaws/regions/Regions;

.field public static final enum IL_CENTRAL_1:Lcom/amazonaws/regions/Regions;

.field public static final enum ME_CENTRAL_1:Lcom/amazonaws/regions/Regions;

.field public static final enum ME_SOUTH_1:Lcom/amazonaws/regions/Regions;

.field public static final enum SA_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_EAST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum US_GOV_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_WEST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_WEST_2:Lcom/amazonaws/regions/Regions;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1
    new-instance v1, Lcom/amazonaws/regions/Regions;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string/jumbo v3, "us-gov-west-1"

    .line 6
    .line 7
    .line 8
    const-string v4, "GovCloud"

    .line 9
    .line 10
    invoke-direct {v1, v4, v2, v3}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/amazonaws/regions/Regions;->GovCloud:Lcom/amazonaws/regions/Regions;

    .line 14
    .line 15
    new-instance v2, Lcom/amazonaws/regions/Regions;

    .line 16
    .line 17
    move-object v1, v2

    .line 18
    const/4 v3, 0x1

    .line 19
    const-string/jumbo v4, "us-gov-east-1"

    .line 20
    .line 21
    .line 22
    const-string v5, "US_GOV_EAST_1"

    .line 23
    .line 24
    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lcom/amazonaws/regions/Regions;->US_GOV_EAST_1:Lcom/amazonaws/regions/Regions;

    .line 28
    .line 29
    new-instance v3, Lcom/amazonaws/regions/Regions;

    .line 30
    .line 31
    move-object v2, v3

    .line 32
    const/4 v4, 0x2

    .line 33
    const-string/jumbo v5, "us-east-1"

    .line 34
    .line 35
    .line 36
    const-string v6, "US_EAST_1"

    .line 37
    .line 38
    invoke-direct {v3, v6, v4, v5}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v3, Lcom/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazonaws/regions/Regions;

    .line 42
    .line 43
    new-instance v4, Lcom/amazonaws/regions/Regions;

    .line 44
    .line 45
    move-object v3, v4

    .line 46
    const/4 v5, 0x3

    .line 47
    const-string/jumbo v6, "us-east-2"

    .line 48
    .line 49
    .line 50
    const-string v7, "US_EAST_2"

    .line 51
    .line 52
    invoke-direct {v4, v7, v5, v6}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sput-object v4, Lcom/amazonaws/regions/Regions;->US_EAST_2:Lcom/amazonaws/regions/Regions;

    .line 56
    .line 57
    new-instance v5, Lcom/amazonaws/regions/Regions;

    .line 58
    .line 59
    move-object v4, v5

    .line 60
    const/4 v6, 0x4

    .line 61
    const-string/jumbo v7, "us-west-1"

    .line 62
    .line 63
    .line 64
    const-string v8, "US_WEST_1"

    .line 65
    .line 66
    invoke-direct {v5, v8, v6, v7}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v5, Lcom/amazonaws/regions/Regions;->US_WEST_1:Lcom/amazonaws/regions/Regions;

    .line 70
    .line 71
    new-instance v15, Lcom/amazonaws/regions/Regions;

    .line 72
    .line 73
    move-object v5, v15

    .line 74
    const/4 v6, 0x5

    .line 75
    const-string/jumbo v7, "us-west-2"

    .line 76
    .line 77
    .line 78
    const-string v8, "US_WEST_2"

    .line 79
    .line 80
    invoke-direct {v15, v8, v6, v7}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v15, Lcom/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazonaws/regions/Regions;

    .line 84
    .line 85
    new-instance v7, Lcom/amazonaws/regions/Regions;

    .line 86
    .line 87
    move-object v6, v7

    .line 88
    const/4 v8, 0x6

    .line 89
    const-string v9, "eu-south-1"

    .line 90
    .line 91
    const-string v10, "EU_SOUTH_1"

    .line 92
    .line 93
    invoke-direct {v7, v10, v8, v9}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sput-object v7, Lcom/amazonaws/regions/Regions;->EU_SOUTH_1:Lcom/amazonaws/regions/Regions;

    .line 97
    .line 98
    new-instance v8, Lcom/amazonaws/regions/Regions;

    .line 99
    .line 100
    move-object v7, v8

    .line 101
    const/4 v9, 0x7

    .line 102
    const-string v10, "eu-south-2"

    .line 103
    .line 104
    const-string v11, "EU_SOUTH_2"

    .line 105
    .line 106
    invoke-direct {v8, v11, v9, v10}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sput-object v8, Lcom/amazonaws/regions/Regions;->EU_SOUTH_2:Lcom/amazonaws/regions/Regions;

    .line 110
    .line 111
    new-instance v9, Lcom/amazonaws/regions/Regions;

    .line 112
    .line 113
    move-object v8, v9

    .line 114
    const/16 v10, 0x8

    .line 115
    .line 116
    const-string v11, "eu-west-1"

    .line 117
    .line 118
    const-string v12, "EU_WEST_1"

    .line 119
    .line 120
    invoke-direct {v9, v12, v10, v11}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sput-object v9, Lcom/amazonaws/regions/Regions;->EU_WEST_1:Lcom/amazonaws/regions/Regions;

    .line 124
    .line 125
    new-instance v10, Lcom/amazonaws/regions/Regions;

    .line 126
    .line 127
    move-object v9, v10

    .line 128
    const/16 v11, 0x9

    .line 129
    .line 130
    const-string v12, "eu-west-2"

    .line 131
    .line 132
    const-string v13, "EU_WEST_2"

    .line 133
    .line 134
    invoke-direct {v10, v13, v11, v12}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sput-object v10, Lcom/amazonaws/regions/Regions;->EU_WEST_2:Lcom/amazonaws/regions/Regions;

    .line 138
    .line 139
    new-instance v11, Lcom/amazonaws/regions/Regions;

    .line 140
    .line 141
    move-object v10, v11

    .line 142
    const/16 v12, 0xa

    .line 143
    .line 144
    const-string v13, "eu-west-3"

    .line 145
    .line 146
    const-string v14, "EU_WEST_3"

    .line 147
    .line 148
    invoke-direct {v11, v14, v12, v13}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sput-object v11, Lcom/amazonaws/regions/Regions;->EU_WEST_3:Lcom/amazonaws/regions/Regions;

    .line 152
    .line 153
    new-instance v12, Lcom/amazonaws/regions/Regions;

    .line 154
    .line 155
    move-object v11, v12

    .line 156
    const/16 v13, 0xb

    .line 157
    .line 158
    const-string v14, "eu-central-1"

    .line 159
    .line 160
    move-object/from16 v16, v15

    .line 161
    .line 162
    const-string v15, "EU_CENTRAL_1"

    .line 163
    .line 164
    invoke-direct {v12, v15, v13, v14}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sput-object v12, Lcom/amazonaws/regions/Regions;->EU_CENTRAL_1:Lcom/amazonaws/regions/Regions;

    .line 168
    .line 169
    new-instance v13, Lcom/amazonaws/regions/Regions;

    .line 170
    .line 171
    move-object v12, v13

    .line 172
    const/16 v14, 0xc

    .line 173
    .line 174
    const-string v15, "eu-central-2"

    .line 175
    .line 176
    move-object/from16 v31, v0

    .line 177
    .line 178
    const-string v0, "EU_CENTRAL_2"

    .line 179
    .line 180
    invoke-direct {v13, v0, v14, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    sput-object v13, Lcom/amazonaws/regions/Regions;->EU_CENTRAL_2:Lcom/amazonaws/regions/Regions;

    .line 184
    .line 185
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 186
    .line 187
    move-object v13, v0

    .line 188
    const/16 v14, 0xd

    .line 189
    .line 190
    const-string v15, "eu-north-1"

    .line 191
    .line 192
    move-object/from16 v32, v1

    .line 193
    .line 194
    const-string v1, "EU_NORTH_1"

    .line 195
    .line 196
    invoke-direct {v0, v1, v14, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sput-object v0, Lcom/amazonaws/regions/Regions;->EU_NORTH_1:Lcom/amazonaws/regions/Regions;

    .line 200
    .line 201
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 202
    .line 203
    move-object v14, v0

    .line 204
    const/16 v1, 0xe

    .line 205
    .line 206
    const-string v15, "ap-east-1"

    .line 207
    .line 208
    move-object/from16 v33, v2

    .line 209
    .line 210
    const-string v2, "AP_EAST_1"

    .line 211
    .line 212
    invoke-direct {v0, v2, v1, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_EAST_1:Lcom/amazonaws/regions/Regions;

    .line 216
    .line 217
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 218
    .line 219
    move-object/from16 v34, v16

    .line 220
    .line 221
    move-object v15, v0

    .line 222
    const/16 v1, 0xf

    .line 223
    .line 224
    const-string v2, "ap-south-1"

    .line 225
    .line 226
    move-object/from16 v35, v3

    .line 227
    .line 228
    const-string v3, "AP_SOUTH_1"

    .line 229
    .line 230
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_SOUTH_1:Lcom/amazonaws/regions/Regions;

    .line 234
    .line 235
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 236
    .line 237
    move-object/from16 v16, v0

    .line 238
    .line 239
    const/16 v1, 0x10

    .line 240
    .line 241
    const-string v2, "ap-southeast-1"

    .line 242
    .line 243
    const-string v3, "AP_SOUTHEAST_1"

    .line 244
    .line 245
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_1:Lcom/amazonaws/regions/Regions;

    .line 249
    .line 250
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 251
    .line 252
    move-object/from16 v17, v0

    .line 253
    .line 254
    const/16 v1, 0x11

    .line 255
    .line 256
    const-string v2, "ap-southeast-2"

    .line 257
    .line 258
    const-string v3, "AP_SOUTHEAST_2"

    .line 259
    .line 260
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_2:Lcom/amazonaws/regions/Regions;

    .line 264
    .line 265
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 266
    .line 267
    move-object/from16 v18, v0

    .line 268
    .line 269
    const/16 v1, 0x12

    .line 270
    .line 271
    const-string v2, "ap-southeast-4"

    .line 272
    .line 273
    const-string v3, "AP_SOUTHEAST_4"

    .line 274
    .line 275
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_4:Lcom/amazonaws/regions/Regions;

    .line 279
    .line 280
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 281
    .line 282
    move-object/from16 v19, v0

    .line 283
    .line 284
    const/16 v1, 0x13

    .line 285
    .line 286
    const-string v2, "ap-northeast-1"

    .line 287
    .line 288
    const-string v3, "AP_NORTHEAST_1"

    .line 289
    .line 290
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_NORTHEAST_1:Lcom/amazonaws/regions/Regions;

    .line 294
    .line 295
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 296
    .line 297
    move-object/from16 v20, v0

    .line 298
    .line 299
    const/16 v1, 0x14

    .line 300
    .line 301
    const-string v2, "ap-northeast-2"

    .line 302
    .line 303
    const-string v3, "AP_NORTHEAST_2"

    .line 304
    .line 305
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_NORTHEAST_2:Lcom/amazonaws/regions/Regions;

    .line 309
    .line 310
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 311
    .line 312
    move-object/from16 v21, v0

    .line 313
    .line 314
    const/16 v1, 0x15

    .line 315
    .line 316
    const-string v2, "sa-east-1"

    .line 317
    .line 318
    const-string v3, "SA_EAST_1"

    .line 319
    .line 320
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    sput-object v0, Lcom/amazonaws/regions/Regions;->SA_EAST_1:Lcom/amazonaws/regions/Regions;

    .line 324
    .line 325
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 326
    .line 327
    move-object/from16 v22, v0

    .line 328
    .line 329
    const/16 v1, 0x16

    .line 330
    .line 331
    const-string v2, "ca-central-1"

    .line 332
    .line 333
    const-string v3, "CA_CENTRAL_1"

    .line 334
    .line 335
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    .line 337
    .line 338
    sput-object v0, Lcom/amazonaws/regions/Regions;->CA_CENTRAL_1:Lcom/amazonaws/regions/Regions;

    .line 339
    .line 340
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 341
    .line 342
    move-object/from16 v23, v0

    .line 343
    .line 344
    const/16 v1, 0x17

    .line 345
    .line 346
    const-string v2, "cn-north-1"

    .line 347
    .line 348
    const-string v3, "CN_NORTH_1"

    .line 349
    .line 350
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    .line 352
    .line 353
    sput-object v0, Lcom/amazonaws/regions/Regions;->CN_NORTH_1:Lcom/amazonaws/regions/Regions;

    .line 354
    .line 355
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 356
    .line 357
    move-object/from16 v24, v0

    .line 358
    .line 359
    const/16 v1, 0x18

    .line 360
    .line 361
    const-string v2, "cn-northwest-1"

    .line 362
    .line 363
    const-string v3, "CN_NORTHWEST_1"

    .line 364
    .line 365
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    .line 367
    .line 368
    sput-object v0, Lcom/amazonaws/regions/Regions;->CN_NORTHWEST_1:Lcom/amazonaws/regions/Regions;

    .line 369
    .line 370
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 371
    .line 372
    move-object/from16 v25, v0

    .line 373
    .line 374
    const/16 v1, 0x19

    .line 375
    .line 376
    const-string v2, "me-south-1"

    .line 377
    .line 378
    const-string v3, "ME_SOUTH_1"

    .line 379
    .line 380
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    sput-object v0, Lcom/amazonaws/regions/Regions;->ME_SOUTH_1:Lcom/amazonaws/regions/Regions;

    .line 384
    .line 385
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 386
    .line 387
    move-object/from16 v26, v0

    .line 388
    .line 389
    const/16 v1, 0x1a

    .line 390
    .line 391
    const-string v2, "af-south-1"

    .line 392
    .line 393
    const-string v3, "AF_SOUTH_1"

    .line 394
    .line 395
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    .line 397
    .line 398
    sput-object v0, Lcom/amazonaws/regions/Regions;->AF_SOUTH_1:Lcom/amazonaws/regions/Regions;

    .line 399
    .line 400
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 401
    .line 402
    move-object/from16 v27, v0

    .line 403
    .line 404
    const/16 v1, 0x1b

    .line 405
    .line 406
    const-string v2, "ap-southeast-3"

    .line 407
    .line 408
    const-string v3, "AP_SOUTHEAST_3"

    .line 409
    .line 410
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    .line 412
    .line 413
    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_3:Lcom/amazonaws/regions/Regions;

    .line 414
    .line 415
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 416
    .line 417
    move-object/from16 v28, v0

    .line 418
    .line 419
    const/16 v1, 0x1c

    .line 420
    .line 421
    const-string v2, "me-central-1"

    .line 422
    .line 423
    const-string v3, "ME_CENTRAL_1"

    .line 424
    .line 425
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 426
    .line 427
    .line 428
    sput-object v0, Lcom/amazonaws/regions/Regions;->ME_CENTRAL_1:Lcom/amazonaws/regions/Regions;

    .line 429
    .line 430
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 431
    .line 432
    move-object/from16 v29, v0

    .line 433
    .line 434
    const/16 v1, 0x1d

    .line 435
    .line 436
    const-string v2, "ap-south-2"

    .line 437
    .line 438
    const-string v3, "AP_SOUTH_2"

    .line 439
    .line 440
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 441
    .line 442
    .line 443
    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_SOUTH_2:Lcom/amazonaws/regions/Regions;

    .line 444
    .line 445
    new-instance v0, Lcom/amazonaws/regions/Regions;

    .line 446
    .line 447
    move-object/from16 v30, v0

    .line 448
    .line 449
    const/16 v1, 0x1e

    .line 450
    .line 451
    const-string v2, "il-central-1"

    .line 452
    .line 453
    const-string v3, "IL_CENTRAL_1"

    .line 454
    .line 455
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 456
    .line 457
    .line 458
    sput-object v0, Lcom/amazonaws/regions/Regions;->IL_CENTRAL_1:Lcom/amazonaws/regions/Regions;

    .line 459
    .line 460
    move-object/from16 v0, v31

    .line 461
    .line 462
    move-object/from16 v1, v32

    .line 463
    .line 464
    move-object/from16 v2, v33

    .line 465
    .line 466
    move-object/from16 v3, v35

    .line 467
    .line 468
    filled-new-array/range {v0 .. v30}, [Lcom/amazonaws/regions/Regions;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    sput-object v0, Lcom/amazonaws/regions/Regions;->$VALUES:[Lcom/amazonaws/regions/Regions;

    .line 473
    .line 474
    sput-object v34, Lcom/amazonaws/regions/Regions;->DEFAULT_REGION:Lcom/amazonaws/regions/Regions;

    .line 475
    .line 476
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/amazonaws/regions/Regions;->name:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;
    .locals 5

    .line 1
    invoke-static {}, Lcom/amazonaws/regions/Regions;->values()[Lcom/amazonaws/regions/Regions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "Cannot create enum from "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, " value!"

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/regions/Regions;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/regions/Regions;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/regions/Regions;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/regions/Regions;->$VALUES:[Lcom/amazonaws/regions/Regions;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/regions/Regions;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/regions/Regions;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/regions/Regions;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
