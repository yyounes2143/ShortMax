.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListVersionsHandler"
.end annotation


# instance fields
.field private final c:Z

.field private d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

.field private e:Lcom/amazonaws/services/s3/model/Owner;


# virtual methods
.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string p1, "ListVersionsResult"

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
    const-string/jumbo v0, "true"

    .line 12
    .line 13
    .line 14
    const-string v1, "Prefix"

    .line 15
    .line 16
    const-string v2, "DeleteMarker"

    .line 17
    .line 18
    const-string v3, "Version"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz p3, :cond_b

    .line 22
    .line 23
    const-string p1, "Name"

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_a

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_9

    .line 36
    .line 37
    const-string p1, "KeyMarker"

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_8

    .line 44
    .line 45
    const-string p1, "VersionIdMarker"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_7

    .line 52
    .line 53
    const-string p1, "MaxKeys"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_6

    .line 60
    .line 61
    const-string p1, "Delimiter"

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    const-string p1, "EncodingType"

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_4

    .line 76
    .line 77
    const-string p1, "NextKeyMarker"

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    const-string p1, "NextVersionIdMarker"

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_2

    .line 92
    .line 93
    const-string p1, "IsTruncated"

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_1

    .line 100
    .line 101
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_0

    .line 106
    .line 107
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_0

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_0
    throw v4

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    throw v4

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    throw v4

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->c:Z

    .line 137
    .line 138
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    throw v4

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    throw v4

    .line 150
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->c:Z

    .line 159
    .line 160
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    throw v4

    .line 164
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    throw v4

    .line 172
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    throw v4

    .line 180
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->c:Z

    .line 189
    .line 190
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    throw v4

    .line 194
    :cond_9
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
    iget-boolean p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->c:Z

    .line 203
    .line 204
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    throw v4

    .line 208
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    throw v4

    .line 212
    :cond_b
    const-string p3, "CommonPrefixes"

    .line 213
    .line 214
    filled-new-array {p1, p3}, [Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result p3

    .line 222
    if-eqz p3, :cond_d

    .line 223
    .line 224
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-nez p1, :cond_c

    .line 229
    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    throw v4

    .line 240
    :cond_d
    filled-new-array {p1, v3}, [Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p3

    .line 244
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result p3

    .line 248
    const-string v1, "Owner"

    .line 249
    .line 250
    if-nez p3, :cond_11

    .line 251
    .line 252
    filled-new-array {p1, v2}, [Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result p3

    .line 260
    if-eqz p3, :cond_e

    .line 261
    .line 262
    goto :goto_0

    .line 263
    :cond_e
    filled-new-array {p1, v3, v1}, [Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p3

    .line 267
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    if-nez p3, :cond_f

    .line 272
    .line 273
    filled-new-array {p1, v2, v1}, [Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_19

    .line 282
    .line 283
    :cond_f
    const-string p1, "ID"

    .line 284
    .line 285
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-eqz p1, :cond_10

    .line 290
    .line 291
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/Owner;->f(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_10
    const-string p1, "DisplayName"

    .line 303
    .line 304
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-eqz p1, :cond_19

    .line 309
    .line 310
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 311
    .line 312
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p2

    .line 316
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/Owner;->e(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :cond_11
    :goto_0
    const-string p1, "Key"

    .line 322
    .line 323
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    if-eqz p1, :cond_12

    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 334
    .line 335
    iget-boolean p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->c:Z

    .line 336
    .line 337
    invoke-static {p1, p3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->c(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_12
    const-string p1, "VersionId"

    .line 347
    .line 348
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-eqz p1, :cond_13

    .line 353
    .line 354
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 355
    .line 356
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->h(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    :cond_13
    const-string p1, "IsLatest"

    .line 366
    .line 367
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-eqz p1, :cond_14

    .line 372
    .line 373
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 374
    .line 375
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result p2

    .line 383
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->b(Z)V

    .line 384
    .line 385
    .line 386
    goto :goto_1

    .line 387
    :cond_14
    const-string p1, "LastModified"

    .line 388
    .line 389
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    if-eqz p1, :cond_15

    .line 394
    .line 395
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object p2

    .line 401
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 402
    .line 403
    .line 404
    move-result-object p2

    .line 405
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->d(Ljava/util/Date;)V

    .line 406
    .line 407
    .line 408
    goto :goto_1

    .line 409
    :cond_15
    const-string p1, "ETag"

    .line 410
    .line 411
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    if-eqz p1, :cond_16

    .line 416
    .line 417
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 418
    .line 419
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p2

    .line 423
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p2

    .line 427
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->a(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    goto :goto_1

    .line 431
    :cond_16
    const-string p1, "Size"

    .line 432
    .line 433
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    if-eqz p1, :cond_17

    .line 438
    .line 439
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 440
    .line 441
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 446
    .line 447
    .line 448
    move-result-wide p2

    .line 449
    invoke-virtual {p1, p2, p3}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->f(J)V

    .line 450
    .line 451
    .line 452
    goto :goto_1

    .line 453
    :cond_17
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    if-eqz p1, :cond_18

    .line 458
    .line 459
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 460
    .line 461
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 462
    .line 463
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->e(Lcom/amazonaws/services/s3/model/Owner;)V

    .line 464
    .line 465
    .line 466
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 467
    .line 468
    goto :goto_1

    .line 469
    :cond_18
    const-string p1, "StorageClass"

    .line 470
    .line 471
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result p1

    .line 475
    if-eqz p1, :cond_19

    .line 476
    .line 477
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 478
    .line 479
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->g(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    :cond_19
    :goto_1
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 1
    const-string p1, "ListVersionsResult"

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
    const-string p4, "DeleteMarker"

    .line 12
    .line 13
    const-string v0, "Version"

    .line 14
    .line 15
    if-eqz p3, :cond_2

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p3, 0x0

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/S3VersionSummary;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 37
    .line 38
    throw p3

    .line 39
    :cond_1
    new-instance p1, Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 40
    .line 41
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/S3VersionSummary;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->d:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 45
    .line 46
    throw p3

    .line 47
    :cond_2
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-nez p3, :cond_3

    .line 56
    .line 57
    filled-new-array {p1, p4}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    :cond_3
    const-string p1, "Owner"

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    new-instance p1, Lcom/amazonaws/services/s3/model/Owner;

    .line 76
    .line 77
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->e:Lcom/amazonaws/services/s3/model/Owner;

    .line 81
    .line 82
    :cond_4
    :goto_0
    return-void
.end method
