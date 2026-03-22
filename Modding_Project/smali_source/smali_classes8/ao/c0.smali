.class public final Lao/c0;
.super Ljava/lang/Object;
.source "HevcConfig.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:I

.field public final n:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final o:Ldn/g$k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Ldn/g$k;)V
    .locals 2
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Ldn/g$k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIIIIIIIIFI",
            "Ljava/lang/String;",
            "Ldn/g$k;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lao/c0;->a:Ljava/util/List;

    move v1, p2

    .line 3
    iput v1, v0, Lao/c0;->b:I

    move v1, p3

    .line 4
    iput v1, v0, Lao/c0;->c:I

    move v1, p4

    .line 5
    iput v1, v0, Lao/c0;->d:I

    move v1, p5

    .line 6
    iput v1, v0, Lao/c0;->e:I

    move v1, p6

    .line 7
    iput v1, v0, Lao/c0;->f:I

    move v1, p7

    .line 8
    iput v1, v0, Lao/c0;->g:I

    move v1, p8

    .line 9
    iput v1, v0, Lao/c0;->h:I

    move v1, p9

    .line 10
    iput v1, v0, Lao/c0;->i:I

    move v1, p10

    .line 11
    iput v1, v0, Lao/c0;->j:I

    move v1, p11

    .line 12
    iput v1, v0, Lao/c0;->k:I

    move v1, p12

    .line 13
    iput v1, v0, Lao/c0;->l:F

    move v1, p13

    .line 14
    iput v1, v0, Lao/c0;->m:I

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lao/c0;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lao/c0;->o:Ldn/g$k;

    return-void
.end method

