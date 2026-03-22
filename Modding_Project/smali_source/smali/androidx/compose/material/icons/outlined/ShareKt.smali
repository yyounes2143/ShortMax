.class public final Landroidx/compose/material/icons/outlined/ShareKt;
.super Ljava/lang/Object;
.source "Share.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _share:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getShare(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/outlined/ShareKt;->_share:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Outlined.Share"

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
    const v0, 0x4180a3d7    # 16.08f

    .line 80
    .line 81
    .line 82
    const/high16 v1, 0x41900000    # 18.0f

    .line 83
    .line 84
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    .line 86
    .line 87
    const v5, -0x40051eb8    # -1.96f

    .line 88
    .line 89
    .line 90
    const v6, 0x3f451eb8    # 0.77f

    .line 91
    .line 92
    .line 93
    const v1, -0x40bd70a4    # -0.76f

    .line 94
    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    const v3, -0x4047ae14    # -1.44f

    .line 98
    .line 99
    .line 100
    const v4, 0x3e99999a    # 0.3f

    .line 101
    .line 102
    .line 103
    move-object v0, v7

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    .line 106
    .line 107
    const v0, 0x410e8f5c    # 8.91f

    .line 108
    .line 109
    .line 110
    const v1, 0x414b3333    # 12.7f

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    .line 115
    .line 116
    const v5, 0x3db851ec    # 0.09f

    .line 117
    .line 118
    .line 119
    const v6, -0x40cccccd    # -0.7f

    .line 120
    .line 121
    .line 122
    const v1, 0x3d4ccccd    # 0.05f

    .line 123
    .line 124
    .line 125
    const v2, -0x41947ae1    # -0.23f

    .line 126
    .line 127
    .line 128
    const v3, 0x3db851ec    # 0.09f

    .line 129
    .line 130
    .line 131
    const v4, -0x41147ae1    # -0.46f

    .line 132
    .line 133
    .line 134
    move-object v0, v7

    .line 135
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    .line 137
    .line 138
    const v0, -0x4247ae14    # -0.09f

    .line 139
    .line 140
    .line 141
    const v1, -0x40cccccd    # -0.7f

    .line 142
    .line 143
    .line 144
    const v2, -0x42dc28f6    # -0.04f

    .line 145
    .line 146
    .line 147
    const v3, -0x410f5c29    # -0.47f

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 151
    .line 152
    .line 153
    const v0, 0x40e1999a    # 7.05f

    .line 154
    .line 155
    .line 156
    const v1, -0x3f7c7ae1    # -4.11f

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 160
    .line 161
    .line 162
    const v5, 0x40028f5c    # 2.04f

    .line 163
    .line 164
    .line 165
    const v6, 0x3f4f5c29    # 0.81f

    .line 166
    .line 167
    .line 168
    const v1, 0x3f0a3d71    # 0.54f

    .line 169
    .line 170
    .line 171
    const/high16 v2, 0x3f000000    # 0.5f

    .line 172
    .line 173
    const/high16 v3, 0x3fa00000    # 1.25f

    .line 174
    .line 175
    const v4, 0x3f4f5c29    # 0.81f

    .line 176
    .line 177
    .line 178
    move-object v0, v7

    .line 179
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 180
    .line 181
    .line 182
    const/high16 v5, 0x40400000    # 3.0f

    .line 183
    .line 184
    const/high16 v6, -0x3fc00000    # -3.0f

    .line 185
    .line 186
    const v1, 0x3fd47ae1    # 1.66f

    .line 187
    .line 188
    .line 189
    const/4 v2, 0x0

    .line 190
    const/high16 v3, 0x40400000    # 3.0f

    .line 191
    .line 192
    const v4, -0x40547ae1    # -1.34f

    .line 193
    .line 194
    .line 195
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 196
    .line 197
    .line 198
    const v0, -0x40547ae1    # -1.34f

    .line 199
    .line 200
    .line 201
    const/high16 v1, -0x3fc00000    # -3.0f

    .line 202
    .line 203
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 204
    .line 205
    .line 206
    const v0, 0x3fab851f    # 1.34f

    .line 207
    .line 208
    .line 209
    const/high16 v1, 0x40400000    # 3.0f

    .line 210
    .line 211
    const/high16 v2, -0x3fc00000    # -3.0f

    .line 212
    .line 213
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 214
    .line 215
    .line 216
    const v5, 0x3db851ec    # 0.09f

    .line 217
    .line 218
    .line 219
    const v6, 0x3f333333    # 0.7f

    .line 220
    .line 221
    .line 222
    const/4 v1, 0x0

    .line 223
    const v2, 0x3e75c28f    # 0.24f

    .line 224
    .line 225
    .line 226
    const v3, 0x3d23d70a    # 0.04f

    .line 227
    .line 228
    .line 229
    const v4, 0x3ef0a3d7    # 0.47f

    .line 230
    .line 231
    .line 232
    move-object v0, v7

    .line 233
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 234
    .line 235
    .line 236
    const v0, 0x4100a3d7    # 8.04f

    .line 237
    .line 238
    .line 239
    const v1, 0x411cf5c3    # 9.81f

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 243
    .line 244
    .line 245
    const/high16 v5, 0x40c00000    # 6.0f

    .line 246
    .line 247
    const/high16 v6, 0x41100000    # 9.0f

    .line 248
    .line 249
    const/high16 v1, 0x40f00000    # 7.5f

    .line 250
    .line 251
    const v2, 0x4114f5c3    # 9.31f

    .line 252
    .line 253
    .line 254
    const v3, 0x40d947ae    # 6.79f

    .line 255
    .line 256
    .line 257
    const/high16 v4, 0x41100000    # 9.0f

    .line 258
    .line 259
    move-object v0, v7

    .line 260
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 261
    .line 262
    .line 263
    const/high16 v5, -0x3fc00000    # -3.0f

    .line 264
    .line 265
    const/high16 v6, 0x40400000    # 3.0f

    .line 266
    .line 267
    const v1, -0x402b851f    # -1.66f

    .line 268
    .line 269
    .line 270
    const/4 v2, 0x0

    .line 271
    const/high16 v3, -0x3fc00000    # -3.0f

    .line 272
    .line 273
    const v4, 0x3fab851f    # 1.34f

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 277
    .line 278
    .line 279
    const v0, 0x3fab851f    # 1.34f

    .line 280
    .line 281
    .line 282
    const/high16 v1, 0x40400000    # 3.0f

    .line 283
    .line 284
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 285
    .line 286
    .line 287
    const v5, 0x40028f5c    # 2.04f

    .line 288
    .line 289
    .line 290
    const v6, -0x40b0a3d7    # -0.81f

    .line 291
    .line 292
    .line 293
    const v1, 0x3f4a3d71    # 0.79f

    .line 294
    .line 295
    .line 296
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 297
    .line 298
    const v4, -0x416147ae    # -0.31f

    .line 299
    .line 300
    .line 301
    move-object v0, v7

    .line 302
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 303
    .line 304
    .line 305
    const v0, 0x40e3d70a    # 7.12f

    .line 306
    .line 307
    .line 308
    const v1, 0x40851eb8    # 4.16f

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 312
    .line 313
    .line 314
    const v5, -0x425c28f6    # -0.08f

    .line 315
    .line 316
    .line 317
    const v6, 0x3f266666    # 0.65f

    .line 318
    .line 319
    .line 320
    const v1, -0x42b33333    # -0.05f

    .line 321
    .line 322
    .line 323
    const v2, 0x3e570a3d    # 0.21f

    .line 324
    .line 325
    .line 326
    const v3, -0x425c28f6    # -0.08f

    .line 327
    .line 328
    .line 329
    const v4, 0x3edc28f6    # 0.43f

    .line 330
    .line 331
    .line 332
    move-object v0, v7

    .line 333
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 334
    .line 335
    .line 336
    const v5, 0x403ae148    # 2.92f

    .line 337
    .line 338
    .line 339
    const v6, 0x403ae148    # 2.92f

    .line 340
    .line 341
    .line 342
    const/4 v1, 0x0

    .line 343
    const v2, 0x3fce147b    # 1.61f

    .line 344
    .line 345
    .line 346
    const v3, 0x3fa7ae14    # 1.31f

    .line 347
    .line 348
    .line 349
    const v4, 0x403ae148    # 2.92f

    .line 350
    .line 351
    .line 352
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 353
    .line 354
    .line 355
    const v0, -0x405851ec    # -1.31f

    .line 356
    .line 357
    .line 358
    const v1, -0x3fc51eb8    # -2.92f

    .line 359
    .line 360
    .line 361
    const v2, 0x403ae148    # 2.92f

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 365
    .line 366
    .line 367
    const v5, -0x3fc51eb8    # -2.92f

    .line 368
    .line 369
    .line 370
    const v6, -0x3fc51eb8    # -2.92f

    .line 371
    .line 372
    .line 373
    const/4 v1, 0x0

    .line 374
    const v2, -0x4031eb85    # -1.61f

    .line 375
    .line 376
    .line 377
    const v3, -0x405851ec    # -1.31f

    .line 378
    .line 379
    .line 380
    const v4, -0x3fc51eb8    # -2.92f

    .line 381
    .line 382
    .line 383
    move-object v0, v7

    .line 384
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 388
    .line 389
    .line 390
    const/high16 v0, 0x40800000    # 4.0f

    .line 391
    .line 392
    const/high16 v1, 0x41900000    # 18.0f

    .line 393
    .line 394
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 395
    .line 396
    .line 397
    const/high16 v5, 0x3f800000    # 1.0f

    .line 398
    .line 399
    const/high16 v6, 0x3f800000    # 1.0f

    .line 400
    .line 401
    const v1, 0x3f0ccccd    # 0.55f

    .line 402
    .line 403
    .line 404
    const/4 v2, 0x0

    .line 405
    const/high16 v3, 0x3f800000    # 1.0f

    .line 406
    .line 407
    const v4, 0x3ee66666    # 0.45f

    .line 408
    .line 409
    .line 410
    move-object v0, v7

    .line 411
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 412
    .line 413
    .line 414
    const v0, -0x4119999a    # -0.45f

    .line 415
    .line 416
    .line 417
    const/high16 v1, -0x40800000    # -1.0f

    .line 418
    .line 419
    const/high16 v2, 0x3f800000    # 1.0f

    .line 420
    .line 421
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 425
    .line 426
    .line 427
    const v0, 0x3ee66666    # 0.45f

    .line 428
    .line 429
    .line 430
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 434
    .line 435
    .line 436
    const/high16 v0, 0x40c00000    # 6.0f

    .line 437
    .line 438
    const/high16 v1, 0x41500000    # 13.0f

    .line 439
    .line 440
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 441
    .line 442
    .line 443
    const/high16 v5, -0x40800000    # -1.0f

    .line 444
    .line 445
    const/high16 v6, -0x40800000    # -1.0f

    .line 446
    .line 447
    const v1, -0x40f33333    # -0.55f

    .line 448
    .line 449
    .line 450
    const/4 v2, 0x0

    .line 451
    const/high16 v3, -0x40800000    # -1.0f

    .line 452
    .line 453
    const v4, -0x4119999a    # -0.45f

    .line 454
    .line 455
    .line 456
    move-object v0, v7

    .line 457
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 458
    .line 459
    .line 460
    const v0, 0x3ee66666    # 0.45f

    .line 461
    .line 462
    .line 463
    const/high16 v1, -0x40800000    # -1.0f

    .line 464
    .line 465
    const/high16 v2, 0x3f800000    # 1.0f

    .line 466
    .line 467
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 468
    .line 469
    .line 470
    const/high16 v1, 0x3f800000    # 1.0f

    .line 471
    .line 472
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 473
    .line 474
    .line 475
    const v0, -0x4119999a    # -0.45f

    .line 476
    .line 477
    .line 478
    const/high16 v1, -0x40800000    # -1.0f

    .line 479
    .line 480
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 484
    .line 485
    .line 486
    const v0, 0x41a028f6    # 20.02f

    .line 487
    .line 488
    .line 489
    const/high16 v1, 0x41900000    # 18.0f

    .line 490
    .line 491
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 492
    .line 493
    .line 494
    const v1, -0x40f33333    # -0.55f

    .line 495
    .line 496
    .line 497
    const/4 v2, 0x0

    .line 498
    move-object v0, v7

    .line 499
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 500
    .line 501
    .line 502
    const v0, 0x3ee66666    # 0.45f

    .line 503
    .line 504
    .line 505
    const/high16 v1, -0x40800000    # -1.0f

    .line 506
    .line 507
    const/high16 v2, 0x3f800000    # 1.0f

    .line 508
    .line 509
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 510
    .line 511
    .line 512
    const/high16 v1, 0x3f800000    # 1.0f

    .line 513
    .line 514
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 515
    .line 516
    .line 517
    const v0, -0x4119999a    # -0.45f

    .line 518
    .line 519
    .line 520
    const/high16 v1, -0x40800000    # -1.0f

    .line 521
    .line 522
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 529
    .line 530
    .line 531
    move-result-object v13

    .line 532
    const/16 v27, 0x3800

    .line 533
    .line 534
    const/16 v28, 0x0

    .line 535
    .line 536
    const/high16 v17, 0x3f800000    # 1.0f

    .line 537
    .line 538
    const/high16 v19, 0x3f800000    # 1.0f

    .line 539
    .line 540
    const/16 v18, 0x0

    .line 541
    .line 542
    const/high16 v20, 0x3f800000    # 1.0f

    .line 543
    .line 544
    const/high16 v23, 0x3f800000    # 1.0f

    .line 545
    .line 546
    const/16 v24, 0x0

    .line 547
    .line 548
    const/16 v25, 0x0

    .line 549
    .line 550
    const/16 v26, 0x0

    .line 551
    .line 552
    const-string v15, ""

    .line 553
    .line 554
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    sput-object v0, Landroidx/compose/material/icons/outlined/ShareKt;->_share:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 563
    .line 564
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    return-object v0
.end method
