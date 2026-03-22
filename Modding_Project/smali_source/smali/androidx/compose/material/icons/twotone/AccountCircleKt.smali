.class public final Landroidx/compose/material/icons/twotone/AccountCircleKt;
.super Ljava/lang/Object;
.source "AccountCircle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _accountCircle:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getAccountCircle(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/twotone/AccountCircleKt;->_accountCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "TwoTone.AccountCircle"

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
    const/high16 v3, 0x40800000    # 4.0f

    .line 82
    .line 83
    const/high16 v4, 0x41400000    # 12.0f

    .line 84
    .line 85
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const/high16 v8, -0x3f000000    # -8.0f

    .line 89
    .line 90
    const/high16 v9, 0x41000000    # 8.0f

    .line 91
    .line 92
    const v4, -0x3f72e148    # -4.41f

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    const/high16 v6, -0x3f000000    # -8.0f

    .line 97
    .line 98
    const v7, 0x4065c28f    # 3.59f

    .line 99
    .line 100
    .line 101
    move-object v3, v10

    .line 102
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    .line 104
    .line 105
    const v8, 0x3fd1eb85    # 1.64f

    .line 106
    .line 107
    .line 108
    const v9, 0x409a8f5c    # 4.83f

    .line 109
    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    const v5, 0x3fe8f5c3    # 1.82f

    .line 113
    .line 114
    .line 115
    const v6, 0x3f1eb852    # 0.62f

    .line 116
    .line 117
    .line 118
    const v7, 0x405f5c29    # 3.49f

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    .line 123
    .line 124
    const v8, 0x40cb851f    # 6.36f

    .line 125
    .line 126
    .line 127
    const v9, -0x3feae148    # -2.33f

    .line 128
    .line 129
    .line 130
    const v4, 0x3fb70a3d    # 1.43f

    .line 131
    .line 132
    .line 133
    const v5, -0x402147ae    # -1.74f

    .line 134
    .line 135
    .line 136
    const v6, 0x409ccccd    # 4.9f

    .line 137
    .line 138
    .line 139
    const v7, -0x3feae148    # -2.33f

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 143
    .line 144
    .line 145
    const v3, 0x40cb851f    # 6.36f

    .line 146
    .line 147
    .line 148
    const v4, 0x40151eb8    # 2.33f

    .line 149
    .line 150
    .line 151
    const v5, 0x3f170a3d    # 0.59f

    .line 152
    .line 153
    .line 154
    const v6, 0x409dc28f    # 4.93f

    .line 155
    .line 156
    .line 157
    invoke-virtual {v10, v6, v5, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 158
    .line 159
    .line 160
    const/high16 v8, 0x41a00000    # 20.0f

    .line 161
    .line 162
    const/high16 v9, 0x41400000    # 12.0f

    .line 163
    .line 164
    const v4, 0x419b0a3d    # 19.38f

    .line 165
    .line 166
    .line 167
    const v5, 0x4177d70a    # 15.49f

    .line 168
    .line 169
    .line 170
    const/high16 v6, 0x41a00000    # 20.0f

    .line 171
    .line 172
    const v7, 0x415d1eb8    # 13.82f

    .line 173
    .line 174
    .line 175
    move-object v3, v10

    .line 176
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 177
    .line 178
    .line 179
    const/high16 v8, -0x3f000000    # -8.0f

    .line 180
    .line 181
    const/high16 v9, -0x3f000000    # -8.0f

    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    const v5, -0x3f72e148    # -4.41f

    .line 185
    .line 186
    .line 187
    const v6, -0x3f9a3d71    # -3.59f

    .line 188
    .line 189
    .line 190
    const/high16 v7, -0x3f000000    # -8.0f

    .line 191
    .line 192
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 196
    .line 197
    .line 198
    const/high16 v3, 0x41500000    # 13.0f

    .line 199
    .line 200
    const/high16 v4, 0x41400000    # 12.0f

    .line 201
    .line 202
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 203
    .line 204
    .line 205
    const/high16 v8, -0x3fa00000    # -3.5f

    .line 206
    .line 207
    const/high16 v9, -0x3fa00000    # -3.5f

    .line 208
    .line 209
    const v4, -0x4007ae14    # -1.94f

    .line 210
    .line 211
    .line 212
    const/4 v5, 0x0

    .line 213
    const/high16 v6, -0x3fa00000    # -3.5f

    .line 214
    .line 215
    const v7, -0x403851ec    # -1.56f

    .line 216
    .line 217
    .line 218
    move-object v3, v10

    .line 219
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 220
    .line 221
    .line 222
    const v3, 0x4120f5c3    # 10.06f

    .line 223
    .line 224
    .line 225
    const/high16 v4, 0x40c00000    # 6.0f

    .line 226
    .line 227
    const/high16 v5, 0x41400000    # 12.0f

    .line 228
    .line 229
    invoke-virtual {v10, v3, v4, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 230
    .line 231
    .line 232
    const v3, 0x3fc7ae14    # 1.56f

    .line 233
    .line 234
    .line 235
    const/high16 v4, 0x40600000    # 3.5f

    .line 236
    .line 237
    invoke-virtual {v10, v4, v3, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 238
    .line 239
    .line 240
    const v3, 0x415f0a3d    # 13.94f

    .line 241
    .line 242
    .line 243
    const/high16 v4, 0x41500000    # 13.0f

    .line 244
    .line 245
    invoke-virtual {v10, v3, v4, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    const/16 v27, 0x3800

    .line 256
    .line 257
    const/16 v28, 0x0

    .line 258
    .line 259
    const v17, 0x3e99999a    # 0.3f

    .line 260
    .line 261
    .line 262
    const v19, 0x3e99999a    # 0.3f

    .line 263
    .line 264
    .line 265
    const/16 v18, 0x0

    .line 266
    .line 267
    const/high16 v20, 0x3f800000    # 1.0f

    .line 268
    .line 269
    const/high16 v23, 0x3f800000    # 1.0f

    .line 270
    .line 271
    const/16 v24, 0x0

    .line 272
    .line 273
    const/16 v25, 0x0

    .line 274
    .line 275
    const/16 v26, 0x0

    .line 276
    .line 277
    const-string v15, ""

    .line 278
    .line 279
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 280
    .line 281
    .line 282
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 283
    .line 284
    .line 285
    move-result v31

    .line 286
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 287
    .line 288
    move-object/from16 v33, v3

    .line 289
    .line 290
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 291
    .line 292
    .line 293
    move-result-wide v4

    .line 294
    const/4 v1, 0x0

    .line 295
    invoke-direct {v3, v4, v5, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 299
    .line 300
    .line 301
    move-result v38

    .line 302
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 303
    .line 304
    .line 305
    move-result v39

    .line 306
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 307
    .line 308
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    const/high16 v0, 0x40000000    # 2.0f

    .line 312
    .line 313
    const/high16 v1, 0x41400000    # 12.0f

    .line 314
    .line 315
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 316
    .line 317
    .line 318
    const/high16 v5, 0x40000000    # 2.0f

    .line 319
    .line 320
    const/high16 v6, 0x41400000    # 12.0f

    .line 321
    .line 322
    const v1, 0x40cf5c29    # 6.48f

    .line 323
    .line 324
    .line 325
    const/high16 v2, 0x40000000    # 2.0f

    .line 326
    .line 327
    const/high16 v3, 0x40000000    # 2.0f

    .line 328
    .line 329
    const v4, 0x40cf5c29    # 6.48f

    .line 330
    .line 331
    .line 332
    move-object v0, v7

    .line 333
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 334
    .line 335
    .line 336
    const v0, 0x408f5c29    # 4.48f

    .line 337
    .line 338
    .line 339
    const/high16 v1, 0x41200000    # 10.0f

    .line 340
    .line 341
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 342
    .line 343
    .line 344
    const v0, -0x3f70a3d7    # -4.48f

    .line 345
    .line 346
    .line 347
    const/high16 v1, -0x3ee00000    # -10.0f

    .line 348
    .line 349
    const/high16 v2, 0x41200000    # 10.0f

    .line 350
    .line 351
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 352
    .line 353
    .line 354
    const v0, 0x418c28f6    # 17.52f

    .line 355
    .line 356
    .line 357
    const/high16 v1, 0x40000000    # 2.0f

    .line 358
    .line 359
    const/high16 v2, 0x41400000    # 12.0f

    .line 360
    .line 361
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 365
    .line 366
    .line 367
    const v0, 0x40e23d71    # 7.07f

    .line 368
    .line 369
    .line 370
    const v1, 0x41923d71    # 18.28f

    .line 371
    .line 372
    .line 373
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 374
    .line 375
    .line 376
    const v5, 0x409dc28f    # 4.93f

    .line 377
    .line 378
    .line 379
    const v6, -0x401c28f6    # -1.78f

    .line 380
    .line 381
    .line 382
    const v1, 0x3edc28f6    # 0.43f

    .line 383
    .line 384
    .line 385
    const v2, -0x4099999a    # -0.9f

    .line 386
    .line 387
    .line 388
    const v3, 0x40433333    # 3.05f

    .line 389
    .line 390
    .line 391
    const v4, -0x401c28f6    # -1.78f

    .line 392
    .line 393
    .line 394
    move-object v0, v7

    .line 395
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 396
    .line 397
    .line 398
    const v0, 0x3f6147ae    # 0.88f

    .line 399
    .line 400
    .line 401
    const v1, 0x3fe3d70a    # 1.78f

    .line 402
    .line 403
    .line 404
    const v2, 0x409dc28f    # 4.93f

    .line 405
    .line 406
    .line 407
    const v3, 0x409051ec    # 4.51f

    .line 408
    .line 409
    .line 410
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 411
    .line 412
    .line 413
    const/high16 v5, 0x41400000    # 12.0f

    .line 414
    .line 415
    const/high16 v6, 0x41a00000    # 20.0f

    .line 416
    .line 417
    const v1, 0x41791eb8    # 15.57f

    .line 418
    .line 419
    .line 420
    const v2, 0x419ae148    # 19.36f

    .line 421
    .line 422
    .line 423
    const v3, 0x415dc28f    # 13.86f

    .line 424
    .line 425
    .line 426
    const/high16 v4, 0x41a00000    # 20.0f

    .line 427
    .line 428
    move-object v0, v7

    .line 429
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 430
    .line 431
    .line 432
    const v0, -0x40dc28f6    # -0.64f

    .line 433
    .line 434
    .line 435
    const v1, -0x4023d70a    # -1.72f

    .line 436
    .line 437
    .line 438
    const v2, -0x3f623d71    # -4.93f

    .line 439
    .line 440
    .line 441
    const v3, -0x3f9b851f    # -3.57f

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 448
    .line 449
    .line 450
    const v0, 0x4192e148    # 18.36f

    .line 451
    .line 452
    .line 453
    const v1, 0x4186a3d7    # 16.83f

    .line 454
    .line 455
    .line 456
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 457
    .line 458
    .line 459
    const v5, -0x3f347ae1    # -6.36f

    .line 460
    .line 461
    .line 462
    const v6, -0x3feae148    # -2.33f

    .line 463
    .line 464
    .line 465
    const v1, -0x4048f5c3    # -1.43f

    .line 466
    .line 467
    .line 468
    const v2, -0x402147ae    # -1.74f

    .line 469
    .line 470
    .line 471
    const v3, -0x3f633333    # -4.9f

    .line 472
    .line 473
    .line 474
    const v4, -0x3feae148    # -2.33f

    .line 475
    .line 476
    .line 477
    move-object v0, v7

    .line 478
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 479
    .line 480
    .line 481
    const v0, -0x3f347ae1    # -6.36f

    .line 482
    .line 483
    .line 484
    const v1, -0x3f623d71    # -4.93f

    .line 485
    .line 486
    .line 487
    const v2, 0x40151eb8    # 2.33f

    .line 488
    .line 489
    .line 490
    const v3, 0x3f170a3d    # 0.59f

    .line 491
    .line 492
    .line 493
    invoke-virtual {v7, v1, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 494
    .line 495
    .line 496
    const/high16 v5, 0x40800000    # 4.0f

    .line 497
    .line 498
    const/high16 v6, 0x41400000    # 12.0f

    .line 499
    .line 500
    const v1, 0x4093d70a    # 4.62f

    .line 501
    .line 502
    .line 503
    const v2, 0x4177d70a    # 15.49f

    .line 504
    .line 505
    .line 506
    const/high16 v3, 0x40800000    # 4.0f

    .line 507
    .line 508
    const v4, 0x415d1eb8    # 13.82f

    .line 509
    .line 510
    .line 511
    move-object v0, v7

    .line 512
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 513
    .line 514
    .line 515
    const/high16 v5, 0x41000000    # 8.0f

    .line 516
    .line 517
    const/high16 v6, -0x3f000000    # -8.0f

    .line 518
    .line 519
    const/4 v1, 0x0

    .line 520
    const v2, -0x3f72e148    # -4.41f

    .line 521
    .line 522
    .line 523
    const v3, 0x4065c28f    # 3.59f

    .line 524
    .line 525
    .line 526
    const/high16 v4, -0x3f000000    # -8.0f

    .line 527
    .line 528
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 529
    .line 530
    .line 531
    const v0, 0x4065c28f    # 3.59f

    .line 532
    .line 533
    .line 534
    const/high16 v1, 0x41000000    # 8.0f

    .line 535
    .line 536
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 537
    .line 538
    .line 539
    const v5, -0x402e147b    # -1.64f

    .line 540
    .line 541
    .line 542
    const v6, 0x409a8f5c    # 4.83f

    .line 543
    .line 544
    .line 545
    const/4 v1, 0x0

    .line 546
    const v2, 0x3fe8f5c3    # 1.82f

    .line 547
    .line 548
    .line 549
    const v3, -0x40e147ae    # -0.62f

    .line 550
    .line 551
    .line 552
    const v4, 0x405f5c29    # 3.49f

    .line 553
    .line 554
    .line 555
    move-object v0, v7

    .line 556
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 560
    .line 561
    .line 562
    const/high16 v0, 0x40c00000    # 6.0f

    .line 563
    .line 564
    const/high16 v1, 0x41400000    # 12.0f

    .line 565
    .line 566
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 567
    .line 568
    .line 569
    const/high16 v5, -0x3fa00000    # -3.5f

    .line 570
    .line 571
    const/high16 v6, 0x40600000    # 3.5f

    .line 572
    .line 573
    const v1, -0x4007ae14    # -1.94f

    .line 574
    .line 575
    .line 576
    const/4 v2, 0x0

    .line 577
    const/high16 v3, -0x3fa00000    # -3.5f

    .line 578
    .line 579
    const v4, 0x3fc7ae14    # 1.56f

    .line 580
    .line 581
    .line 582
    move-object v0, v7

    .line 583
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 584
    .line 585
    .line 586
    const v0, 0x4120f5c3    # 10.06f

    .line 587
    .line 588
    .line 589
    const/high16 v1, 0x41500000    # 13.0f

    .line 590
    .line 591
    const/high16 v2, 0x41400000    # 12.0f

    .line 592
    .line 593
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 594
    .line 595
    .line 596
    const v0, -0x403851ec    # -1.56f

    .line 597
    .line 598
    .line 599
    const/high16 v1, -0x3fa00000    # -3.5f

    .line 600
    .line 601
    const/high16 v2, 0x40600000    # 3.5f

    .line 602
    .line 603
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 604
    .line 605
    .line 606
    const v0, 0x415f0a3d    # 13.94f

    .line 607
    .line 608
    .line 609
    const/high16 v1, 0x40c00000    # 6.0f

    .line 610
    .line 611
    const/high16 v2, 0x41400000    # 12.0f

    .line 612
    .line 613
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 617
    .line 618
    .line 619
    const/high16 v0, 0x41300000    # 11.0f

    .line 620
    .line 621
    const/high16 v1, 0x41400000    # 12.0f

    .line 622
    .line 623
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 624
    .line 625
    .line 626
    const/high16 v5, -0x40400000    # -1.5f

    .line 627
    .line 628
    const/high16 v6, -0x40400000    # -1.5f

    .line 629
    .line 630
    const v1, -0x40ab851f    # -0.83f

    .line 631
    .line 632
    .line 633
    const/4 v2, 0x0

    .line 634
    const/high16 v3, -0x40400000    # -1.5f

    .line 635
    .line 636
    const v4, -0x40d47ae1    # -0.67f

    .line 637
    .line 638
    .line 639
    move-object v0, v7

    .line 640
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 641
    .line 642
    .line 643
    const v0, 0x4132b852    # 11.17f

    .line 644
    .line 645
    .line 646
    const/high16 v1, 0x41000000    # 8.0f

    .line 647
    .line 648
    const/high16 v2, 0x41400000    # 12.0f

    .line 649
    .line 650
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 651
    .line 652
    .line 653
    const v0, 0x3f2b851f    # 0.67f

    .line 654
    .line 655
    .line 656
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 657
    .line 658
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 659
    .line 660
    .line 661
    const v0, 0x414d47ae    # 12.83f

    .line 662
    .line 663
    .line 664
    const/high16 v1, 0x41300000    # 11.0f

    .line 665
    .line 666
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 673
    .line 674
    .line 675
    move-result-object v30

    .line 676
    const/16 v44, 0x3800

    .line 677
    .line 678
    const/16 v45, 0x0

    .line 679
    .line 680
    const/high16 v34, 0x3f800000    # 1.0f

    .line 681
    .line 682
    const/high16 v36, 0x3f800000    # 1.0f

    .line 683
    .line 684
    const/16 v35, 0x0

    .line 685
    .line 686
    const/high16 v37, 0x3f800000    # 1.0f

    .line 687
    .line 688
    const/high16 v40, 0x3f800000    # 1.0f

    .line 689
    .line 690
    const/16 v41, 0x0

    .line 691
    .line 692
    const/16 v42, 0x0

    .line 693
    .line 694
    const/16 v43, 0x0

    .line 695
    .line 696
    const-string v32, ""

    .line 697
    .line 698
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    sput-object v0, Landroidx/compose/material/icons/twotone/AccountCircleKt;->_accountCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 707
    .line 708
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    return-object v0
.end method
