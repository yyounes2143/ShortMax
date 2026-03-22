.class public final Landroidx/compose/material/icons/twotone/LocationOnKt;
.super Ljava/lang/Object;
.source "LocationOn.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _locationOn:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getLocationOn(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 63
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
    sget-object v0, Landroidx/compose/material/icons/twotone/LocationOnKt;->_locationOn:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    move-object/from16 v46, v1

    .line 19
    .line 20
    move-object/from16 v29, v1

    .line 21
    .line 22
    move-object v12, v1

    .line 23
    const/high16 v0, 0x41c00000    # 24.0f

    .line 24
    .line 25
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/16 v10, 0x60

    .line 34
    .line 35
    const/4 v11, 0x0

    .line 36
    const/high16 v5, 0x41c00000    # 24.0f

    .line 37
    .line 38
    const/high16 v6, 0x41c00000    # 24.0f

    .line 39
    .line 40
    const-wide/16 v7, 0x0

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    const-string v2, "TwoTone.LocationOn"

    .line 44
    .line 45
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 49
    .line 50
    .line 51
    move-result v14

    .line 52
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 53
    .line 54
    move-object/from16 v16, v0

    .line 55
    .line 56
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-direct {v0, v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 69
    .line 70
    .line 71
    move-result v21

    .line 72
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 75
    .line 76
    .line 77
    move-result v22

    .line 78
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    .line 80
    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const/high16 v3, 0x40800000    # 4.0f

    .line 84
    .line 85
    const/high16 v4, 0x41400000    # 12.0f

    .line 86
    .line 87
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    .line 89
    .line 90
    const/high16 v8, 0x40e00000    # 7.0f

    .line 91
    .line 92
    const/high16 v9, 0x41100000    # 9.0f

    .line 93
    .line 94
    const v4, 0x4113d70a    # 9.24f

    .line 95
    .line 96
    .line 97
    const/high16 v5, 0x40800000    # 4.0f

    .line 98
    .line 99
    const/high16 v6, 0x40e00000    # 7.0f

    .line 100
    .line 101
    const v7, 0x40c7ae14    # 6.24f

    .line 102
    .line 103
    .line 104
    move-object v3, v10

    .line 105
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    .line 107
    .line 108
    const/high16 v8, 0x40a00000    # 5.0f

    .line 109
    .line 110
    const v9, 0x411e147b    # 9.88f

    .line 111
    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    const v5, 0x40366666    # 2.85f

    .line 115
    .line 116
    .line 117
    const v6, 0x403ae148    # 2.92f

    .line 118
    .line 119
    .line 120
    const v7, 0x40e6b852    # 7.21f

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    .line 125
    .line 126
    const v9, -0x3ee1eb85    # -9.88f

    .line 127
    .line 128
    .line 129
    const v4, 0x40070a3d    # 2.11f

    .line 130
    .line 131
    .line 132
    const v5, -0x3fd3d70a    # -2.69f

    .line 133
    .line 134
    .line 135
    const/high16 v6, 0x40a00000    # 5.0f

    .line 136
    .line 137
    const/high16 v7, -0x3f200000    # -7.0f

    .line 138
    .line 139
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 140
    .line 141
    .line 142
    const/high16 v8, -0x3f600000    # -5.0f

    .line 143
    .line 144
    const/high16 v9, -0x3f600000    # -5.0f

    .line 145
    .line 146
    const/4 v4, 0x0

    .line 147
    const v5, -0x3fcf5c29    # -2.76f

    .line 148
    .line 149
    .line 150
    const v6, -0x3ff0a3d7    # -2.24f

    .line 151
    .line 152
    .line 153
    const/high16 v7, -0x3f600000    # -5.0f

    .line 154
    .line 155
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 159
    .line 160
    .line 161
    const/high16 v3, 0x41380000    # 11.5f

    .line 162
    .line 163
    const/high16 v4, 0x41400000    # 12.0f

    .line 164
    .line 165
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 166
    .line 167
    .line 168
    const/high16 v8, -0x3fe00000    # -2.5f

    .line 169
    .line 170
    const/high16 v9, -0x3fe00000    # -2.5f

    .line 171
    .line 172
    const v4, -0x404f5c29    # -1.38f

    .line 173
    .line 174
    .line 175
    const/4 v5, 0x0

    .line 176
    const/high16 v6, -0x3fe00000    # -2.5f

    .line 177
    .line 178
    const v7, -0x4070a3d7    # -1.12f

    .line 179
    .line 180
    .line 181
    move-object v3, v10

    .line 182
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 183
    .line 184
    .line 185
    const v3, 0x3f8f5c29    # 1.12f

    .line 186
    .line 187
    .line 188
    const/high16 v4, -0x3fe00000    # -2.5f

    .line 189
    .line 190
    const/high16 v5, 0x40200000    # 2.5f

    .line 191
    .line 192
    invoke-virtual {v10, v3, v4, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 193
    .line 194
    .line 195
    const/high16 v4, 0x40200000    # 2.5f

    .line 196
    .line 197
    invoke-virtual {v10, v4, v3, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 198
    .line 199
    .line 200
    const v3, -0x4070a3d7    # -1.12f

    .line 201
    .line 202
    .line 203
    const/high16 v4, -0x3fe00000    # -2.5f

    .line 204
    .line 205
    invoke-virtual {v10, v3, v5, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v13

    .line 215
    const/16 v27, 0x3800

    .line 216
    .line 217
    const/16 v28, 0x0

    .line 218
    .line 219
    const v17, 0x3e99999a    # 0.3f

    .line 220
    .line 221
    .line 222
    const v19, 0x3e99999a    # 0.3f

    .line 223
    .line 224
    .line 225
    const/16 v18, 0x0

    .line 226
    .line 227
    const/high16 v20, 0x3f800000    # 1.0f

    .line 228
    .line 229
    const/high16 v23, 0x3f800000    # 1.0f

    .line 230
    .line 231
    const/16 v24, 0x0

    .line 232
    .line 233
    const/16 v25, 0x0

    .line 234
    .line 235
    const/16 v26, 0x0

    .line 236
    .line 237
    const-string v15, ""

    .line 238
    .line 239
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 240
    .line 241
    .line 242
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 243
    .line 244
    .line 245
    move-result v31

    .line 246
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 247
    .line 248
    move-object/from16 v33, v3

    .line 249
    .line 250
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 251
    .line 252
    .line 253
    move-result-wide v4

    .line 254
    const/4 v6, 0x0

    .line 255
    invoke-direct {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 259
    .line 260
    .line 261
    move-result v38

    .line 262
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 263
    .line 264
    .line 265
    move-result v39

    .line 266
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 267
    .line 268
    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const/high16 v3, 0x40000000    # 2.0f

    .line 272
    .line 273
    const/high16 v4, 0x41400000    # 12.0f

    .line 274
    .line 275
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 276
    .line 277
    .line 278
    const/high16 v8, 0x40a00000    # 5.0f

    .line 279
    .line 280
    const/high16 v9, 0x41100000    # 9.0f

    .line 281
    .line 282
    const v4, 0x4102147b    # 8.13f

    .line 283
    .line 284
    .line 285
    const/high16 v5, 0x40000000    # 2.0f

    .line 286
    .line 287
    const/high16 v6, 0x40a00000    # 5.0f

    .line 288
    .line 289
    const v7, 0x40a428f6    # 5.13f

    .line 290
    .line 291
    .line 292
    move-object v3, v10

    .line 293
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 294
    .line 295
    .line 296
    const/high16 v8, 0x40e00000    # 7.0f

    .line 297
    .line 298
    const/high16 v9, 0x41500000    # 13.0f

    .line 299
    .line 300
    const/4 v4, 0x0

    .line 301
    const/high16 v5, 0x40a80000    # 5.25f

    .line 302
    .line 303
    const/high16 v6, 0x40e00000    # 7.0f

    .line 304
    .line 305
    const/high16 v7, 0x41500000    # 13.0f

    .line 306
    .line 307
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 308
    .line 309
    .line 310
    const/high16 v3, -0x3f080000    # -7.75f

    .line 311
    .line 312
    const/high16 v4, -0x3eb00000    # -13.0f

    .line 313
    .line 314
    const/high16 v5, 0x40e00000    # 7.0f

    .line 315
    .line 316
    invoke-virtual {v10, v5, v3, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 317
    .line 318
    .line 319
    const/high16 v8, -0x3f200000    # -7.0f

    .line 320
    .line 321
    const/high16 v9, -0x3f200000    # -7.0f

    .line 322
    .line 323
    const/4 v4, 0x0

    .line 324
    const v5, -0x3f8851ec    # -3.87f

    .line 325
    .line 326
    .line 327
    const v6, -0x3fb7ae14    # -3.13f

    .line 328
    .line 329
    .line 330
    const/high16 v7, -0x3f200000    # -7.0f

    .line 331
    .line 332
    move-object v3, v10

    .line 333
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 337
    .line 338
    .line 339
    const/high16 v3, 0x41100000    # 9.0f

    .line 340
    .line 341
    const/high16 v4, 0x40e00000    # 7.0f

    .line 342
    .line 343
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 344
    .line 345
    .line 346
    const/high16 v8, 0x40a00000    # 5.0f

    .line 347
    .line 348
    const/high16 v9, -0x3f600000    # -5.0f

    .line 349
    .line 350
    const/4 v4, 0x0

    .line 351
    const v5, -0x3fcf5c29    # -2.76f

    .line 352
    .line 353
    .line 354
    const v6, 0x400f5c29    # 2.24f

    .line 355
    .line 356
    .line 357
    const/high16 v7, -0x3f600000    # -5.0f

    .line 358
    .line 359
    move-object v3, v10

    .line 360
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 361
    .line 362
    .line 363
    const v3, 0x400f5c29    # 2.24f

    .line 364
    .line 365
    .line 366
    const/high16 v4, 0x40a00000    # 5.0f

    .line 367
    .line 368
    invoke-virtual {v10, v4, v3, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 369
    .line 370
    .line 371
    const/high16 v8, -0x3f600000    # -5.0f

    .line 372
    .line 373
    const v9, 0x411e147b    # 9.88f

    .line 374
    .line 375
    .line 376
    const/4 v4, 0x0

    .line 377
    const v5, 0x403851ec    # 2.88f

    .line 378
    .line 379
    .line 380
    const v6, -0x3fc7ae14    # -2.88f

    .line 381
    .line 382
    .line 383
    const v7, 0x40e6147b    # 7.19f

    .line 384
    .line 385
    .line 386
    move-object v3, v10

    .line 387
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 388
    .line 389
    .line 390
    const/high16 v8, 0x40e00000    # 7.0f

    .line 391
    .line 392
    const/high16 v9, 0x41100000    # 9.0f

    .line 393
    .line 394
    const v4, 0x411eb852    # 9.92f

    .line 395
    .line 396
    .line 397
    const v5, 0x4181ae14    # 16.21f

    .line 398
    .line 399
    .line 400
    const/high16 v6, 0x40e00000    # 7.0f

    .line 401
    .line 402
    const v7, 0x413d999a    # 11.85f

    .line 403
    .line 404
    .line 405
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 412
    .line 413
    .line 414
    move-result-object v30

    .line 415
    const/16 v44, 0x3800

    .line 416
    .line 417
    const/16 v45, 0x0

    .line 418
    .line 419
    const/high16 v34, 0x3f800000    # 1.0f

    .line 420
    .line 421
    const/high16 v36, 0x3f800000    # 1.0f

    .line 422
    .line 423
    const/16 v35, 0x0

    .line 424
    .line 425
    const/high16 v37, 0x3f800000    # 1.0f

    .line 426
    .line 427
    const/high16 v40, 0x3f800000    # 1.0f

    .line 428
    .line 429
    const/16 v41, 0x0

    .line 430
    .line 431
    const/16 v42, 0x0

    .line 432
    .line 433
    const/16 v43, 0x0

    .line 434
    .line 435
    const-string v32, ""

    .line 436
    .line 437
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 438
    .line 439
    .line 440
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 441
    .line 442
    .line 443
    move-result v48

    .line 444
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 445
    .line 446
    move-object/from16 v50, v3

    .line 447
    .line 448
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 449
    .line 450
    .line 451
    move-result-wide v4

    .line 452
    const/4 v1, 0x0

    .line 453
    invoke-direct {v3, v4, v5, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 457
    .line 458
    .line 459
    move-result v55

    .line 460
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 461
    .line 462
    .line 463
    move-result v56

    .line 464
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 465
    .line 466
    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    const/high16 v0, 0x41100000    # 9.0f

    .line 470
    .line 471
    const/high16 v1, 0x41400000    # 12.0f

    .line 472
    .line 473
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 474
    .line 475
    .line 476
    const/4 v0, 0x0

    .line 477
    const/high16 v1, -0x3fe00000    # -2.5f

    .line 478
    .line 479
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 480
    .line 481
    .line 482
    const/high16 v6, 0x40a00000    # 5.0f

    .line 483
    .line 484
    const/4 v7, 0x0

    .line 485
    const/high16 v1, 0x40200000    # 2.5f

    .line 486
    .line 487
    const/high16 v2, 0x40200000    # 2.5f

    .line 488
    .line 489
    const/4 v3, 0x0

    .line 490
    const/4 v4, 0x1

    .line 491
    const/4 v5, 0x1

    .line 492
    move-object v0, v8

    .line 493
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 494
    .line 495
    .line 496
    const/high16 v6, -0x3f600000    # -5.0f

    .line 497
    .line 498
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 502
    .line 503
    .line 504
    move-result-object v47

    .line 505
    const/16 v61, 0x3800

    .line 506
    .line 507
    const/16 v62, 0x0

    .line 508
    .line 509
    const/high16 v51, 0x3f800000    # 1.0f

    .line 510
    .line 511
    const/high16 v53, 0x3f800000    # 1.0f

    .line 512
    .line 513
    const/16 v52, 0x0

    .line 514
    .line 515
    const/high16 v54, 0x3f800000    # 1.0f

    .line 516
    .line 517
    const/high16 v57, 0x3f800000    # 1.0f

    .line 518
    .line 519
    const/16 v58, 0x0

    .line 520
    .line 521
    const/16 v59, 0x0

    .line 522
    .line 523
    const/16 v60, 0x0

    .line 524
    .line 525
    const-string v49, ""

    .line 526
    .line 527
    invoke-static/range {v46 .. v62}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    sput-object v0, Landroidx/compose/material/icons/twotone/LocationOnKt;->_locationOn:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 536
    .line 537
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    return-object v0
.end method
