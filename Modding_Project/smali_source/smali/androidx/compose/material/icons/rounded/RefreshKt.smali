.class public final Landroidx/compose/material/icons/rounded/RefreshKt;
.super Ljava/lang/Object;
.source "Refresh.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _refresh:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getRefresh(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/rounded/RefreshKt;->_refresh:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.Refresh"

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
    const v0, 0x418d3333    # 17.65f

    .line 80
    .line 81
    .line 82
    const v1, 0x40cb3333    # 6.35f

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const v5, -0x3f30a3d7    # -6.48f

    .line 89
    .line 90
    .line 91
    const v6, -0x3fec28f6    # -2.31f

    .line 92
    .line 93
    .line 94
    const v1, -0x402f5c29    # -1.63f

    .line 95
    .line 96
    .line 97
    const v2, -0x402f5c29    # -1.63f

    .line 98
    .line 99
    .line 100
    const v3, -0x3f83d70a    # -3.94f

    .line 101
    .line 102
    .line 103
    const v4, -0x3fdb851f    # -2.57f

    .line 104
    .line 105
    .line 106
    move-object v0, v7

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    .line 109
    .line 110
    const v5, -0x3f1ccccd    # -7.1f

    .line 111
    .line 112
    .line 113
    const v6, 0x40e0a3d7    # 7.02f

    .line 114
    .line 115
    .line 116
    const v1, -0x3f951eb8    # -3.67f

    .line 117
    .line 118
    .line 119
    const v2, 0x3ebd70a4    # 0.37f

    .line 120
    .line 121
    .line 122
    const v3, -0x3f29eb85    # -6.69f

    .line 123
    .line 124
    .line 125
    const v4, 0x40566666    # 3.35f

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    .line 130
    .line 131
    const/high16 v5, 0x41400000    # 12.0f

    .line 132
    .line 133
    const/high16 v6, 0x41a00000    # 20.0f

    .line 134
    .line 135
    const v1, 0x406147ae    # 3.52f

    .line 136
    .line 137
    .line 138
    const v2, 0x417e8f5c    # 15.91f

    .line 139
    .line 140
    .line 141
    const v3, 0x40e8a3d7    # 7.27f

    .line 142
    .line 143
    .line 144
    const/high16 v4, 0x41a00000    # 20.0f

    .line 145
    .line 146
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 147
    .line 148
    .line 149
    const v5, 0x40e6b852    # 7.21f

    .line 150
    .line 151
    .line 152
    const v6, -0x3f6e147b    # -4.56f

    .line 153
    .line 154
    .line 155
    const v1, 0x404c28f6    # 3.19f

    .line 156
    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    const v3, 0x40bdc28f    # 5.93f

    .line 160
    .line 161
    .line 162
    const v4, -0x4010a3d7    # -1.87f

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 166
    .line 167
    .line 168
    const v5, -0x4099999a    # -0.9f

    .line 169
    .line 170
    .line 171
    const v6, -0x4047ae14    # -1.44f

    .line 172
    .line 173
    .line 174
    const v1, 0x3ea3d70a    # 0.32f

    .line 175
    .line 176
    .line 177
    const v2, -0x40d47ae1    # -0.67f

    .line 178
    .line 179
    .line 180
    const v3, -0x41dc28f6    # -0.16f

    .line 181
    .line 182
    .line 183
    const v4, -0x4047ae14    # -1.44f

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 187
    .line 188
    .line 189
    const v5, -0x409eb852    # -0.88f

    .line 190
    .line 191
    .line 192
    const v6, 0x3f07ae14    # 0.53f

    .line 193
    .line 194
    .line 195
    const v1, -0x41428f5c    # -0.37f

    .line 196
    .line 197
    .line 198
    const/4 v2, 0x0

    .line 199
    const v3, -0x40c7ae14    # -0.72f

    .line 200
    .line 201
    .line 202
    const v4, 0x3e4ccccd    # 0.2f

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 206
    .line 207
    .line 208
    const v5, -0x3f266666    # -6.8f

    .line 209
    .line 210
    .line 211
    const v6, 0x4053d70a    # 3.31f

    .line 212
    .line 213
    .line 214
    const v1, -0x406f5c29    # -1.13f

    .line 215
    .line 216
    .line 217
    const v2, 0x401b851f    # 2.43f

    .line 218
    .line 219
    .line 220
    const v3, -0x3f8a3d71    # -3.84f

    .line 221
    .line 222
    .line 223
    const v4, 0x407e147b    # 3.97f

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 227
    .line 228
    .line 229
    const v5, -0x3f70a3d7    # -4.48f

    .line 230
    .line 231
    .line 232
    const v6, -0x3f6f5c29    # -4.52f

    .line 233
    .line 234
    .line 235
    const v1, -0x3ff1eb85    # -2.22f

    .line 236
    .line 237
    .line 238
    const v2, -0x41051eb8    # -0.49f

    .line 239
    .line 240
    .line 241
    const v3, -0x3f7fae14    # -4.01f

    .line 242
    .line 243
    .line 244
    const v4, -0x3feccccd    # -2.3f

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 248
    .line 249
    .line 250
    const/high16 v5, 0x41400000    # 12.0f

    .line 251
    .line 252
    const/high16 v6, 0x40c00000    # 6.0f

    .line 253
    .line 254
    const v1, 0x40a9eb85    # 5.31f

    .line 255
    .line 256
    .line 257
    const v2, 0x41170a3d    # 9.44f

    .line 258
    .line 259
    .line 260
    const v3, 0x410428f6    # 8.26f

    .line 261
    .line 262
    .line 263
    const/high16 v4, 0x40c00000    # 6.0f

    .line 264
    .line 265
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 266
    .line 267
    .line 268
    const v5, 0x40870a3d    # 4.22f

    .line 269
    .line 270
    .line 271
    const v6, 0x3fe3d70a    # 1.78f

    .line 272
    .line 273
    .line 274
    const v1, 0x3fd47ae1    # 1.66f

    .line 275
    .line 276
    .line 277
    const/4 v2, 0x0

    .line 278
    const v3, 0x4048f5c3    # 3.14f

    .line 279
    .line 280
    .line 281
    const v4, 0x3f30a3d7    # 0.69f

    .line 282
    .line 283
    .line 284
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 285
    .line 286
    .line 287
    const v0, -0x403eb852    # -1.51f

    .line 288
    .line 289
    .line 290
    const v1, 0x3fc147ae    # 1.51f

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 294
    .line 295
    .line 296
    const v5, 0x3f333333    # 0.7f

    .line 297
    .line 298
    .line 299
    const v6, 0x3fdae148    # 1.71f

    .line 300
    .line 301
    .line 302
    const v1, -0x40deb852    # -0.63f

    .line 303
    .line 304
    .line 305
    const v2, 0x3f2147ae    # 0.63f

    .line 306
    .line 307
    .line 308
    const v3, -0x41bd70a4    # -0.19f

    .line 309
    .line 310
    .line 311
    const v4, 0x3fdae148    # 1.71f

    .line 312
    .line 313
    .line 314
    move-object v0, v7

    .line 315
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 316
    .line 317
    .line 318
    const/high16 v0, 0x41980000    # 19.0f

    .line 319
    .line 320
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 321
    .line 322
    .line 323
    const/high16 v5, 0x3f800000    # 1.0f

    .line 324
    .line 325
    const/high16 v6, -0x40800000    # -1.0f

    .line 326
    .line 327
    const v1, 0x3f0ccccd    # 0.55f

    .line 328
    .line 329
    .line 330
    const/4 v2, 0x0

    .line 331
    const/high16 v3, 0x3f800000    # 1.0f

    .line 332
    .line 333
    const v4, -0x4119999a    # -0.45f

    .line 334
    .line 335
    .line 336
    move-object v0, v7

    .line 337
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 338
    .line 339
    .line 340
    const v0, 0x40cd1eb8    # 6.41f

    .line 341
    .line 342
    .line 343
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 344
    .line 345
    .line 346
    const v5, -0x40251eb8    # -1.71f

    .line 347
    .line 348
    .line 349
    const v6, -0x40ca3d71    # -0.71f

    .line 350
    .line 351
    .line 352
    const/4 v1, 0x0

    .line 353
    const v2, -0x409c28f6    # -0.89f

    .line 354
    .line 355
    .line 356
    const v3, -0x4075c28f    # -1.08f

    .line 357
    .line 358
    .line 359
    const v4, -0x40547ae1    # -1.34f

    .line 360
    .line 361
    .line 362
    move-object v0, v7

    .line 363
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 364
    .line 365
    .line 366
    const v0, -0x40dc28f6    # -0.64f

    .line 367
    .line 368
    .line 369
    const v1, 0x3f266666    # 0.65f

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object v13

    .line 382
    const/16 v27, 0x3800

    .line 383
    .line 384
    const/16 v28, 0x0

    .line 385
    .line 386
    const/high16 v17, 0x3f800000    # 1.0f

    .line 387
    .line 388
    const/high16 v19, 0x3f800000    # 1.0f

    .line 389
    .line 390
    const/16 v18, 0x0

    .line 391
    .line 392
    const/high16 v20, 0x3f800000    # 1.0f

    .line 393
    .line 394
    const/high16 v23, 0x3f800000    # 1.0f

    .line 395
    .line 396
    const/16 v24, 0x0

    .line 397
    .line 398
    const/16 v25, 0x0

    .line 399
    .line 400
    const/16 v26, 0x0

    .line 401
    .line 402
    const-string v15, ""

    .line 403
    .line 404
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    sput-object v0, Landroidx/compose/material/icons/rounded/RefreshKt;->_refresh:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 413
    .line 414
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    return-object v0
.end method
