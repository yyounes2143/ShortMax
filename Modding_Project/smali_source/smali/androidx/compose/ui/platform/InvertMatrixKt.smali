.class public final Landroidx/compose/ui/platform/InvertMatrixKt;
.super Ljava/lang/Object;
.source "InvertMatrix.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final invertTo-JiSxe2E([F[F)Z
    .locals 47
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "$this$invertTo"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "other"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget v3, v0, v2

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    aget v5, v0, v4

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    aget v7, v0, v6

    .line 23
    .line 24
    const/4 v8, 0x3

    .line 25
    aget v9, v0, v8

    .line 26
    .line 27
    const/4 v10, 0x4

    .line 28
    aget v11, v0, v10

    .line 29
    .line 30
    const/4 v12, 0x5

    .line 31
    aget v13, v0, v12

    .line 32
    .line 33
    const/4 v14, 0x6

    .line 34
    aget v15, v0, v14

    .line 35
    .line 36
    const/16 v16, 0x7

    .line 37
    .line 38
    aget v17, v0, v16

    .line 39
    .line 40
    const/16 v18, 0x8

    .line 41
    .line 42
    aget v14, v0, v18

    .line 43
    .line 44
    const/16 v20, 0x9

    .line 45
    .line 46
    aget v12, v0, v20

    .line 47
    .line 48
    const/16 v22, 0xa

    .line 49
    .line 50
    aget v23, v0, v22

    .line 51
    .line 52
    const/16 v24, 0xb

    .line 53
    .line 54
    aget v25, v0, v24

    .line 55
    .line 56
    const/16 v26, 0xc

    .line 57
    .line 58
    aget v10, v0, v26

    .line 59
    .line 60
    const/16 v27, 0xd

    .line 61
    .line 62
    aget v28, v0, v27

    .line 63
    .line 64
    const/16 v29, 0xe

    .line 65
    .line 66
    aget v30, v0, v29

    .line 67
    .line 68
    const/16 v31, 0xf

    .line 69
    .line 70
    aget v0, v0, v31

    .line 71
    .line 72
    mul-float v32, v3, v13

    .line 73
    .line 74
    mul-float v33, v5, v11

    .line 75
    .line 76
    sub-float v32, v32, v33

    .line 77
    .line 78
    mul-float v33, v3, v15

    .line 79
    .line 80
    mul-float v34, v7, v11

    .line 81
    .line 82
    sub-float v33, v33, v34

    .line 83
    .line 84
    mul-float v34, v3, v17

    .line 85
    .line 86
    mul-float v35, v9, v11

    .line 87
    .line 88
    sub-float v34, v34, v35

    .line 89
    .line 90
    mul-float v35, v5, v15

    .line 91
    .line 92
    mul-float v36, v7, v13

    .line 93
    .line 94
    sub-float v35, v35, v36

    .line 95
    .line 96
    mul-float v36, v5, v17

    .line 97
    .line 98
    mul-float v37, v9, v13

    .line 99
    .line 100
    sub-float v36, v36, v37

    .line 101
    .line 102
    mul-float v37, v7, v17

    .line 103
    .line 104
    mul-float v38, v9, v15

    .line 105
    .line 106
    sub-float v37, v37, v38

    .line 107
    .line 108
    mul-float v38, v14, v28

    .line 109
    .line 110
    mul-float v39, v12, v10

    .line 111
    .line 112
    sub-float v38, v38, v39

    .line 113
    .line 114
    mul-float v39, v14, v30

    .line 115
    .line 116
    mul-float v40, v23, v10

    .line 117
    .line 118
    sub-float v39, v39, v40

    .line 119
    .line 120
    mul-float v40, v14, v0

    .line 121
    .line 122
    mul-float v41, v25, v10

    .line 123
    .line 124
    sub-float v40, v40, v41

    .line 125
    .line 126
    mul-float v41, v12, v30

    .line 127
    .line 128
    mul-float v42, v23, v28

    .line 129
    .line 130
    sub-float v41, v41, v42

    .line 131
    .line 132
    mul-float v42, v12, v0

    .line 133
    .line 134
    mul-float v43, v25, v28

    .line 135
    .line 136
    sub-float v42, v42, v43

    .line 137
    .line 138
    mul-float v43, v23, v0

    .line 139
    .line 140
    mul-float v44, v25, v30

    .line 141
    .line 142
    sub-float v43, v43, v44

    .line 143
    .line 144
    mul-float v44, v32, v43

    .line 145
    .line 146
    mul-float v45, v33, v42

    .line 147
    .line 148
    sub-float v44, v44, v45

    .line 149
    .line 150
    mul-float v45, v34, v41

    .line 151
    .line 152
    add-float v44, v44, v45

    .line 153
    .line 154
    mul-float v45, v35, v40

    .line 155
    .line 156
    add-float v44, v44, v45

    .line 157
    .line 158
    mul-float v45, v36, v39

    .line 159
    .line 160
    sub-float v44, v44, v45

    .line 161
    .line 162
    mul-float v45, v37, v38

    .line 163
    .line 164
    add-float v44, v44, v45

    .line 165
    .line 166
    const/16 v45, 0x0

    .line 167
    .line 168
    cmpg-float v45, v44, v45

    .line 169
    .line 170
    if-nez v45, :cond_0

    .line 171
    .line 172
    return v2

    .line 173
    :cond_0
    const/high16 v45, 0x3f800000    # 1.0f

    .line 174
    .line 175
    div-float v45, v45, v44

    .line 176
    .line 177
    mul-float v44, v13, v43

    .line 178
    .line 179
    mul-float v46, v15, v42

    .line 180
    .line 181
    sub-float v44, v44, v46

    .line 182
    .line 183
    mul-float v46, v17, v41

    .line 184
    .line 185
    add-float v44, v44, v46

    .line 186
    .line 187
    mul-float v44, v44, v45

    .line 188
    .line 189
    aput v44, v1, v2

    .line 190
    .line 191
    neg-float v2, v5

    .line 192
    mul-float v2, v2, v43

    .line 193
    .line 194
    mul-float v44, v7, v42

    .line 195
    .line 196
    add-float v2, v2, v44

    .line 197
    .line 198
    mul-float v44, v9, v41

    .line 199
    .line 200
    sub-float v2, v2, v44

    .line 201
    .line 202
    mul-float v2, v2, v45

    .line 203
    .line 204
    aput v2, v1, v4

    .line 205
    .line 206
    mul-float v2, v28, v37

    .line 207
    .line 208
    mul-float v44, v30, v36

    .line 209
    .line 210
    sub-float v2, v2, v44

    .line 211
    .line 212
    mul-float v44, v0, v35

    .line 213
    .line 214
    add-float v2, v2, v44

    .line 215
    .line 216
    mul-float v2, v2, v45

    .line 217
    .line 218
    aput v2, v1, v6

    .line 219
    .line 220
    neg-float v2, v12

    .line 221
    mul-float v2, v2, v37

    .line 222
    .line 223
    mul-float v6, v23, v36

    .line 224
    .line 225
    add-float/2addr v2, v6

    .line 226
    mul-float v6, v25, v35

    .line 227
    .line 228
    sub-float/2addr v2, v6

    .line 229
    mul-float v2, v2, v45

    .line 230
    .line 231
    aput v2, v1, v8

    .line 232
    .line 233
    neg-float v2, v11

    .line 234
    mul-float v6, v2, v43

    .line 235
    .line 236
    mul-float v8, v15, v40

    .line 237
    .line 238
    add-float/2addr v6, v8

    .line 239
    mul-float v8, v17, v39

    .line 240
    .line 241
    sub-float/2addr v6, v8

    .line 242
    mul-float v6, v6, v45

    .line 243
    .line 244
    const/4 v8, 0x4

    .line 245
    aput v6, v1, v8

    .line 246
    .line 247
    mul-float v43, v43, v3

    .line 248
    .line 249
    mul-float v6, v7, v40

    .line 250
    .line 251
    sub-float v43, v43, v6

    .line 252
    .line 253
    mul-float v6, v9, v39

    .line 254
    .line 255
    add-float v43, v43, v6

    .line 256
    .line 257
    mul-float v43, v43, v45

    .line 258
    .line 259
    const/4 v6, 0x5

    .line 260
    aput v43, v1, v6

    .line 261
    .line 262
    neg-float v6, v10

    .line 263
    mul-float v8, v6, v37

    .line 264
    .line 265
    mul-float v21, v30, v34

    .line 266
    .line 267
    add-float v8, v8, v21

    .line 268
    .line 269
    mul-float v21, v0, v33

    .line 270
    .line 271
    sub-float v8, v8, v21

    .line 272
    .line 273
    mul-float v8, v8, v45

    .line 274
    .line 275
    const/16 v19, 0x6

    .line 276
    .line 277
    aput v8, v1, v19

    .line 278
    .line 279
    mul-float v37, v37, v14

    .line 280
    .line 281
    mul-float v8, v23, v34

    .line 282
    .line 283
    sub-float v37, v37, v8

    .line 284
    .line 285
    mul-float v8, v25, v33

    .line 286
    .line 287
    add-float v37, v37, v8

    .line 288
    .line 289
    mul-float v37, v37, v45

    .line 290
    .line 291
    aput v37, v1, v16

    .line 292
    .line 293
    mul-float v11, v11, v42

    .line 294
    .line 295
    mul-float v8, v13, v40

    .line 296
    .line 297
    sub-float/2addr v11, v8

    .line 298
    mul-float v17, v17, v38

    .line 299
    .line 300
    add-float v11, v11, v17

    .line 301
    .line 302
    mul-float v11, v11, v45

    .line 303
    .line 304
    aput v11, v1, v18

    .line 305
    .line 306
    neg-float v8, v3

    .line 307
    mul-float v8, v8, v42

    .line 308
    .line 309
    mul-float v40, v40, v5

    .line 310
    .line 311
    add-float v8, v8, v40

    .line 312
    .line 313
    mul-float v9, v9, v38

    .line 314
    .line 315
    sub-float/2addr v8, v9

    .line 316
    mul-float v8, v8, v45

    .line 317
    .line 318
    aput v8, v1, v20

    .line 319
    .line 320
    mul-float v10, v10, v36

    .line 321
    .line 322
    mul-float v8, v28, v34

    .line 323
    .line 324
    sub-float/2addr v10, v8

    .line 325
    mul-float v0, v0, v32

    .line 326
    .line 327
    add-float/2addr v10, v0

    .line 328
    mul-float v10, v10, v45

    .line 329
    .line 330
    aput v10, v1, v22

    .line 331
    .line 332
    neg-float v0, v14

    .line 333
    mul-float v0, v0, v36

    .line 334
    .line 335
    mul-float v34, v34, v12

    .line 336
    .line 337
    add-float v0, v0, v34

    .line 338
    .line 339
    mul-float v25, v25, v32

    .line 340
    .line 341
    sub-float v0, v0, v25

    .line 342
    .line 343
    mul-float v0, v0, v45

    .line 344
    .line 345
    aput v0, v1, v24

    .line 346
    .line 347
    mul-float v2, v2, v41

    .line 348
    .line 349
    mul-float v13, v13, v39

    .line 350
    .line 351
    add-float/2addr v2, v13

    .line 352
    mul-float v15, v15, v38

    .line 353
    .line 354
    sub-float/2addr v2, v15

    .line 355
    mul-float v2, v2, v45

    .line 356
    .line 357
    aput v2, v1, v26

    .line 358
    .line 359
    mul-float v3, v3, v41

    .line 360
    .line 361
    mul-float v5, v5, v39

    .line 362
    .line 363
    sub-float/2addr v3, v5

    .line 364
    mul-float v7, v7, v38

    .line 365
    .line 366
    add-float/2addr v3, v7

    .line 367
    mul-float v3, v3, v45

    .line 368
    .line 369
    aput v3, v1, v27

    .line 370
    .line 371
    mul-float v6, v6, v35

    .line 372
    .line 373
    mul-float v28, v28, v33

    .line 374
    .line 375
    add-float v6, v6, v28

    .line 376
    .line 377
    mul-float v30, v30, v32

    .line 378
    .line 379
    sub-float v6, v6, v30

    .line 380
    .line 381
    mul-float v6, v6, v45

    .line 382
    .line 383
    aput v6, v1, v29

    .line 384
    .line 385
    mul-float v14, v14, v35

    .line 386
    .line 387
    mul-float v12, v12, v33

    .line 388
    .line 389
    sub-float/2addr v14, v12

    .line 390
    mul-float v23, v23, v32

    .line 391
    .line 392
    add-float v14, v14, v23

    .line 393
    .line 394
    mul-float v14, v14, v45

    .line 395
    .line 396
    aput v14, v1, v31

    .line 397
    .line 398
    return v4
.end method
