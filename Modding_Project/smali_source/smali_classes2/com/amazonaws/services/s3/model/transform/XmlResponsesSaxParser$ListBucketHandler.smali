.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBucketHandler"
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
    if-eqz p1, :cond_d

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
    if-nez p1, :cond_c

    .line 40
    .line 41
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_b

    .line 46
    .line 47
    const-string p1, "Marker"

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_a

    .line 54
    .line 55
    const-string p1, "NextMarker"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_9

    .line 62
    .line 63
    const-string p1, "MaxKeys"

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_8

    .line 70
    .line 71
    const-string p1, "Delimiter"

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_7

    .line 78
    .line 79
    const-string p1, "EncodingType"

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    const-string p1, "IsTruncated"

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string p2, "false"

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-nez p2, :cond_3

    .line 110
    .line 111
    const-string/jumbo p2, "true"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_2

    .line 119
    .line 120
    throw v0

    .line 121
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v0, "Invalid value for IsTruncated field: "

    .line 129
    .line 130
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p2

    .line 144
    :cond_3
    throw v0

    .line 145
    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_5

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_5
    throw v0

    .line 154
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->c:Z

    .line 171
    .line 172
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->c(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->c:Z

    .line 189
    .line 190
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->c:Z

    .line 203
    .line 204
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    throw v0

    .line 208
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->c:Z

    .line 217
    .line 218
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    throw v0

    .line 226
    :cond_d
    filled-new-array {p3, v2}, [Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    const-string v3, "Owner"

    .line 235
    .line 236
    if-eqz p1, :cond_13

    .line 237
    .line 238
    const-string p1, "Key"

    .line 239
    .line 240
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-eqz p1, :cond_e

    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->f:Ljava/lang/String;

    .line 251
    .line 252
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 253
    .line 254
    iget-boolean p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->c:Z

    .line 255
    .line 256
    invoke-static {p1, p3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->b(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_e
    const-string p1, "LastModified"

    .line 266
    .line 267
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-eqz p1, :cond_f

    .line 272
    .line 273
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->c(Ljava/util/Date;)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_f
    const-string p1, "ETag"

    .line 289
    .line 290
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_10

    .line 295
    .line 296
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->a(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_10
    const-string p1, "Size"

    .line 312
    .line 313
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-eqz p1, :cond_11

    .line 318
    .line 319
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    invoke-static {p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->d(Ljava/lang/String;)J

    .line 326
    .line 327
    .line 328
    move-result-wide p2

    .line 329
    invoke-virtual {p1, p2, p3}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->e(J)V

    .line 330
    .line 331
    .line 332
    goto :goto_0

    .line 333
    :cond_11
    const-string p1, "StorageClass"

    .line 334
    .line 335
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    if-eqz p1, :cond_12

    .line 340
    .line 341
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 342
    .line 343
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->f(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    goto :goto_0

    .line 351
    :cond_12
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    if-eqz p1, :cond_17

    .line 356
    .line 357
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 358
    .line 359
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 360
    .line 361
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->d(Lcom/amazonaws/services/s3/model/Owner;)V

    .line 362
    .line 363
    .line 364
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 365
    .line 366
    goto :goto_0

    .line 367
    :cond_13
    filled-new-array {p3, v2, v3}, [Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    if-eqz p1, :cond_15

    .line 376
    .line 377
    const-string p1, "ID"

    .line 378
    .line 379
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    if-eqz p1, :cond_14

    .line 384
    .line 385
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 386
    .line 387
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p2

    .line 391
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/Owner;->f(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    goto :goto_0

    .line 395
    :cond_14
    const-string p1, "DisplayName"

    .line 396
    .line 397
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-eqz p1, :cond_17

    .line 402
    .line 403
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 404
    .line 405
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/Owner;->e(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    goto :goto_0

    .line 413
    :cond_15
    const-string p1, "CommonPrefixes"

    .line 414
    .line 415
    filled-new-array {p3, p1}, [Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    if-eqz p1, :cond_17

    .line 424
    .line 425
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    if-nez p1, :cond_16

    .line 430
    .line 431
    goto :goto_0

    .line 432
    :cond_16
    throw v0

    .line 433
    :cond_17
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
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->d:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

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
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method
