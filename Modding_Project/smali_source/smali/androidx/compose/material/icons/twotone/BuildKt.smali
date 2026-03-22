.class public final Landroidx/compose/material/icons/twotone/BuildKt;
.super Ljava/lang/Object;
.source "Build.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _build:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getBuild(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46
    .param p0    # Landroidx/compose/material/icons/Icons$TwoTone;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroidx/compose/material/icons/twotone/BuildKt;->_build:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 17
    .line 18
    move-object/from16 v29, v1

    .line 19
    .line 20
    move-object v12, v1

    .line 21
    const/high16 v0, 0x41c00000    # 24.0f

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/16 v10, 0x60

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    const/high16 v5, 0x41c00000    # 24.0f

    .line 35
    .line 36
    const/high16 v6, 0x41c00000    # 24.0f

    .line 37
    .line 38
    const-wide/16 v7, 0x0

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const-string v2, "TwoTone.Build"

    .line 42
    .line 43
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 51
    .line 52
    move-object/from16 v16, v0

    .line 53
    .line 54
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-direct {v0, v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 67
    .line 68
    .line 69
    move-result v21

    .line 70
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 73
    .line 74
    .line 75
    move-result v22

    .line 76
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    .line 78
    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const v3, 0x413eb852    # 11.92f

    .line 82
    .line 83
    .line 84
    const v4, 0x41047ae1    # 8.28f

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    .line 89
    .line 90
    const v8, -0x406147ae    # -1.24f

    .line 91
    .line 92
    .line 93
    const v9, -0x3f828f5c    # -3.96f

    .line 94
    .line 95
    .line 96
    const v4, 0x3e75c28f    # 0.24f

    .line 97
    .line 98
    .line 99
    const v5, -0x404ccccd    # -1.4f

    .line 100
    .line 101
    .line 102
    const v6, -0x41dc28f6    # -0.16f

    .line 103
    .line 104
    .line 105
    const v7, -0x3fc70a3d    # -2.89f

    .line 106
    .line 107
    .line 108
    move-object v3, v10

    .line 109
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    .line 111
    .line 112
    const v8, -0x3fa3d70a    # -3.44f

    .line 113
    .line 114
    .line 115
    const v9, -0x40570a3d    # -1.32f

    .line 116
    .line 117
    .line 118
    const v4, -0x408f5c29    # -0.94f

    .line 119
    .line 120
    .line 121
    const v5, -0x408ccccd    # -0.95f

    .line 122
    .line 123
    .line 124
    const v6, -0x3ff33333    # -2.2f

    .line 125
    .line 126
    .line 127
    const v7, -0x404e147b    # -1.39f

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    .line 132
    .line 133
    const v3, 0x4045c28f    # 3.09f

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    .line 138
    .line 139
    const v3, 0x4087ae14    # 4.24f

    .line 140
    .line 141
    .line 142
    const v4, -0x3f7851ec    # -4.24f

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 146
    .line 147
    .line 148
    const v3, 0x40e7ae14    # 7.24f

    .line 149
    .line 150
    .line 151
    const/high16 v4, 0x40400000    # 3.0f

    .line 152
    .line 153
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 154
    .line 155
    .line 156
    const v8, 0x3fa7ae14    # 1.31f

    .line 157
    .line 158
    .line 159
    const v9, 0x405c28f6    # 3.44f

    .line 160
    .line 161
    .line 162
    const v4, -0x4270a3d7    # -0.07f

    .line 163
    .line 164
    .line 165
    const v5, 0x3f9eb852    # 1.24f

    .line 166
    .line 167
    .line 168
    const v6, 0x3ebd70a4    # 0.37f

    .line 169
    .line 170
    .line 171
    const v7, 0x401f5c29    # 2.49f

    .line 172
    .line 173
    .line 174
    move-object v3, v10

    .line 175
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 176
    .line 177
    .line 178
    const v8, 0x40751eb8    # 3.83f

    .line 179
    .line 180
    .line 181
    const/high16 v9, 0x3fa00000    # 1.25f

    .line 182
    .line 183
    const v4, 0x3f851eb8    # 1.04f

    .line 184
    .line 185
    .line 186
    const v5, 0x3f851eb8    # 1.04f

    .line 187
    .line 188
    .line 189
    const v6, 0x401e147b    # 2.47f

    .line 190
    .line 191
    .line 192
    const v7, 0x3fb9999a    # 1.45f

    .line 193
    .line 194
    .line 195
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 196
    .line 197
    .line 198
    const/high16 v8, 0x40000000    # 2.0f

    .line 199
    .line 200
    const v9, -0x40ae147b    # -0.82f

    .line 201
    .line 202
    .line 203
    const v4, 0x3f35c28f    # 0.71f

    .line 204
    .line 205
    .line 206
    const v5, -0x42333333    # -0.1f

    .line 207
    .line 208
    .line 209
    const v6, 0x3fb33333    # 1.4f

    .line 210
    .line 211
    .line 212
    const v7, -0x413d70a4    # -0.38f

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 216
    .line 217
    .line 218
    const v3, 0x41175c29    # 9.46f

    .line 219
    .line 220
    .line 221
    invoke-virtual {v10, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 222
    .line 223
    .line 224
    const v3, 0x3f6147ae    # 0.88f

    .line 225
    .line 226
    .line 227
    const v4, -0x409eb852    # -0.88f

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 231
    .line 232
    .line 233
    const v3, -0x3ee8cccd    # -9.45f

    .line 234
    .line 235
    .line 236
    invoke-virtual {v10, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 237
    .line 238
    .line 239
    const v8, 0x3f63d70a    # 0.89f

    .line 240
    .line 241
    .line 242
    const v9, -0x40051eb8    # -1.96f

    .line 243
    .line 244
    .line 245
    const v4, 0x3ef0a3d7    # 0.47f

    .line 246
    .line 247
    .line 248
    const v5, -0x40e66666    # -0.6f

    .line 249
    .line 250
    .line 251
    const v6, 0x3f451eb8    # 0.77f

    .line 252
    .line 253
    .line 254
    const v7, -0x405eb852    # -1.26f

    .line 255
    .line 256
    .line 257
    move-object v3, v10

    .line 258
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 265
    .line 266
    .line 267
    move-result-object v13

    .line 268
    const/16 v27, 0x3800

    .line 269
    .line 270
    const/16 v28, 0x0

    .line 271
    .line 272
    const v17, 0x3e99999a    # 0.3f

    .line 273
    .line 274
    .line 275
    const v19, 0x3e99999a    # 0.3f

    .line 276
    .line 277
    .line 278
    const/16 v18, 0x0

    .line 279
    .line 280
    const/high16 v20, 0x3f800000    # 1.0f

    .line 281
    .line 282
    const/high16 v23, 0x3f800000    # 1.0f

    .line 283
    .line 284
    const/16 v24, 0x0

    .line 285
    .line 286
    const/16 v25, 0x0

    .line 287
    .line 288
    const/16 v26, 0x0

    .line 289
    .line 290
    const-string v15, ""

    .line 291
    .line 292
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 293
    .line 294
    .line 295
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 296
    .line 297
    .line 298
    move-result v31

    .line 299
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 300
    .line 301
    move-object/from16 v33, v3

    .line 302
    .line 303
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 304
    .line 305
    .line 306
    move-result-wide v4

    .line 307
    const/4 v1, 0x0

    .line 308
    invoke-direct {v3, v4, v5, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 312
    .line 313
    .line 314
    move-result v38

    .line 315
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 316
    .line 317
    .line 318
    move-result v39

    .line 319
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 320
    .line 321
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    const v0, 0x41b4e148    # 22.61f

    .line 325
    .line 326
    .line 327
    const v1, 0x4197c28f    # 18.97f

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 331
    .line 332
    .line 333
    const v0, 0x4158a3d7    # 13.54f

    .line 334
    .line 335
    .line 336
    const v1, 0x411e6666    # 9.9f

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 340
    .line 341
    .line 342
    const v5, -0x4047ae14    # -1.44f

    .line 343
    .line 344
    .line 345
    const/high16 v6, -0x3f200000    # -7.0f

    .line 346
    .line 347
    const v1, 0x3f6e147b    # 0.93f

    .line 348
    .line 349
    .line 350
    const v2, -0x3fea3d71    # -2.34f

    .line 351
    .line 352
    .line 353
    const v3, 0x3ee66666    # 0.45f

    .line 354
    .line 355
    .line 356
    const v4, -0x3f5ccccd    # -5.1f

    .line 357
    .line 358
    .line 359
    move-object v0, v7

    .line 360
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 361
    .line 362
    .line 363
    const v5, 0x406ae148    # 3.67f

    .line 364
    .line 365
    .line 366
    const/high16 v6, 0x40100000    # 2.25f

    .line 367
    .line 368
    const v1, 0x411ccccd    # 9.8f

    .line 369
    .line 370
    .line 371
    const v2, 0x3f19999a    # 0.6f

    .line 372
    .line 373
    .line 374
    const v3, 0x40c70a3d    # 6.22f

    .line 375
    .line 376
    .line 377
    const v4, 0x3ec7ae14    # 0.39f

    .line 378
    .line 379
    .line 380
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 381
    .line 382
    .line 383
    const v0, 0x40c28f5c    # 6.08f

    .line 384
    .line 385
    .line 386
    const/high16 v1, 0x40f00000    # 7.5f

    .line 387
    .line 388
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 392
    .line 393
    .line 394
    const/high16 v0, 0x40100000    # 2.25f

    .line 395
    .line 396
    const v1, 0x406ae148    # 3.67f

    .line 397
    .line 398
    .line 399
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 400
    .line 401
    .line 402
    const v5, 0x4039999a    # 2.9f

    .line 403
    .line 404
    .line 405
    const v6, 0x414170a4    # 12.09f

    .line 406
    .line 407
    .line 408
    const v1, 0x3ec7ae14    # 0.39f

    .line 409
    .line 410
    .line 411
    const v2, 0x40c6b852    # 6.21f

    .line 412
    .line 413
    .line 414
    const v3, 0x3f19999a    # 0.6f

    .line 415
    .line 416
    .line 417
    const v4, 0x411ca3d7    # 9.79f

    .line 418
    .line 419
    .line 420
    move-object v0, v7

    .line 421
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 422
    .line 423
    .line 424
    const v5, 0x40dc7ae1    # 6.89f

    .line 425
    .line 426
    .line 427
    const v6, 0x3fbd70a4    # 1.48f

    .line 428
    .line 429
    .line 430
    const v1, 0x3fee147b    # 1.86f

    .line 431
    .line 432
    .line 433
    const v2, 0x3fee147b    # 1.86f

    .line 434
    .line 435
    .line 436
    const v3, 0x40923d71    # 4.57f

    .line 437
    .line 438
    .line 439
    const v4, 0x40166666    # 2.35f

    .line 440
    .line 441
    .line 442
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 443
    .line 444
    .line 445
    const v0, 0x4111c28f    # 9.11f

    .line 446
    .line 447
    .line 448
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 449
    .line 450
    .line 451
    const v5, 0x3fb47ae1    # 1.41f

    .line 452
    .line 453
    .line 454
    const/4 v6, 0x0

    .line 455
    const v1, 0x3ec7ae14    # 0.39f

    .line 456
    .line 457
    .line 458
    const v2, 0x3ec7ae14    # 0.39f

    .line 459
    .line 460
    .line 461
    const v3, 0x3f828f5c    # 1.02f

    .line 462
    .line 463
    .line 464
    const v4, 0x3ec7ae14    # 0.39f

    .line 465
    .line 466
    .line 467
    move-object v0, v7

    .line 468
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 469
    .line 470
    .line 471
    const v0, 0x40133333    # 2.3f

    .line 472
    .line 473
    .line 474
    const v1, -0x3feccccd    # -2.3f

    .line 475
    .line 476
    .line 477
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 478
    .line 479
    .line 480
    const/4 v5, 0x0

    .line 481
    const v6, -0x404b851f    # -1.41f

    .line 482
    .line 483
    .line 484
    const v1, 0x3ecccccd    # 0.4f

    .line 485
    .line 486
    .line 487
    const v2, -0x413d70a4    # -0.38f

    .line 488
    .line 489
    .line 490
    const v3, 0x3ecccccd    # 0.4f

    .line 491
    .line 492
    .line 493
    const v4, -0x407d70a4    # -1.02f

    .line 494
    .line 495
    .line 496
    move-object v0, v7

    .line 497
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 501
    .line 502
    .line 503
    const v0, 0x419ce148    # 19.61f

    .line 504
    .line 505
    .line 506
    const v1, 0x41a48f5c    # 20.57f

    .line 507
    .line 508
    .line 509
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 510
    .line 511
    .line 512
    const v0, -0x3ee8a3d7    # -9.46f

    .line 513
    .line 514
    .line 515
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 516
    .line 517
    .line 518
    const/high16 v5, -0x40000000    # -2.0f

    .line 519
    .line 520
    const v6, 0x3f51eb85    # 0.82f

    .line 521
    .line 522
    .line 523
    const v1, -0x40e3d70a    # -0.61f

    .line 524
    .line 525
    .line 526
    const v2, 0x3ee66666    # 0.45f

    .line 527
    .line 528
    .line 529
    const v3, -0x405ae148    # -1.29f

    .line 530
    .line 531
    .line 532
    const v4, 0x3f3851ec    # 0.72f

    .line 533
    .line 534
    .line 535
    move-object v0, v7

    .line 536
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 537
    .line 538
    .line 539
    const v5, -0x3f8ae148    # -3.83f

    .line 540
    .line 541
    .line 542
    const/high16 v6, -0x40600000    # -1.25f

    .line 543
    .line 544
    const v1, -0x4051eb85    # -1.36f

    .line 545
    .line 546
    .line 547
    const v2, 0x3e4ccccd    # 0.2f

    .line 548
    .line 549
    .line 550
    const v3, -0x3fcd70a4    # -2.79f

    .line 551
    .line 552
    .line 553
    const v4, -0x41a8f5c3    # -0.21f

    .line 554
    .line 555
    .line 556
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 557
    .line 558
    .line 559
    const v5, -0x40570a3d    # -1.32f

    .line 560
    .line 561
    .line 562
    const v6, -0x3fa3d70a    # -3.44f

    .line 563
    .line 564
    .line 565
    const v1, -0x408ccccd    # -0.95f

    .line 566
    .line 567
    .line 568
    const v2, -0x408f5c29    # -0.94f

    .line 569
    .line 570
    .line 571
    const v3, -0x404e147b    # -1.39f

    .line 572
    .line 573
    .line 574
    const v4, -0x3ff33333    # -2.2f

    .line 575
    .line 576
    .line 577
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 578
    .line 579
    .line 580
    const v0, 0x4045c28f    # 3.09f

    .line 581
    .line 582
    .line 583
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 584
    .line 585
    .line 586
    const v0, 0x4087ae14    # 4.24f

    .line 587
    .line 588
    .line 589
    const v1, -0x3f7851ec    # -4.24f

    .line 590
    .line 591
    .line 592
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 593
    .line 594
    .line 595
    const v0, 0x40e7ae14    # 7.24f

    .line 596
    .line 597
    .line 598
    const/high16 v1, 0x40400000    # 3.0f

    .line 599
    .line 600
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 601
    .line 602
    .line 603
    const v5, 0x405c28f6    # 3.44f

    .line 604
    .line 605
    .line 606
    const v6, 0x3fa7ae14    # 1.31f

    .line 607
    .line 608
    .line 609
    const v1, 0x3f9eb852    # 1.24f

    .line 610
    .line 611
    .line 612
    const v2, -0x4270a3d7    # -0.07f

    .line 613
    .line 614
    .line 615
    const v3, 0x401f5c29    # 2.49f

    .line 616
    .line 617
    .line 618
    const v4, 0x3ebd70a4    # 0.37f

    .line 619
    .line 620
    .line 621
    move-object v0, v7

    .line 622
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 623
    .line 624
    .line 625
    const v5, 0x3f9eb852    # 1.24f

    .line 626
    .line 627
    .line 628
    const v6, 0x407d70a4    # 3.96f

    .line 629
    .line 630
    .line 631
    const v1, 0x3f8a3d71    # 1.08f

    .line 632
    .line 633
    .line 634
    const v2, 0x3f8a3d71    # 1.08f

    .line 635
    .line 636
    .line 637
    const v3, 0x3fbeb852    # 1.49f

    .line 638
    .line 639
    .line 640
    const v4, 0x40247ae1    # 2.57f

    .line 641
    .line 642
    .line 643
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 644
    .line 645
    .line 646
    const v5, -0x409eb852    # -0.88f

    .line 647
    .line 648
    .line 649
    const v6, 0x3ff9999a    # 1.95f

    .line 650
    .line 651
    .line 652
    const v1, -0x420a3d71    # -0.12f

    .line 653
    .line 654
    .line 655
    const v2, 0x3f333333    # 0.7f

    .line 656
    .line 657
    .line 658
    const v3, -0x4128f5c3    # -0.42f

    .line 659
    .line 660
    .line 661
    const v4, 0x3fae147b    # 1.36f

    .line 662
    .line 663
    .line 664
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 665
    .line 666
    .line 667
    const v0, 0x41173333    # 9.45f

    .line 668
    .line 669
    .line 670
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 671
    .line 672
    .line 673
    const v0, 0x3f666666    # 0.9f

    .line 674
    .line 675
    .line 676
    const v1, -0x409eb852    # -0.88f

    .line 677
    .line 678
    .line 679
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 686
    .line 687
    .line 688
    move-result-object v30

    .line 689
    const/16 v44, 0x3800

    .line 690
    .line 691
    const/16 v45, 0x0

    .line 692
    .line 693
    const/high16 v34, 0x3f800000    # 1.0f

    .line 694
    .line 695
    const/high16 v36, 0x3f800000    # 1.0f

    .line 696
    .line 697
    const/16 v35, 0x0

    .line 698
    .line 699
    const/high16 v37, 0x3f800000    # 1.0f

    .line 700
    .line 701
    const/high16 v40, 0x3f800000    # 1.0f

    .line 702
    .line 703
    const/16 v41, 0x0

    .line 704
    .line 705
    const/16 v42, 0x0

    .line 706
    .line 707
    const/16 v43, 0x0

    .line 708
    .line 709
    const-string v32, ""

    .line 710
    .line 711
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    sput-object v0, Landroidx/compose/material/icons/twotone/BuildKt;->_build:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 720
    .line 721
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    return-object v0
.end method
