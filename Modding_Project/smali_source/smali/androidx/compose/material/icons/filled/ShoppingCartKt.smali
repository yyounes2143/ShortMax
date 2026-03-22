.class public final Landroidx/compose/material/icons/filled/ShoppingCartKt;
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

.method public static final getShoppingCart(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29
    .param p0    # Landroidx/compose/material/icons/Icons$Filled;
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
    sget-object v0, Landroidx/compose/material/icons/filled/ShoppingCartKt;->_shoppingCart:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Filled.ShoppingCart"

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
    const/high16 v1, -0x40000000    # -2.0f

    .line 119
    .line 120
    const/high16 v2, 0x40000000    # 2.0f

    .line 121
    .line 122
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    .line 130
    .line 131
    const/high16 v0, 0x3f800000    # 1.0f

    .line 132
    .line 133
    const/high16 v1, 0x40000000    # 2.0f

    .line 134
    .line 135
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    .line 137
    .line 138
    const/high16 v0, 0x40000000    # 2.0f

    .line 139
    .line 140
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 144
    .line 145
    .line 146
    const v0, 0x40666666    # 3.6f

    .line 147
    .line 148
    .line 149
    const v1, 0x40f2e148    # 7.59f

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 153
    .line 154
    .line 155
    const v0, -0x40533333    # -1.35f

    .line 156
    .line 157
    .line 158
    const v1, 0x401ccccd    # 2.45f

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 162
    .line 163
    .line 164
    const/high16 v5, -0x41800000    # -0.25f

    .line 165
    .line 166
    const v6, 0x3f75c28f    # 0.96f

    .line 167
    .line 168
    .line 169
    const v1, -0x41dc28f6    # -0.16f

    .line 170
    .line 171
    .line 172
    const v2, 0x3e8f5c29    # 0.28f

    .line 173
    .line 174
    .line 175
    const/high16 v3, -0x41800000    # -0.25f

    .line 176
    .line 177
    const v4, 0x3f1c28f6    # 0.61f

    .line 178
    .line 179
    .line 180
    move-object v0, v7

    .line 181
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 182
    .line 183
    .line 184
    const/high16 v5, 0x40000000    # 2.0f

    .line 185
    .line 186
    const/high16 v6, 0x40000000    # 2.0f

    .line 187
    .line 188
    const/4 v1, 0x0

    .line 189
    const v2, 0x3f8ccccd    # 1.1f

    .line 190
    .line 191
    .line 192
    const v3, 0x3f666666    # 0.9f

    .line 193
    .line 194
    .line 195
    const/high16 v4, 0x40000000    # 2.0f

    .line 196
    .line 197
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 198
    .line 199
    .line 200
    const/high16 v0, 0x41400000    # 12.0f

    .line 201
    .line 202
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 203
    .line 204
    .line 205
    const/high16 v0, -0x40000000    # -2.0f

    .line 206
    .line 207
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 208
    .line 209
    .line 210
    const v0, 0x40ed70a4    # 7.42f

    .line 211
    .line 212
    .line 213
    const/high16 v1, 0x41700000    # 15.0f

    .line 214
    .line 215
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 216
    .line 217
    .line 218
    const/high16 v5, -0x41800000    # -0.25f

    .line 219
    .line 220
    const/high16 v6, -0x41800000    # -0.25f

    .line 221
    .line 222
    const v1, -0x41f0a3d7    # -0.14f

    .line 223
    .line 224
    .line 225
    const/4 v2, 0x0

    .line 226
    const/high16 v3, -0x41800000    # -0.25f

    .line 227
    .line 228
    const v4, -0x421eb852    # -0.11f

    .line 229
    .line 230
    .line 231
    move-object v0, v7

    .line 232
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 233
    .line 234
    .line 235
    const v0, 0x3cf5c28f    # 0.03f

    .line 236
    .line 237
    .line 238
    const v1, -0x420a3d71    # -0.12f

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 242
    .line 243
    .line 244
    const v0, 0x3f666666    # 0.9f

    .line 245
    .line 246
    .line 247
    const v1, -0x402f5c29    # -1.63f

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 251
    .line 252
    .line 253
    const v0, 0x40ee6666    # 7.45f

    .line 254
    .line 255
    .line 256
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 257
    .line 258
    .line 259
    const/high16 v5, 0x3fe00000    # 1.75f

    .line 260
    .line 261
    const v6, -0x407c28f6    # -1.03f

    .line 262
    .line 263
    .line 264
    const/high16 v1, 0x3f400000    # 0.75f

    .line 265
    .line 266
    const v3, 0x3fb47ae1    # 1.41f

    .line 267
    .line 268
    .line 269
    const v4, -0x412e147b    # -0.41f

    .line 270
    .line 271
    .line 272
    move-object v0, v7

    .line 273
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 274
    .line 275
    .line 276
    const v0, 0x40651eb8    # 3.58f

    .line 277
    .line 278
    .line 279
    const v1, -0x3f3051ec    # -6.49f

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 283
    .line 284
    .line 285
    const v5, 0x3df5c28f    # 0.12f

    .line 286
    .line 287
    .line 288
    const v6, -0x410a3d71    # -0.48f

    .line 289
    .line 290
    .line 291
    const v1, 0x3da3d70a    # 0.08f

    .line 292
    .line 293
    .line 294
    const v2, -0x41f0a3d7    # -0.14f

    .line 295
    .line 296
    .line 297
    const v3, 0x3df5c28f    # 0.12f

    .line 298
    .line 299
    .line 300
    const v4, -0x416147ae    # -0.31f

    .line 301
    .line 302
    .line 303
    move-object v0, v7

    .line 304
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 305
    .line 306
    .line 307
    const/high16 v5, -0x40800000    # -1.0f

    .line 308
    .line 309
    const/high16 v6, -0x40800000    # -1.0f

    .line 310
    .line 311
    const/4 v1, 0x0

    .line 312
    const v2, -0x40f33333    # -0.55f

    .line 313
    .line 314
    .line 315
    const v3, -0x4119999a    # -0.45f

    .line 316
    .line 317
    .line 318
    const/high16 v4, -0x40800000    # -1.0f

    .line 319
    .line 320
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 321
    .line 322
    .line 323
    const v0, 0x40a6b852    # 5.21f

    .line 324
    .line 325
    .line 326
    const/high16 v1, 0x40800000    # 4.0f

    .line 327
    .line 328
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 329
    .line 330
    .line 331
    const v0, -0x408f5c29    # -0.94f

    .line 332
    .line 333
    .line 334
    const/high16 v1, -0x40000000    # -2.0f

    .line 335
    .line 336
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 337
    .line 338
    .line 339
    const/high16 v0, 0x3f800000    # 1.0f

    .line 340
    .line 341
    const/high16 v1, 0x40000000    # 2.0f

    .line 342
    .line 343
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 347
    .line 348
    .line 349
    const/high16 v0, 0x41880000    # 17.0f

    .line 350
    .line 351
    const/high16 v1, 0x41900000    # 18.0f

    .line 352
    .line 353
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 354
    .line 355
    .line 356
    const v5, -0x400147ae    # -1.99f

    .line 357
    .line 358
    .line 359
    const/high16 v6, 0x40000000    # 2.0f

    .line 360
    .line 361
    const v1, -0x40733333    # -1.1f

    .line 362
    .line 363
    .line 364
    const/4 v2, 0x0

    .line 365
    const v3, -0x400147ae    # -1.99f

    .line 366
    .line 367
    .line 368
    const v4, 0x3f666666    # 0.9f

    .line 369
    .line 370
    .line 371
    move-object v0, v7

    .line 372
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 373
    .line 374
    .line 375
    const v0, 0x3f63d70a    # 0.89f

    .line 376
    .line 377
    .line 378
    const v1, 0x3ffeb852    # 1.99f

    .line 379
    .line 380
    .line 381
    const/high16 v2, 0x40000000    # 2.0f

    .line 382
    .line 383
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 384
    .line 385
    .line 386
    const v0, -0x4099999a    # -0.9f

    .line 387
    .line 388
    .line 389
    const/high16 v1, -0x40000000    # -2.0f

    .line 390
    .line 391
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 401
    .line 402
    .line 403
    move-result-object v13

    .line 404
    const/16 v27, 0x3800

    .line 405
    .line 406
    const/16 v28, 0x0

    .line 407
    .line 408
    const/high16 v17, 0x3f800000    # 1.0f

    .line 409
    .line 410
    const/high16 v19, 0x3f800000    # 1.0f

    .line 411
    .line 412
    const/16 v18, 0x0

    .line 413
    .line 414
    const/high16 v20, 0x3f800000    # 1.0f

    .line 415
    .line 416
    const/high16 v23, 0x3f800000    # 1.0f

    .line 417
    .line 418
    const/16 v24, 0x0

    .line 419
    .line 420
    const/16 v25, 0x0

    .line 421
    .line 422
    const/16 v26, 0x0

    .line 423
    .line 424
    const-string v15, ""

    .line 425
    .line 426
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    sput-object v0, Landroidx/compose/material/icons/filled/ShoppingCartKt;->_shoppingCart:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 435
    .line 436
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    return-object v0
.end method
