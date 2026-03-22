.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListObjectsV2Handler"
.end annotation


# instance fields
.field private final c:Z

.field private d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

.field private e:Lcom/amazonaws/services/s3/model/Owner;

.field private f:Ljava/lang/String;


# virtual methods
.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-string p3, "ListBucketResult"

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    throw v0

    .line 19
    :cond_1
    filled-new-array {p3}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const-string v1, "Prefix"

    .line 28
    .line 29
    const-string v2, "Contents"

    .line 30
    .line 31
    if-eqz p1, :cond_f

    .line 32
    .line 33
    const-string p1, "Name"

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_e

    .line 40
    .line 41
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_d

    .line 46
    .line 47
    const-string p1, "MaxKeys"

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_c

    .line 54
    .line 55
    const-string p1, "NextContinuationToken"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_b

    .line 62
    .line 63
    const-string p1, "ContinuationToken"

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_a

    .line 70
    .line 71
    const-string p1, "StartAfter"

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_9

    .line 78
    .line 79
    const-string p1, "KeyCount"

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_8

    .line 86
    .line 87
    const-string p1, "Delimiter"

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_7

    .line 94
    .line 95
    const-string p1, "EncodingType"

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_6

    .line 102
    .line 103
    const-string p1, "IsTruncated"

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string p2, "false"

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-nez p2, :cond_3

    .line 126
    .line 127
    const-string/jumbo p2, "true"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-eqz p2, :cond_2

    .line 135
    .line 136
    throw v0

    .line 137
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    new-instance p3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v0, "Invalid value for IsTruncated field: "

    .line 145
    .line 146
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p2

    .line 160
    :cond_3
    throw v0

    .line 161
    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_5

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_5
    throw v0

    .line 170
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->c:Z

    .line 187
    .line 188
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->c(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    throw v0

    .line 200
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->c:Z

    .line 205
    .line 206
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    throw v0

    .line 218
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->c(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    throw v0

    .line 226
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->c:Z

    .line 235
    .line 236
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    :cond_f
    filled-new-array {p3, v2}, [Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    const-string v3, "Owner"

    .line 253
    .line 254
    if-eqz p1, :cond_15

    .line 255
    .line 256
    const-string p1, "Key"

    .line 257
    .line 258
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_10

    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->f:Ljava/lang/String;

    .line 269
    .line 270
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 271
    .line 272
    iget-boolean p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->c:Z

    .line 273
    .line 274
    invoke-static {p1, p3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->b(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_10
    const-string p1, "LastModified"

    .line 284
    .line 285
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-eqz p1, :cond_11

    .line 290
    .line 291
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->c(Ljava/util/Date;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_11
    const-string p1, "ETag"

    .line 307
    .line 308
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_12

    .line 313
    .line 314
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 315
    .line 316
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->a(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_12
    const-string p1, "Size"

    .line 330
    .line 331
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_13

    .line 336
    .line 337
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 338
    .line 339
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    invoke-static {p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->d(Ljava/lang/String;)J

    .line 344
    .line 345
    .line 346
    move-result-wide p2

    .line 347
    invoke-virtual {p1, p2, p3}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->e(J)V

    .line 348
    .line 349
    .line 350
    goto :goto_0

    .line 351
    :cond_13
    const-string p1, "StorageClass"

    .line 352
    .line 353
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-eqz p1, :cond_14

    .line 358
    .line 359
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 360
    .line 361
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->f(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    goto :goto_0

    .line 369
    :cond_14
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    if-eqz p1, :cond_19

    .line 374
    .line 375
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 376
    .line 377
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 378
    .line 379
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->d(Lcom/amazonaws/services/s3/model/Owner;)V

    .line 380
    .line 381
    .line 382
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 383
    .line 384
    goto :goto_0

    .line 385
    :cond_15
    filled-new-array {p3, v2, v3}, [Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    if-eqz p1, :cond_17

    .line 394
    .line 395
    const-string p1, "ID"

    .line 396
    .line 397
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-eqz p1, :cond_16

    .line 402
    .line 403
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 404
    .line 405
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/Owner;->f(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    goto :goto_0

    .line 413
    :cond_16
    const-string p1, "DisplayName"

    .line 414
    .line 415
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    if-eqz p1, :cond_19

    .line 420
    .line 421
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 422
    .line 423
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p2

    .line 427
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/Owner;->e(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    goto :goto_0

    .line 431
    :cond_17
    const-string p1, "CommonPrefixes"

    .line 432
    .line 433
    filled-new-array {p3, p1}, [Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    if-eqz p1, :cond_19

    .line 442
    .line 443
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result p1

    .line 447
    if-nez p1, :cond_18

    .line 448
    .line 449
    goto :goto_0

    .line 450
    :cond_18
    throw v0

    .line 451
    :cond_19
    :goto_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    const-string p1, "ListBucketResult"

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const-string p4, "Contents"

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    throw p1

    .line 31
    :cond_1
    filled-new-array {p1, p4}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const-string p1, "Owner"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    new-instance p1, Lcom/amazonaws/services/s3/model/Owner;

    .line 50
    .line 51
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListObjectsV2Handler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method
