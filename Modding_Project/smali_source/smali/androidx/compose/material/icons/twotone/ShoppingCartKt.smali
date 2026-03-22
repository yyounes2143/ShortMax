.class public final Landroidx/compose/material/icons/twotone/ShoppingCartKt;
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

.method public static final getShoppingCart(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/twotone/ShoppingCartKt;->_shoppingCart:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "TwoTone.ShoppingCart"

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
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const/high16 v4, 0x41300000    # 11.0f

    .line 82
    .line 83
    const v5, 0x4178cccd    # 15.55f

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    .line 88
    .line 89
    const v4, 0x4030a3d7    # 2.76f

    .line 90
    .line 91
    .line 92
    const/high16 v5, -0x3f600000    # -5.0f

    .line 93
    .line 94
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    .line 96
    .line 97
    const v4, 0x40c51eb8    # 6.16f

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    .line 102
    .line 103
    const v4, 0x4017ae14    # 2.37f

    .line 104
    .line 105
    .line 106
    const/high16 v5, 0x40a00000    # 5.0f

    .line 107
    .line 108
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    const/16 v27, 0x3800

    .line 119
    .line 120
    const/16 v28, 0x0

    .line 121
    .line 122
    const v17, 0x3e99999a    # 0.3f

    .line 123
    .line 124
    .line 125
    const v19, 0x3e99999a    # 0.3f

    .line 126
    .line 127
    .line 128
    const/16 v18, 0x0

    .line 129
    .line 130
    const/high16 v20, 0x3f800000    # 1.0f

    .line 131
    .line 132
    const/high16 v23, 0x3f800000    # 1.0f

    .line 133
    .line 134
    const/16 v24, 0x0

    .line 135
    .line 136
    const/16 v25, 0x0

    .line 137
    .line 138
    const/16 v26, 0x0

    .line 139
    .line 140
    const-string v15, ""

    .line 141
    .line 142
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 143
    .line 144
    .line 145
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 146
    .line 147
    .line 148
    move-result v31

    .line 149
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 150
    .line 151
    move-object/from16 v33, v3

    .line 152
    .line 153
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    const/4 v1, 0x0

    .line 158
    invoke-direct {v3, v4, v5, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 162
    .line 163
    .line 164
    move-result v38

    .line 165
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 166
    .line 167
    .line 168
    move-result v39

    .line 169
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 170
    .line 171
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const/high16 v0, 0x41500000    # 13.0f

    .line 175
    .line 176
    const v1, 0x4178cccd    # 15.55f

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 180
    .line 181
    .line 182
    const/high16 v5, 0x3fe00000    # 1.75f

    .line 183
    .line 184
    const v6, -0x407c28f6    # -1.03f

    .line 185
    .line 186
    .line 187
    const/high16 v1, 0x3f400000    # 0.75f

    .line 188
    .line 189
    const/4 v2, 0x0

    .line 190
    const v3, 0x3fb47ae1    # 1.41f

    .line 191
    .line 192
    .line 193
    const v4, -0x412e147b    # -0.41f

    .line 194
    .line 195
    .line 196
    move-object v0, v7

    .line 197
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 198
    .line 199
    .line 200
    const v0, 0x40651eb8    # 3.58f

    .line 201
    .line 202
    .line 203
    const v1, -0x3f3051ec    # -6.49f

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 207
    .line 208
    .line 209
    const v5, -0x40a147ae    # -0.87f

    .line 210
    .line 211
    .line 212
    const v6, -0x40428f5c    # -1.48f

    .line 213
    .line 214
    .line 215
    const v1, 0x3ebd70a4    # 0.37f

    .line 216
    .line 217
    .line 218
    const v2, -0x40d70a3d    # -0.66f

    .line 219
    .line 220
    .line 221
    const v3, -0x421eb852    # -0.11f

    .line 222
    .line 223
    .line 224
    const v4, -0x40428f5c    # -1.48f

    .line 225
    .line 226
    .line 227
    move-object v0, v7

    .line 228
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 229
    .line 230
    .line 231
    const v0, 0x40a6b852    # 5.21f

    .line 232
    .line 233
    .line 234
    const/high16 v1, 0x40800000    # 4.0f

    .line 235
    .line 236
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 237
    .line 238
    .line 239
    const v0, -0x408f5c29    # -0.94f

    .line 240
    .line 241
    .line 242
    const/high16 v1, -0x40000000    # -2.0f

    .line 243
    .line 244
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 245
    .line 246
    .line 247
    const/high16 v0, 0x3f800000    # 1.0f

    .line 248
    .line 249
    const/high16 v1, 0x40000000    # 2.0f

    .line 250
    .line 251
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 252
    .line 253
    .line 254
    const/high16 v0, 0x40000000    # 2.0f

    .line 255
    .line 256
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 260
    .line 261
    .line 262
    const v0, 0x40666666    # 3.6f

    .line 263
    .line 264
    .line 265
    const v1, 0x40f2e148    # 7.59f

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 269
    .line 270
    .line 271
    const v0, -0x40533333    # -1.35f

    .line 272
    .line 273
    .line 274
    const v1, 0x401c28f6    # 2.44f

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 278
    .line 279
    .line 280
    const/high16 v5, 0x40e00000    # 7.0f

    .line 281
    .line 282
    const/high16 v6, 0x41880000    # 17.0f

    .line 283
    .line 284
    const v1, 0x4090a3d7    # 4.52f

    .line 285
    .line 286
    .line 287
    const v2, 0x4175eb85    # 15.37f

    .line 288
    .line 289
    .line 290
    const v3, 0x40af5c29    # 5.48f

    .line 291
    .line 292
    .line 293
    const/high16 v4, 0x41880000    # 17.0f

    .line 294
    .line 295
    move-object v0, v7

    .line 296
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 297
    .line 298
    .line 299
    const/high16 v0, 0x41400000    # 12.0f

    .line 300
    .line 301
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 302
    .line 303
    .line 304
    const/high16 v0, -0x40000000    # -2.0f

    .line 305
    .line 306
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 307
    .line 308
    .line 309
    const/high16 v0, 0x41700000    # 15.0f

    .line 310
    .line 311
    const/high16 v1, 0x40e00000    # 7.0f

    .line 312
    .line 313
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 314
    .line 315
    .line 316
    const v0, 0x3f8ccccd    # 1.1f

    .line 317
    .line 318
    .line 319
    const/high16 v1, -0x40000000    # -2.0f

    .line 320
    .line 321
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 322
    .line 323
    .line 324
    const v0, 0x40ee6666    # 7.45f

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 331
    .line 332
    .line 333
    const/high16 v0, 0x40c00000    # 6.0f

    .line 334
    .line 335
    const v1, 0x40c51eb8    # 6.16f

    .line 336
    .line 337
    .line 338
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 339
    .line 340
    .line 341
    const v0, 0x41426666    # 12.15f

    .line 342
    .line 343
    .line 344
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 345
    .line 346
    .line 347
    const v0, -0x3fcf5c29    # -2.76f

    .line 348
    .line 349
    .line 350
    const/high16 v1, 0x40a00000    # 5.0f

    .line 351
    .line 352
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 353
    .line 354
    .line 355
    const v0, 0x41087ae1    # 8.53f

    .line 356
    .line 357
    .line 358
    const/high16 v1, 0x41300000    # 11.0f

    .line 359
    .line 360
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 361
    .line 362
    .line 363
    const/high16 v0, 0x40c00000    # 6.0f

    .line 364
    .line 365
    const v1, 0x40c51eb8    # 6.16f

    .line 366
    .line 367
    .line 368
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 372
    .line 373
    .line 374
    const/high16 v0, 0x41900000    # 18.0f

    .line 375
    .line 376
    const/high16 v1, 0x40e00000    # 7.0f

    .line 377
    .line 378
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 379
    .line 380
    .line 381
    const v5, -0x400147ae    # -1.99f

    .line 382
    .line 383
    .line 384
    const/high16 v6, 0x40000000    # 2.0f

    .line 385
    .line 386
    const v1, -0x40733333    # -1.1f

    .line 387
    .line 388
    .line 389
    const/4 v2, 0x0

    .line 390
    const v3, -0x400147ae    # -1.99f

    .line 391
    .line 392
    .line 393
    const v4, 0x3f666666    # 0.9f

    .line 394
    .line 395
    .line 396
    move-object v0, v7

    .line 397
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 398
    .line 399
    .line 400
    const v0, 0x40bccccd    # 5.9f

    .line 401
    .line 402
    .line 403
    const/high16 v1, 0x41b00000    # 22.0f

    .line 404
    .line 405
    const/high16 v2, 0x40e00000    # 7.0f

    .line 406
    .line 407
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 408
    .line 409
    .line 410
    const v0, -0x4099999a    # -0.9f

    .line 411
    .line 412
    .line 413
    const/high16 v1, 0x40000000    # 2.0f

    .line 414
    .line 415
    const/high16 v2, -0x40000000    # -2.0f

    .line 416
    .line 417
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 418
    .line 419
    .line 420
    const/high16 v1, -0x40000000    # -2.0f

    .line 421
    .line 422
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 426
    .line 427
    .line 428
    const/high16 v0, 0x41880000    # 17.0f

    .line 429
    .line 430
    const/high16 v1, 0x41900000    # 18.0f

    .line 431
    .line 432
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 433
    .line 434
    .line 435
    const v1, -0x40733333    # -1.1f

    .line 436
    .line 437
    .line 438
    const/4 v2, 0x0

    .line 439
    move-object v0, v7

    .line 440
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 441
    .line 442
    .line 443
    const v0, 0x3f63d70a    # 0.89f

    .line 444
    .line 445
    .line 446
    const v1, 0x3ffeb852    # 1.99f

    .line 447
    .line 448
    .line 449
    const/high16 v2, 0x40000000    # 2.0f

    .line 450
    .line 451
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 452
    .line 453
    .line 454
    const v0, -0x4099999a    # -0.9f

    .line 455
    .line 456
    .line 457
    const/high16 v1, 0x40000000    # 2.0f

    .line 458
    .line 459
    const/high16 v2, -0x40000000    # -2.0f

    .line 460
    .line 461
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 462
    .line 463
    .line 464
    const/high16 v1, -0x40000000    # -2.0f

    .line 465
    .line 466
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 473
    .line 474
    .line 475
    move-result-object v30

    .line 476
    const/16 v44, 0x3800

    .line 477
    .line 478
    const/16 v45, 0x0

    .line 479
    .line 480
    const/high16 v34, 0x3f800000    # 1.0f

    .line 481
    .line 482
    const/high16 v36, 0x3f800000    # 1.0f

    .line 483
    .line 484
    const/16 v35, 0x0

    .line 485
    .line 486
    const/high16 v37, 0x3f800000    # 1.0f

    .line 487
    .line 488
    const/high16 v40, 0x3f800000    # 1.0f

    .line 489
    .line 490
    const/16 v41, 0x0

    .line 491
    .line 492
    const/16 v42, 0x0

    .line 493
    .line 494
    const/16 v43, 0x0

    .line 495
    .line 496
    const-string v32, ""

    .line 497
    .line 498
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    sput-object v0, Landroidx/compose/material/icons/twotone/ShoppingCartKt;->_shoppingCart:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 507
    .line 508
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    return-object v0
.end method
