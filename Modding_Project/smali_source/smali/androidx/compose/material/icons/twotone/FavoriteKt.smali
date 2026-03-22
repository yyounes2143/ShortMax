.class public final Landroidx/compose/material/icons/twotone/FavoriteKt;
.super Ljava/lang/Object;
.source "Favorite.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _favorite:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getFavorite(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/twotone/FavoriteKt;->_favorite:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "TwoTone.Favorite"

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
    const/high16 v3, 0x40a00000    # 5.0f

    .line 82
    .line 83
    const/high16 v4, 0x41840000    # 16.5f

    .line 84
    .line 85
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const v8, -0x3f9c28f6    # -3.56f

    .line 89
    .line 90
    .line 91
    const v9, 0x40170a3d    # 2.36f

    .line 92
    .line 93
    .line 94
    const v4, -0x403ae148    # -1.54f

    .line 95
    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    const v6, -0x3fbd70a4    # -3.04f

    .line 99
    .line 100
    .line 101
    const v7, 0x3f7d70a4    # 0.99f

    .line 102
    .line 103
    .line 104
    move-object v3, v10

    .line 105
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    .line 107
    .line 108
    const v3, -0x4010a3d7    # -1.87f

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    .line 113
    .line 114
    const/high16 v8, 0x40f00000    # 7.5f

    .line 115
    .line 116
    const/high16 v9, 0x40a00000    # 5.0f

    .line 117
    .line 118
    const v4, 0x4128a3d7    # 10.54f

    .line 119
    .line 120
    .line 121
    const v5, 0x40bfae14    # 5.99f

    .line 122
    .line 123
    .line 124
    const v6, 0x4110a3d7    # 9.04f

    .line 125
    .line 126
    .line 127
    const/high16 v7, 0x40a00000    # 5.0f

    .line 128
    .line 129
    move-object v3, v10

    .line 130
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    .line 132
    .line 133
    const/high16 v8, 0x40800000    # 4.0f

    .line 134
    .line 135
    const/high16 v9, 0x41080000    # 8.5f

    .line 136
    .line 137
    const/high16 v4, 0x40b00000    # 5.5f

    .line 138
    .line 139
    const/high16 v5, 0x40a00000    # 5.0f

    .line 140
    .line 141
    const/high16 v6, 0x40800000    # 4.0f

    .line 142
    .line 143
    const/high16 v7, 0x40d00000    # 6.5f

    .line 144
    .line 145
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 146
    .line 147
    .line 148
    const v8, 0x40fccccd    # 7.9f

    .line 149
    .line 150
    .line 151
    const v9, 0x4120cccd    # 10.05f

    .line 152
    .line 153
    .line 154
    const/4 v4, 0x0

    .line 155
    const v5, 0x4038f5c3    # 2.89f

    .line 156
    .line 157
    .line 158
    const v6, 0x4048f5c3    # 3.14f

    .line 159
    .line 160
    .line 161
    const v7, 0x40b7ae14    # 5.74f

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 165
    .line 166
    .line 167
    const v3, 0x3dcccccd    # 0.1f

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 171
    .line 172
    .line 173
    const v3, -0x42333333    # -0.1f

    .line 174
    .line 175
    .line 176
    const v4, 0x3dcccccd    # 0.1f

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 180
    .line 181
    .line 182
    const/high16 v8, 0x41a00000    # 20.0f

    .line 183
    .line 184
    const/high16 v9, 0x41080000    # 8.5f

    .line 185
    .line 186
    const v4, 0x4186e148    # 16.86f

    .line 187
    .line 188
    .line 189
    const v5, 0x4163d70a    # 14.24f

    .line 190
    .line 191
    .line 192
    const/high16 v6, 0x41a00000    # 20.0f

    .line 193
    .line 194
    const v7, 0x41363d71    # 11.39f

    .line 195
    .line 196
    .line 197
    move-object v3, v10

    .line 198
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 199
    .line 200
    .line 201
    const/high16 v8, -0x3fa00000    # -3.5f

    .line 202
    .line 203
    const/high16 v9, -0x3fa00000    # -3.5f

    .line 204
    .line 205
    const/4 v4, 0x0

    .line 206
    const/high16 v5, -0x40000000    # -2.0f

    .line 207
    .line 208
    const/high16 v6, -0x40400000    # -1.5f

    .line 209
    .line 210
    const/high16 v7, -0x3fa00000    # -3.5f

    .line 211
    .line 212
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    const/16 v27, 0x3800

    .line 223
    .line 224
    const/16 v28, 0x0

    .line 225
    .line 226
    const v17, 0x3e99999a    # 0.3f

    .line 227
    .line 228
    .line 229
    const v19, 0x3e99999a    # 0.3f

    .line 230
    .line 231
    .line 232
    const/16 v18, 0x0

    .line 233
    .line 234
    const/high16 v20, 0x3f800000    # 1.0f

    .line 235
    .line 236
    const/high16 v23, 0x3f800000    # 1.0f

    .line 237
    .line 238
    const/16 v24, 0x0

    .line 239
    .line 240
    const/16 v25, 0x0

    .line 241
    .line 242
    const/16 v26, 0x0

    .line 243
    .line 244
    const-string v15, ""

    .line 245
    .line 246
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 247
    .line 248
    .line 249
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 250
    .line 251
    .line 252
    move-result v31

    .line 253
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 254
    .line 255
    move-object/from16 v33, v3

    .line 256
    .line 257
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 258
    .line 259
    .line 260
    move-result-wide v4

    .line 261
    const/4 v1, 0x0

    .line 262
    invoke-direct {v3, v4, v5, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 266
    .line 267
    .line 268
    move-result v38

    .line 269
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 270
    .line 271
    .line 272
    move-result v39

    .line 273
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 274
    .line 275
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    const/high16 v0, 0x40400000    # 3.0f

    .line 279
    .line 280
    const/high16 v1, 0x41840000    # 16.5f

    .line 281
    .line 282
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 283
    .line 284
    .line 285
    const/high16 v5, -0x3f700000    # -4.5f

    .line 286
    .line 287
    const v6, 0x4005c28f    # 2.09f

    .line 288
    .line 289
    .line 290
    const v1, -0x402147ae    # -1.74f

    .line 291
    .line 292
    .line 293
    const/4 v2, 0x0

    .line 294
    const v3, -0x3fa5c28f    # -3.41f

    .line 295
    .line 296
    .line 297
    const v4, 0x3f4f5c29    # 0.81f

    .line 298
    .line 299
    .line 300
    move-object v0, v7

    .line 301
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 302
    .line 303
    .line 304
    const/high16 v5, 0x40f00000    # 7.5f

    .line 305
    .line 306
    const/high16 v6, 0x40400000    # 3.0f

    .line 307
    .line 308
    const v1, 0x412e8f5c    # 10.91f

    .line 309
    .line 310
    .line 311
    const v2, 0x4073d70a    # 3.81f

    .line 312
    .line 313
    .line 314
    const v3, 0x4113d70a    # 9.24f

    .line 315
    .line 316
    .line 317
    const/high16 v4, 0x40400000    # 3.0f

    .line 318
    .line 319
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 320
    .line 321
    .line 322
    const/high16 v5, 0x40000000    # 2.0f

    .line 323
    .line 324
    const/high16 v6, 0x41080000    # 8.5f

    .line 325
    .line 326
    const v1, 0x408d70a4    # 4.42f

    .line 327
    .line 328
    .line 329
    const/high16 v2, 0x40400000    # 3.0f

    .line 330
    .line 331
    const/high16 v3, 0x40000000    # 2.0f

    .line 332
    .line 333
    const v4, 0x40ad70a4    # 5.42f

    .line 334
    .line 335
    .line 336
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 337
    .line 338
    .line 339
    const v5, 0x4108cccd    # 8.55f

    .line 340
    .line 341
    .line 342
    const v6, 0x4138a3d7    # 11.54f

    .line 343
    .line 344
    .line 345
    const/4 v1, 0x0

    .line 346
    const v2, 0x4071eb85    # 3.78f

    .line 347
    .line 348
    .line 349
    const v3, 0x4059999a    # 3.4f

    .line 350
    .line 351
    .line 352
    const v4, 0x40db851f    # 6.86f

    .line 353
    .line 354
    .line 355
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 356
    .line 357
    .line 358
    const/high16 v0, 0x41400000    # 12.0f

    .line 359
    .line 360
    const v1, 0x41aacccd    # 21.35f

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 364
    .line 365
    .line 366
    const v0, 0x3fb9999a    # 1.45f

    .line 367
    .line 368
    .line 369
    const v1, -0x40570a3d    # -1.32f

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 373
    .line 374
    .line 375
    const/high16 v5, 0x41b00000    # 22.0f

    .line 376
    .line 377
    const/high16 v6, 0x41080000    # 8.5f

    .line 378
    .line 379
    const v1, 0x4194cccd    # 18.6f

    .line 380
    .line 381
    .line 382
    const v2, 0x4175c28f    # 15.36f

    .line 383
    .line 384
    .line 385
    const/high16 v3, 0x41b00000    # 22.0f

    .line 386
    .line 387
    const v4, 0x41447ae1    # 12.28f

    .line 388
    .line 389
    .line 390
    move-object v0, v7

    .line 391
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 392
    .line 393
    .line 394
    const/high16 v5, 0x41840000    # 16.5f

    .line 395
    .line 396
    const/high16 v6, 0x40400000    # 3.0f

    .line 397
    .line 398
    const/high16 v1, 0x41b00000    # 22.0f

    .line 399
    .line 400
    const v2, 0x40ad70a4    # 5.42f

    .line 401
    .line 402
    .line 403
    const v3, 0x419ca3d7    # 19.58f

    .line 404
    .line 405
    .line 406
    const/high16 v4, 0x40400000    # 3.0f

    .line 407
    .line 408
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 412
    .line 413
    .line 414
    const v0, 0x4141999a    # 12.1f

    .line 415
    .line 416
    .line 417
    const v1, 0x41946666    # 18.55f

    .line 418
    .line 419
    .line 420
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 421
    .line 422
    .line 423
    const v0, -0x42333333    # -0.1f

    .line 424
    .line 425
    .line 426
    const v1, 0x3dcccccd    # 0.1f

    .line 427
    .line 428
    .line 429
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 433
    .line 434
    .line 435
    const/high16 v5, 0x40800000    # 4.0f

    .line 436
    .line 437
    const/high16 v6, 0x41080000    # 8.5f

    .line 438
    .line 439
    const v1, 0x40e47ae1    # 7.14f

    .line 440
    .line 441
    .line 442
    const v2, 0x4163d70a    # 14.24f

    .line 443
    .line 444
    .line 445
    const/high16 v3, 0x40800000    # 4.0f

    .line 446
    .line 447
    const v4, 0x41363d71    # 11.39f

    .line 448
    .line 449
    .line 450
    move-object v0, v7

    .line 451
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 452
    .line 453
    .line 454
    const/high16 v5, 0x40f00000    # 7.5f

    .line 455
    .line 456
    const/high16 v6, 0x40a00000    # 5.0f

    .line 457
    .line 458
    const/high16 v1, 0x40800000    # 4.0f

    .line 459
    .line 460
    const/high16 v2, 0x40d00000    # 6.5f

    .line 461
    .line 462
    const/high16 v3, 0x40b00000    # 5.5f

    .line 463
    .line 464
    const/high16 v4, 0x40a00000    # 5.0f

    .line 465
    .line 466
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 467
    .line 468
    .line 469
    const v5, 0x40647ae1    # 3.57f

    .line 470
    .line 471
    .line 472
    const v6, 0x40170a3d    # 2.36f

    .line 473
    .line 474
    .line 475
    const v1, 0x3fc51eb8    # 1.54f

    .line 476
    .line 477
    .line 478
    const/4 v2, 0x0

    .line 479
    const v3, 0x40428f5c    # 3.04f

    .line 480
    .line 481
    .line 482
    const v4, 0x3f7d70a4    # 0.99f

    .line 483
    .line 484
    .line 485
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 486
    .line 487
    .line 488
    const v0, 0x3fef5c29    # 1.87f

    .line 489
    .line 490
    .line 491
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 492
    .line 493
    .line 494
    const/high16 v5, 0x41840000    # 16.5f

    .line 495
    .line 496
    const/high16 v6, 0x40a00000    # 5.0f

    .line 497
    .line 498
    const v1, 0x41575c29    # 13.46f

    .line 499
    .line 500
    .line 501
    const v2, 0x40bfae14    # 5.99f

    .line 502
    .line 503
    .line 504
    const v3, 0x416f5c29    # 14.96f

    .line 505
    .line 506
    .line 507
    const/high16 v4, 0x40a00000    # 5.0f

    .line 508
    .line 509
    move-object v0, v7

    .line 510
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 511
    .line 512
    .line 513
    const/high16 v5, 0x40600000    # 3.5f

    .line 514
    .line 515
    const/high16 v6, 0x40600000    # 3.5f

    .line 516
    .line 517
    const/high16 v1, 0x40000000    # 2.0f

    .line 518
    .line 519
    const/4 v2, 0x0

    .line 520
    const/high16 v3, 0x40600000    # 3.5f

    .line 521
    .line 522
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 523
    .line 524
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 525
    .line 526
    .line 527
    const v5, -0x3f033333    # -7.9f

    .line 528
    .line 529
    .line 530
    const v6, 0x4120cccd    # 10.05f

    .line 531
    .line 532
    .line 533
    const/4 v1, 0x0

    .line 534
    const v2, 0x4038f5c3    # 2.89f

    .line 535
    .line 536
    .line 537
    const v3, -0x3fb70a3d    # -3.14f

    .line 538
    .line 539
    .line 540
    const v4, 0x40b7ae14    # 5.74f

    .line 541
    .line 542
    .line 543
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 550
    .line 551
    .line 552
    move-result-object v30

    .line 553
    const/16 v44, 0x3800

    .line 554
    .line 555
    const/16 v45, 0x0

    .line 556
    .line 557
    const/high16 v34, 0x3f800000    # 1.0f

    .line 558
    .line 559
    const/high16 v36, 0x3f800000    # 1.0f

    .line 560
    .line 561
    const/16 v35, 0x0

    .line 562
    .line 563
    const/high16 v37, 0x3f800000    # 1.0f

    .line 564
    .line 565
    const/high16 v40, 0x3f800000    # 1.0f

    .line 566
    .line 567
    const/16 v41, 0x0

    .line 568
    .line 569
    const/16 v42, 0x0

    .line 570
    .line 571
    const/16 v43, 0x0

    .line 572
    .line 573
    const-string v32, ""

    .line 574
    .line 575
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    sput-object v0, Landroidx/compose/material/icons/twotone/FavoriteKt;->_favorite:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 584
    .line 585
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    return-object v0
.end method
