.class public final Landroidx/compose/material/icons/outlined/BuildKt;
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

.method public static final getBuild(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29
    .param p0    # Landroidx/compose/material/icons/Icons$Outlined;
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
    sget-object v0, Landroidx/compose/material/icons/outlined/BuildKt;->_build:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    move-object v12, v1

    .line 19
    const/high16 v0, 0x41c00000    # 24.0f

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/16 v10, 0x60

    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    const/high16 v5, 0x41c00000    # 24.0f

    .line 33
    .line 34
    const/high16 v6, 0x41c00000    # 24.0f

    .line 35
    .line 36
    const-wide/16 v7, 0x0

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const-string v2, "Outlined.Build"

    .line 40
    .line 41
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 45
    .line 46
    .line 47
    move-result v14

    .line 48
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 49
    .line 50
    move-object/from16 v16, v0

    .line 51
    .line 52
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 65
    .line 66
    .line 67
    move-result v21

    .line 68
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 71
    .line 72
    .line 73
    move-result v22

    .line 74
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    .line 76
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const v0, 0x41b4e148    # 22.61f

    .line 80
    .line 81
    .line 82
    const v1, 0x4197eb85    # 18.99f

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const v0, -0x3eeeb852    # -9.08f

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    .line 93
    .line 94
    const v5, -0x4047ae14    # -1.44f

    .line 95
    .line 96
    .line 97
    const/high16 v6, -0x3f200000    # -7.0f

    .line 98
    .line 99
    const v1, 0x3f6e147b    # 0.93f

    .line 100
    .line 101
    .line 102
    const v2, -0x3fea3d71    # -2.34f

    .line 103
    .line 104
    .line 105
    const v3, 0x3ee66666    # 0.45f

    .line 106
    .line 107
    .line 108
    const v4, -0x3f5ccccd    # -5.1f

    .line 109
    .line 110
    .line 111
    move-object v0, v7

    .line 112
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    .line 114
    .line 115
    const v5, 0x406a3d71    # 3.66f

    .line 116
    .line 117
    .line 118
    const v6, 0x4010a3d7    # 2.26f

    .line 119
    .line 120
    .line 121
    const v1, 0x411ca3d7    # 9.79f

    .line 122
    .line 123
    .line 124
    const v2, 0x3f1c28f6    # 0.61f

    .line 125
    .line 126
    .line 127
    const v3, 0x40c6b852    # 6.21f

    .line 128
    .line 129
    .line 130
    const v4, 0x3ecccccd    # 0.4f

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    .line 135
    .line 136
    const/high16 v0, 0x40f00000    # 7.5f

    .line 137
    .line 138
    const v1, 0x40c3851f    # 6.11f

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 142
    .line 143
    .line 144
    const v0, 0x40c28f5c    # 6.08f

    .line 145
    .line 146
    .line 147
    const v1, 0x40f0a3d7    # 7.52f

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 151
    .line 152
    .line 153
    const/high16 v0, 0x40100000    # 2.25f

    .line 154
    .line 155
    const v1, 0x406c28f6    # 3.69f

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 159
    .line 160
    .line 161
    const v5, 0x4039999a    # 2.9f

    .line 162
    .line 163
    .line 164
    const v6, 0x4141c28f    # 12.11f

    .line 165
    .line 166
    .line 167
    const v1, 0x3ec7ae14    # 0.39f

    .line 168
    .line 169
    .line 170
    const v2, 0x40c75c29    # 6.23f

    .line 171
    .line 172
    .line 173
    const v3, 0x3f19999a    # 0.6f

    .line 174
    .line 175
    .line 176
    const v4, 0x411d1eb8    # 9.82f

    .line 177
    .line 178
    .line 179
    move-object v0, v7

    .line 180
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 181
    .line 182
    .line 183
    const v5, 0x40dc7ae1    # 6.89f

    .line 184
    .line 185
    .line 186
    const v6, 0x3fbd70a4    # 1.48f

    .line 187
    .line 188
    .line 189
    const v1, 0x3fee147b    # 1.86f

    .line 190
    .line 191
    .line 192
    const v2, 0x3fee147b    # 1.86f

    .line 193
    .line 194
    .line 195
    const v3, 0x40923d71    # 4.57f

    .line 196
    .line 197
    .line 198
    const v4, 0x40166666    # 2.35f

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 202
    .line 203
    .line 204
    const v0, 0x4111c28f    # 9.11f

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 208
    .line 209
    .line 210
    const v5, 0x3fb47ae1    # 1.41f

    .line 211
    .line 212
    .line 213
    const/4 v6, 0x0

    .line 214
    const v1, 0x3ec7ae14    # 0.39f

    .line 215
    .line 216
    .line 217
    const v2, 0x3ec7ae14    # 0.39f

    .line 218
    .line 219
    .line 220
    const v3, 0x3f828f5c    # 1.02f

    .line 221
    .line 222
    .line 223
    const v4, 0x3ec7ae14    # 0.39f

    .line 224
    .line 225
    .line 226
    move-object v0, v7

    .line 227
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 228
    .line 229
    .line 230
    const v0, 0x40133333    # 2.3f

    .line 231
    .line 232
    .line 233
    const v1, -0x3feccccd    # -2.3f

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 237
    .line 238
    .line 239
    const/4 v5, 0x0

    .line 240
    const v6, -0x404b851f    # -1.41f

    .line 241
    .line 242
    .line 243
    const v1, 0x3ecccccd    # 0.4f

    .line 244
    .line 245
    .line 246
    const v2, -0x413d70a4    # -0.38f

    .line 247
    .line 248
    .line 249
    const v3, 0x3ecccccd    # 0.4f

    .line 250
    .line 251
    .line 252
    const v4, -0x407eb852    # -1.01f

    .line 253
    .line 254
    .line 255
    move-object v0, v7

    .line 256
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 260
    .line 261
    .line 262
    const v0, 0x419ce148    # 19.61f

    .line 263
    .line 264
    .line 265
    const v1, 0x41a4b852    # 20.59f

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 269
    .line 270
    .line 271
    const v0, -0x3ee8a3d7    # -9.46f

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 275
    .line 276
    .line 277
    const/high16 v5, -0x40000000    # -2.0f

    .line 278
    .line 279
    const v6, 0x3f51eb85    # 0.82f

    .line 280
    .line 281
    .line 282
    const v1, -0x40e3d70a    # -0.61f

    .line 283
    .line 284
    .line 285
    const v2, 0x3ee66666    # 0.45f

    .line 286
    .line 287
    .line 288
    const v3, -0x405ae148    # -1.29f

    .line 289
    .line 290
    .line 291
    const v4, 0x3f3851ec    # 0.72f

    .line 292
    .line 293
    .line 294
    move-object v0, v7

    .line 295
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 296
    .line 297
    .line 298
    const v5, -0x3f8ae148    # -3.83f

    .line 299
    .line 300
    .line 301
    const/high16 v6, -0x40600000    # -1.25f

    .line 302
    .line 303
    const v1, -0x4051eb85    # -1.36f

    .line 304
    .line 305
    .line 306
    const v2, 0x3e4ccccd    # 0.2f

    .line 307
    .line 308
    .line 309
    const v3, -0x3fcd70a4    # -2.79f

    .line 310
    .line 311
    .line 312
    const v4, -0x41a8f5c3    # -0.21f

    .line 313
    .line 314
    .line 315
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 316
    .line 317
    .line 318
    const/high16 v5, 0x40400000    # 3.0f

    .line 319
    .line 320
    const v6, 0x40e851ec    # 7.26f

    .line 321
    .line 322
    .line 323
    const v1, 0x4057ae14    # 3.37f

    .line 324
    .line 325
    .line 326
    const v2, 0x411c28f6    # 9.76f

    .line 327
    .line 328
    .line 329
    const v3, 0x403b851f    # 2.93f

    .line 330
    .line 331
    .line 332
    const/high16 v4, 0x41080000    # 8.5f

    .line 333
    .line 334
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 335
    .line 336
    .line 337
    const v0, 0x4045c28f    # 3.09f

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 341
    .line 342
    .line 343
    const v0, 0x4087ae14    # 4.24f

    .line 344
    .line 345
    .line 346
    const v1, -0x3f7851ec    # -4.24f

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 350
    .line 351
    .line 352
    const v0, -0x3fba3d71    # -3.09f

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 356
    .line 357
    .line 358
    const v5, 0x405c28f6    # 3.44f

    .line 359
    .line 360
    .line 361
    const v6, 0x3fa7ae14    # 1.31f

    .line 362
    .line 363
    .line 364
    const v1, 0x3f9eb852    # 1.24f

    .line 365
    .line 366
    .line 367
    const v2, -0x4270a3d7    # -0.07f

    .line 368
    .line 369
    .line 370
    const v3, 0x401f5c29    # 2.49f

    .line 371
    .line 372
    .line 373
    const v4, 0x3ebd70a4    # 0.37f

    .line 374
    .line 375
    .line 376
    move-object v0, v7

    .line 377
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 378
    .line 379
    .line 380
    const v5, 0x3f9eb852    # 1.24f

    .line 381
    .line 382
    .line 383
    const v6, 0x407d70a4    # 3.96f

    .line 384
    .line 385
    .line 386
    const v1, 0x3f8a3d71    # 1.08f

    .line 387
    .line 388
    .line 389
    const v2, 0x3f8a3d71    # 1.08f

    .line 390
    .line 391
    .line 392
    const v3, 0x3fbeb852    # 1.49f

    .line 393
    .line 394
    .line 395
    const v4, 0x40247ae1    # 2.57f

    .line 396
    .line 397
    .line 398
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 399
    .line 400
    .line 401
    const v5, -0x409eb852    # -0.88f

    .line 402
    .line 403
    .line 404
    const v6, 0x3ffae148    # 1.96f

    .line 405
    .line 406
    .line 407
    const v1, -0x420a3d71    # -0.12f

    .line 408
    .line 409
    .line 410
    const v2, 0x3f35c28f    # 0.71f

    .line 411
    .line 412
    .line 413
    const v3, -0x4128f5c3    # -0.42f

    .line 414
    .line 415
    .line 416
    const v4, 0x3faf5c29    # 1.37f

    .line 417
    .line 418
    .line 419
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 420
    .line 421
    .line 422
    const v0, 0x41173333    # 9.45f

    .line 423
    .line 424
    .line 425
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 426
    .line 427
    .line 428
    const v0, -0x409eb852    # -0.88f

    .line 429
    .line 430
    .line 431
    const v1, 0x3f63d70a    # 0.89f

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object v13

    .line 444
    const/16 v27, 0x3800

    .line 445
    .line 446
    const/16 v28, 0x0

    .line 447
    .line 448
    const/high16 v17, 0x3f800000    # 1.0f

    .line 449
    .line 450
    const/high16 v19, 0x3f800000    # 1.0f

    .line 451
    .line 452
    const/16 v18, 0x0

    .line 453
    .line 454
    const/high16 v20, 0x3f800000    # 1.0f

    .line 455
    .line 456
    const/high16 v23, 0x3f800000    # 1.0f

    .line 457
    .line 458
    const/16 v24, 0x0

    .line 459
    .line 460
    const/16 v25, 0x0

    .line 461
    .line 462
    const/16 v26, 0x0

    .line 463
    .line 464
    const-string v15, ""

    .line 465
    .line 466
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    sput-object v0, Landroidx/compose/material/icons/outlined/BuildKt;->_build:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 475
    .line 476
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    return-object v0
.end method