.method public static a(Lcn/b0;)Lao/c0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lao/c0;->b(Lcn/b0;ZLdn/g$k;)Lao/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static b(Lcn/b0;ZLdn/g$k;)Lao/c0;
    .locals 36
    .param p2    # Ldn/g$k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Lcn/b0;->X(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    const/16 v2, 0x15

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcn/b0;->X(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    and-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->f()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    move v6, v5

    .line 34
    move v7, v6

    .line 35
    :goto_1
    const/4 v8, 0x1

    .line 36
    if-ge v6, v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, v8}, Lcn/b0;->X(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->P()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    move v9, v5

    .line 46
    :goto_2
    if-ge v9, v8, :cond_1

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->P()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    add-int/lit8 v11, v10, 0x4

    .line 53
    .line 54
    add-int/2addr v7, v11

    .line 55
    invoke-virtual {v0, v10}, Lcn/b0;->X(I)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v9, v9, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v0, v4}, Lcn/b0;->W(I)V

    .line 65
    .line 66
    .line 67
    new-array v4, v7, [B

    .line 68
    .line 69
    const/4 v6, -0x1

    .line 70
    const/high16 v9, 0x3f800000    # 1.0f

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    move-object/from16 v26, p2

    .line 74
    .line 75
    move v14, v6

    .line 76
    move v15, v14

    .line 77
    move/from16 v16, v15

    .line 78
    .line 79
    move/from16 v17, v16

    .line 80
    .line 81
    move/from16 v18, v17

    .line 82
    .line 83
    move/from16 v19, v18

    .line 84
    .line 85
    move/from16 v20, v19

    .line 86
    .line 87
    move/from16 v21, v20

    .line 88
    .line 89
    move/from16 v22, v21

    .line 90
    .line 91
    move/from16 v24, v22

    .line 92
    .line 93
    move/from16 v23, v9

    .line 94
    .line 95
    move-object/from16 v25, v10

    .line 96
    .line 97
    move v6, v5

    .line 98
    move v9, v6

    .line 99
    :goto_3
    if-ge v6, v3, :cond_9

    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    and-int/lit8 v10, v10, 0x3f

    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->P()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    move v13, v5

    .line 112
    move-object/from16 v12, v26

    .line 113
    .line 114
    :goto_4
    if-ge v13, v11, :cond_8

    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->P()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    sget-object v8, Ldn/g;->a:[B

    .line 121
    .line 122
    move/from16 v27, v3

    .line 123
    .line 124
    array-length v3, v8

    .line 125
    invoke-static {v8, v5, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    .line 127
    .line 128
    array-length v3, v8

    .line 129
    add-int/2addr v9, v3

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->e()[B

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->f()I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-static {v3, v8, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    .line 140
    .line 141
    const/16 v3, 0x20

    .line 142
    .line 143
    if-ne v10, v3, :cond_3

    .line 144
    .line 145
    if-nez v13, :cond_3

    .line 146
    .line 147
    add-int v3, v9, v1

    .line 148
    .line 149
    invoke-static {v4, v9, v3}, Ldn/g;->y([BII)Ldn/g$k;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    move v8, v5

    .line 154
    move/from16 v34, v11

    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :cond_3
    const/16 v3, 0x21

    .line 159
    .line 160
    if-ne v10, v3, :cond_5

    .line 161
    .line 162
    if-nez v13, :cond_5

    .line 163
    .line 164
    add-int v3, v9, v1

    .line 165
    .line 166
    invoke-static {v4, v9, v3, v12}, Ldn/g;->u([BIILdn/g$k;)Ldn/g$h;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    iget v8, v3, Ldn/g$h;->b:I

    .line 171
    .line 172
    const/4 v14, 0x1

    .line 173
    add-int/2addr v8, v14

    .line 174
    iget v15, v3, Ldn/g$h;->h:I

    .line 175
    .line 176
    iget v14, v3, Ldn/g$h;->i:I

    .line 177
    .line 178
    iget v5, v3, Ldn/g$h;->e:I

    .line 179
    .line 180
    add-int/lit8 v17, v5, 0x8

    .line 181
    .line 182
    iget v5, v3, Ldn/g$h;->f:I

    .line 183
    .line 184
    add-int/lit8 v18, v5, 0x8

    .line 185
    .line 186
    iget v5, v3, Ldn/g$h;->l:I

    .line 187
    .line 188
    move/from16 v16, v5

    .line 189
    .line 190
    iget v5, v3, Ldn/g$h;->m:I

    .line 191
    .line 192
    move/from16 v19, v5

    .line 193
    .line 194
    iget v5, v3, Ldn/g$h;->n:I

    .line 195
    .line 196
    move/from16 v20, v5

    .line 197
    .line 198
    iget v5, v3, Ldn/g$h;->j:F

    .line 199
    .line 200
    move/from16 v21, v5

    .line 201
    .line 202
    iget v5, v3, Ldn/g$h;->k:I

    .line 203
    .line 204
    iget-object v3, v3, Ldn/g$h;->c:Ldn/g$c;

    .line 205
    .line 206
    if-eqz v3, :cond_4

    .line 207
    .line 208
    move/from16 v23, v5

    .line 209
    .line 210
    iget v5, v3, Ldn/g$c;->a:I

    .line 211
    .line 212
    move/from16 p2, v8

    .line 213
    .line 214
    iget-boolean v8, v3, Ldn/g$c;->b:Z

    .line 215
    .line 216
    move/from16 v34, v11

    .line 217
    .line 218
    iget v11, v3, Ldn/g$c;->c:I

    .line 219
    .line 220
    move/from16 v24, v14

    .line 221
    .line 222
    iget v14, v3, Ldn/g$c;->d:I

    .line 223
    .line 224
    move/from16 v26, v15

    .line 225
    .line 226
    iget-object v15, v3, Ldn/g$c;->e:[I

    .line 227
    .line 228
    iget v3, v3, Ldn/g$c;->f:I

    .line 229
    .line 230
    move/from16 v28, v5

    .line 231
    .line 232
    move/from16 v29, v8

    .line 233
    .line 234
    move/from16 v30, v11

    .line 235
    .line 236
    move/from16 v31, v14

    .line 237
    .line 238
    move-object/from16 v32, v15

    .line 239
    .line 240
    move/from16 v33, v3

    .line 241
    .line 242
    invoke-static/range {v28 .. v33}, Lcn/i;->f(IZII[II)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v25

    .line 246
    goto :goto_5

    .line 247
    :cond_4
    move/from16 v23, v5

    .line 248
    .line 249
    move/from16 p2, v8

    .line 250
    .line 251
    move/from16 v34, v11

    .line 252
    .line 253
    move/from16 v24, v14

    .line 254
    .line 255
    move/from16 v26, v15

    .line 256
    .line 257
    :goto_5
    move/from16 v14, p2

    .line 258
    .line 259
    move/from16 v15, v26

    .line 260
    .line 261
    const/4 v8, 0x0

    .line 262
    move/from16 v35, v19

    .line 263
    .line 264
    move/from16 v19, v16

    .line 265
    .line 266
    move/from16 v16, v24

    .line 267
    .line 268
    move/from16 v24, v23

    .line 269
    .line 270
    move/from16 v23, v21

    .line 271
    .line 272
    move/from16 v21, v20

    .line 273
    .line 274
    move/from16 v20, v35

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_5
    move/from16 v34, v11

    .line 278
    .line 279
    const/16 v3, 0x27

    .line 280
    .line 281
    if-ne v10, v3, :cond_7

    .line 282
    .line 283
    if-nez v13, :cond_7

    .line 284
    .line 285
    add-int v3, v9, v1

    .line 286
    .line 287
    invoke-static {v4, v9, v3}, Ldn/g;->t([BII)Ldn/g$g;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    if-eqz v3, :cond_7

    .line 292
    .line 293
    if-eqz v12, :cond_7

    .line 294
    .line 295
    iget v3, v3, Ldn/g$g;->d:I

    .line 296
    .line 297
    iget-object v5, v12, Ldn/g$k;->b:Lcom/google/common/collect/ImmutableList;

    .line 298
    .line 299
    const/4 v8, 0x0

    .line 300
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    check-cast v5, Ldn/g$a;

    .line 305
    .line 306
    iget v5, v5, Ldn/g$a;->b:I

    .line 307
    .line 308
    if-ne v3, v5, :cond_6

    .line 309
    .line 310
    const/16 v22, 0x4

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_6
    const/4 v3, 0x5

    .line 314
    move/from16 v22, v3

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_7
    const/4 v8, 0x0

    .line 318
    :goto_6
    add-int/2addr v9, v1

    .line 319
    invoke-virtual {v0, v1}, Lcn/b0;->X(I)V

    .line 320
    .line 321
    .line 322
    add-int/lit8 v13, v13, 0x1

    .line 323
    .line 324
    move v5, v8

    .line 325
    move/from16 v3, v27

    .line 326
    .line 327
    move/from16 v11, v34

    .line 328
    .line 329
    const/4 v1, 0x4

    .line 330
    const/4 v8, 0x1

    .line 331
    goto/16 :goto_4

    .line 332
    .line 333
    :cond_8
    move/from16 v27, v3

    .line 334
    .line 335
    move v8, v5

    .line 336
    add-int/lit8 v6, v6, 0x1

    .line 337
    .line 338
    move-object/from16 v26, v12

    .line 339
    .line 340
    const/4 v1, 0x4

    .line 341
    const/4 v8, 0x1

    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :cond_9
    if-nez v7, :cond_a

    .line 345
    .line 346
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    :goto_7
    move-object v12, v0

    .line 351
    goto :goto_8

    .line 352
    :cond_a
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    goto :goto_7

    .line 357
    :goto_8
    new-instance v0, Lao/c0;

    .line 358
    .line 359
    const/4 v1, 0x1

    .line 360
    add-int/lit8 v13, v2, 0x1

    .line 361
    .line 362
    move-object v11, v0

    .line 363
    invoke-direct/range {v11 .. v26}, Lao/c0;-><init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Ldn/g$k;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .line 365
    .line 366
    return-object v0

    .line 367
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    const-string v2, "Error parsing"

    .line 373
    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    if-eqz p1, :cond_b

    .line 378
    .line 379
    const-string v2, "L-HEVC config"

    .line 380
    .line 381
    goto :goto_a

    .line 382
    :cond_b
    const-string v2, "HEVC config"

    .line 383
    .line 384
    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-static {v1, v0}, Lio/bidmachine/media3/common/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    throw v0
.end method

.method public static c(Lcn/b0;Ldn/g$k;)Lao/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1}, Lao/c0;->b(Lcn/b0;ZLdn/g$k;)Lao/c0;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
