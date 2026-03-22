.class public final Landroidx/compose/material/icons/rounded/ShoppingCartKt;
.super Ljava/lang/Object;
.source "ShoppingCart.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _shoppingCart:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getShoppingCart(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29
    .param p0    # Landroidx/compose/material/icons/Icons$Rounded;
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
    sget-object v0, Landroidx/compose/material/icons/rounded/ShoppingCartKt;->_shoppingCart:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.ShoppingCart"

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
    const/high16 v0, 0x41900000    # 18.0f

    .line 80
    .line 81
    const/high16 v1, 0x40e00000    # 7.0f

    .line 82
    .line 83
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .line 85
    .line 86
    const v5, -0x400147ae    # -1.99f

    .line 87
    .line 88
    .line 89
    const/high16 v6, 0x40000000    # 2.0f

    .line 90
    .line 91
    const v1, -0x40733333    # -1.1f

    .line 92
    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    const v3, -0x400147ae    # -1.99f

    .line 96
    .line 97
    .line 98
    const v4, 0x3f666666    # 0.9f

    .line 99
    .line 100
    .line 101
    move-object v0, v7

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    .line 104
    .line 105
    const v0, 0x40bccccd    # 5.9f

    .line 106
    .line 107
    .line 108
    const/high16 v1, 0x41b00000    # 22.0f

    .line 109
    .line 110
    const/high16 v2, 0x40e00000    # 7.0f

    .line 111
    .line 112
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    .line 114
    .line 115
    const v0, -0x4099999a    # -0.9f

    .line 116
    .line 117
    .line 118
    const/high16 v1, 0x40000000    # 2.0f

    .line 119
    .line 120
    const/high16 v2, -0x40000000    # -2.0f

    .line 121
    .line 122
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    .line 124
    .line 125
    const/high16 v1, -0x40000000    # -2.0f

    .line 126
    .line 127
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    .line 132
    .line 133
    const/high16 v0, 0x40400000    # 3.0f

    .line 134
    .line 135
    const/high16 v1, 0x3f800000    # 1.0f

    .line 136
    .line 137
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    .line 139
    .line 140
    const/high16 v5, 0x3f800000    # 1.0f

    .line 141
    .line 142
    const/high16 v6, 0x3f800000    # 1.0f

    .line 143
    .line 144
    const/4 v1, 0x0

    .line 145
    const v2, 0x3f0ccccd    # 0.55f

    .line 146
    .line 147
    .line 148
    const v3, 0x3ee66666    # 0.45f

    .line 149
    .line 150
    .line 151
    const/high16 v4, 0x3f800000    # 1.0f

    .line 152
    .line 153
    move-object v0, v7

    .line 154
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 155
    .line 156
    .line 157
    const/high16 v0, 0x3f800000    # 1.0f

    .line 158
    .line 159
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 160
    .line 161
    .line 162
    const v0, 0x40666666    # 3.6f

    .line 163
    .line 164
    .line 165
    const v1, 0x40f2e148    # 7.59f

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 169
    .line 170
    .line 171
    const v0, -0x40533333    # -1.35f

    .line 172
    .line 173
    .line 174
    const v1, 0x401c28f6    # 2.44f

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 178
    .line 179
    .line 180
    const/high16 v5, 0x40e00000    # 7.0f

    .line 181
    .line 182
    const/high16 v6, 0x41880000    # 17.0f

    .line 183
    .line 184
    const v1, 0x4090a3d7    # 4.52f

    .line 185
    .line 186
    .line 187
    const v2, 0x4175eb85    # 15.37f

    .line 188
    .line 189
    .line 190
    const v3, 0x40af5c29    # 5.48f

    .line 191
    .line 192
    .line 193
    const/high16 v4, 0x41880000    # 17.0f

    .line 194
    .line 195
    move-object v0, v7

    .line 196
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 197
    .line 198
    .line 199
    const/high16 v0, 0x41300000    # 11.0f

    .line 200
    .line 201
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 202
    .line 203
    .line 204
    const/high16 v5, 0x3f800000    # 1.0f

    .line 205
    .line 206
    const/high16 v6, -0x40800000    # -1.0f

    .line 207
    .line 208
    const v1, 0x3f0ccccd    # 0.55f

    .line 209
    .line 210
    .line 211
    const/4 v2, 0x0

    .line 212
    const/high16 v3, 0x3f800000    # 1.0f

    .line 213
    .line 214
    const v4, -0x4119999a    # -0.45f

    .line 215
    .line 216
    .line 217
    move-object v0, v7

    .line 218
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 219
    .line 220
    .line 221
    const v0, -0x4119999a    # -0.45f

    .line 222
    .line 223
    .line 224
    const/high16 v1, -0x40800000    # -1.0f

    .line 225
    .line 226
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 227
    .line 228
    .line 229
    const/high16 v0, 0x41700000    # 15.0f

    .line 230
    .line 231
    const/high16 v1, 0x40e00000    # 7.0f

    .line 232
    .line 233
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 234
    .line 235
    .line 236
    const v0, 0x3f8ccccd    # 1.1f

    .line 237
    .line 238
    .line 239
    const/high16 v1, -0x40000000    # -2.0f

    .line 240
    .line 241
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 242
    .line 243
    .line 244
    const v0, 0x40ee6666    # 7.45f

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 248
    .line 249
    .line 250
    const/high16 v5, 0x3fe00000    # 1.75f

    .line 251
    .line 252
    const v6, -0x407c28f6    # -1.03f

    .line 253
    .line 254
    .line 255
    const/high16 v1, 0x3f400000    # 0.75f

    .line 256
    .line 257
    const v3, 0x3fb47ae1    # 1.41f

    .line 258
    .line 259
    .line 260
    const v4, -0x412e147b    # -0.41f

    .line 261
    .line 262
    .line 263
    move-object v0, v7

    .line 264
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 265
    .line 266
    .line 267
    const v0, 0x40651eb8    # 3.58f

    .line 268
    .line 269
    .line 270
    const v1, -0x3f3051ec    # -6.49f

    .line 271
    .line 272
    .line 273
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 274
    .line 275
    .line 276
    const v5, -0x40a147ae    # -0.87f

    .line 277
    .line 278
    .line 279
    const v6, -0x40428f5c    # -1.48f

    .line 280
    .line 281
    .line 282
    const v1, 0x3ebd70a4    # 0.37f

    .line 283
    .line 284
    .line 285
    const v2, -0x40d70a3d    # -0.66f

    .line 286
    .line 287
    .line 288
    const v3, -0x421eb852    # -0.11f

    .line 289
    .line 290
    .line 291
    const v4, -0x40428f5c    # -1.48f

    .line 292
    .line 293
    .line 294
    move-object v0, v7

    .line 295
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 296
    .line 297
    .line 298
    const v0, 0x40a6b852    # 5.21f

    .line 299
    .line 300
    .line 301
    const/high16 v1, 0x40800000    # 4.0f

    .line 302
    .line 303
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 304
    .line 305
    .line 306
    const v0, -0x40d47ae1    # -0.67f

    .line 307
    .line 308
    .line 309
    const v1, -0x4048f5c3    # -1.43f

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 313
    .line 314
    .line 315
    const v5, -0x4099999a    # -0.9f

    .line 316
    .line 317
    .line 318
    const v6, -0x40ee147b    # -0.57f

    .line 319
    .line 320
    .line 321
    const v1, -0x41dc28f6    # -0.16f

    .line 322
    .line 323
    .line 324
    const v2, -0x414ccccd    # -0.35f

    .line 325
    .line 326
    .line 327
    const v3, -0x40fae148    # -0.52f

    .line 328
    .line 329
    .line 330
    const v4, -0x40ee147b    # -0.57f

    .line 331
    .line 332
    .line 333
    move-object v0, v7

    .line 334
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 335
    .line 336
    .line 337
    const/high16 v0, 0x40000000    # 2.0f

    .line 338
    .line 339
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 340
    .line 341
    .line 342
    const/high16 v5, -0x40800000    # -1.0f

    .line 343
    .line 344
    const/high16 v6, 0x3f800000    # 1.0f

    .line 345
    .line 346
    const v1, -0x40f33333    # -0.55f

    .line 347
    .line 348
    .line 349
    const/4 v2, 0x0

    .line 350
    const/high16 v3, -0x40800000    # -1.0f

    .line 351
    .line 352
    const v4, 0x3ee66666    # 0.45f

    .line 353
    .line 354
    .line 355
    move-object v0, v7

    .line 356
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 360
    .line 361
    .line 362
    const/high16 v0, 0x41880000    # 17.0f

    .line 363
    .line 364
    const/high16 v1, 0x41900000    # 18.0f

    .line 365
    .line 366
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 367
    .line 368
    .line 369
    const v5, -0x400147ae    # -1.99f

    .line 370
    .line 371
    .line 372
    const/high16 v6, 0x40000000    # 2.0f

    .line 373
    .line 374
    const v1, -0x40733333    # -1.1f

    .line 375
    .line 376
    .line 377
    const v3, -0x400147ae    # -1.99f

    .line 378
    .line 379
    .line 380
    const v4, 0x3f666666    # 0.9f

    .line 381
    .line 382
    .line 383
    move-object v0, v7

    .line 384
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 385
    .line 386
    .line 387
    const v0, 0x3f63d70a    # 0.89f

    .line 388
    .line 389
    .line 390
    const v1, 0x3ffeb852    # 1.99f

    .line 391
    .line 392
    .line 393
    const/high16 v2, 0x40000000    # 2.0f

    .line 394
    .line 395
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 396
    .line 397
    .line 398
    const v0, -0x4099999a    # -0.9f

    .line 399
    .line 400
    .line 401
    const/high16 v1, 0x40000000    # 2.0f

    .line 402
    .line 403
    const/high16 v2, -0x40000000    # -2.0f

    .line 404
    .line 405
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 406
    .line 407
    .line 408
    const/high16 v1, -0x40000000    # -2.0f

    .line 409
    .line 410
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 417
    .line 418
    .line 419
    move-result-object v13

    .line 420
    const/16 v27, 0x3800

    .line 421
    .line 422
    const/16 v28, 0x0

    .line 423
    .line 424
    const/high16 v17, 0x3f800000    # 1.0f

    .line 425
    .line 426
    const/high16 v19, 0x3f800000    # 1.0f

    .line 427
    .line 428
    const/16 v18, 0x0

    .line 429
    .line 430
    const/high16 v20, 0x3f800000    # 1.0f

    .line 431
    .line 432
    const/high16 v23, 0x3f800000    # 1.0f

    .line 433
    .line 434
    const/16 v24, 0x0

    .line 435
    .line 436
    const/16 v25, 0x0

    .line 437
    .line 438
    const/16 v26, 0x0

    .line 439
    .line 440
    const-string v15, ""

    .line 441
    .line 442
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    sput-object v0, Landroidx/compose/material/icons/rounded/ShoppingCartKt;->_shoppingCart:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 451
    .line 452
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    return-object v0
.end method
