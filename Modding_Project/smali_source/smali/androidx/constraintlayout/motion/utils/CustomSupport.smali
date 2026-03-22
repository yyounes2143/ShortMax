.class public Landroidx/constraintlayout/motion/utils/CustomSupport;
.super Ljava/lang/Object;
.source "CustomSupport.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CustomSupport"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static clamp(I)I
    .locals 1

    .line 1
    shr-int/lit8 v0, p0, 0x1f

    .line 2
    .line 3
    not-int v0, v0

    .line 4
    and-int/2addr p0, v0

    .line 5
    add-int/lit16 p0, p0, -0xff

    .line 6
    .line 7
    shr-int/lit8 v0, p0, 0x1f

    .line 8
    .line 9
    and-int/2addr p0, v0

    .line 10
    add-int/lit16 p0, p0, 0xff

    .line 11
    .line 12
    return p0
.end method

.method public static setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v2, "\""

    .line 4
    .line 5
    const-string v3, " on View \""

    .line 6
    .line 7
    const-string v4, "CustomSupport"

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v6, "set"

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    :try_start_0
    sget-object v6, Landroidx/constraintlayout/motion/utils/CustomSupport$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    aget v6, v6, v7

    .line 45
    .line 46
    const/4 v7, 0x3

    .line 47
    const/4 v8, 0x2

    .line 48
    const/4 v9, 0x1

    .line 49
    const-wide v10, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const/4 v12, 0x0

    .line 55
    const/high16 v13, 0x437f0000    # 255.0f

    .line 56
    .line 57
    packed-switch v6, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :pswitch_0
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    aget v6, p2, v12

    .line 73
    .line 74
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :catch_0
    move-exception v0

    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :catch_1
    move-exception v0

    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :catch_2
    move-exception v0

    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :pswitch_1
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 97
    .line 98
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    aget v6, p2, v12

    .line 107
    .line 108
    const/high16 v7, 0x3f000000    # 0.5f

    .line 109
    .line 110
    cmpl-float v6, v6, v7

    .line 111
    .line 112
    if-lez v6, :cond_0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    move v9, v12

    .line 116
    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto/16 :goto_4

    .line 128
    .line 129
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v7, "unable to interpolate strings "

    .line 137
    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :pswitch_3
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 157
    .line 158
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    aget v6, p2, v12

    .line 167
    .line 168
    float-to-double v14, v6

    .line 169
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 170
    .line 171
    .line 172
    move-result-wide v14

    .line 173
    double-to-float v6, v14

    .line 174
    mul-float/2addr v6, v13

    .line 175
    float-to-int v6, v6

    .line 176
    invoke-static {v6}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    aget v9, p2, v9

    .line 181
    .line 182
    float-to-double v14, v9

    .line 183
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 184
    .line 185
    .line 186
    move-result-wide v14

    .line 187
    double-to-float v9, v14

    .line 188
    mul-float/2addr v9, v13

    .line 189
    float-to-int v9, v9

    .line 190
    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    aget v8, p2, v8

    .line 195
    .line 196
    float-to-double v14, v8

    .line 197
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 198
    .line 199
    .line 200
    move-result-wide v10

    .line 201
    double-to-float v8, v10

    .line 202
    mul-float/2addr v8, v13

    .line 203
    float-to-int v8, v8

    .line 204
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    aget v7, p2, v7

    .line 209
    .line 210
    mul-float/2addr v7, v13

    .line 211
    float-to-int v7, v7

    .line 212
    invoke-static {v7}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    shl-int/lit8 v7, v7, 0x18

    .line 217
    .line 218
    shl-int/lit8 v6, v6, 0x10

    .line 219
    .line 220
    or-int/2addr v6, v7

    .line 221
    shl-int/lit8 v7, v9, 0x8

    .line 222
    .line 223
    or-int/2addr v6, v7

    .line 224
    or-int/2addr v6, v8

    .line 225
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    goto/16 :goto_4

    .line 237
    .line 238
    :pswitch_4
    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 239
    .line 240
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    aget v6, p2, v12

    .line 249
    .line 250
    float-to-double v14, v6

    .line 251
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 252
    .line 253
    .line 254
    move-result-wide v14

    .line 255
    double-to-float v6, v14

    .line 256
    mul-float/2addr v6, v13

    .line 257
    float-to-int v6, v6

    .line 258
    invoke-static {v6}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    aget v9, p2, v9

    .line 263
    .line 264
    float-to-double v14, v9

    .line 265
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 266
    .line 267
    .line 268
    move-result-wide v14

    .line 269
    double-to-float v9, v14

    .line 270
    mul-float/2addr v9, v13

    .line 271
    float-to-int v9, v9

    .line 272
    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    aget v8, p2, v8

    .line 277
    .line 278
    float-to-double v14, v8

    .line 279
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 280
    .line 281
    .line 282
    move-result-wide v10

    .line 283
    double-to-float v8, v10

    .line 284
    mul-float/2addr v8, v13

    .line 285
    float-to-int v8, v8

    .line 286
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    aget v7, p2, v7

    .line 291
    .line 292
    mul-float/2addr v7, v13

    .line 293
    float-to-int v7, v7

    .line 294
    invoke-static {v7}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    shl-int/lit8 v7, v7, 0x18

    .line 299
    .line 300
    shl-int/lit8 v6, v6, 0x10

    .line 301
    .line 302
    or-int/2addr v6, v7

    .line 303
    shl-int/lit8 v7, v9, 0x8

    .line 304
    .line 305
    or-int/2addr v6, v7

    .line 306
    or-int/2addr v6, v8

    .line 307
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 308
    .line 309
    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 313
    .line 314
    .line 315
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    goto/16 :goto_4

    .line 323
    .line 324
    :pswitch_5
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 325
    .line 326
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    aget v6, p2, v12

    .line 335
    .line 336
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    goto/16 :goto_4

    .line 348
    .line 349
    :pswitch_6
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 350
    .line 351
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    aget v6, p2, v12

    .line 360
    .line 361
    float-to-int v6, v6

    .line 362
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .line 372
    .line 373
    goto :goto_4

    .line 374
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    const-string v7, "Cannot invoke method "

    .line 380
    .line 381
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    .line 406
    .line 407
    goto :goto_4

    .line 408
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v7, "Cannot access method "

    .line 414
    .line 415
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    .line 440
    .line 441
    goto :goto_4

    .line 442
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    const-string v7, "No method "

    .line 448
    .line 449
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    .line 474
    .line 475
    :goto_4
    return-void

    .line 476
    nop

    .line 477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
