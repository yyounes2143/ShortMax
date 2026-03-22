.class public final Landroidx/compose/material/icons/outlined/FaceKt;
.super Ljava/lang/Object;
.source "Face.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _face:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getFace(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/outlined/FaceKt;->_face:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Outlined.Face"

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
    const/high16 v0, 0x41240000    # 10.25f

    .line 80
    .line 81
    const/high16 v1, 0x41500000    # 13.0f

    .line 82
    .line 83
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .line 85
    .line 86
    const/high16 v5, -0x40600000    # -1.25f

    .line 87
    .line 88
    const/high16 v6, 0x3fa00000    # 1.25f

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    const v2, 0x3f30a3d7    # 0.69f

    .line 92
    .line 93
    .line 94
    const v3, -0x40f0a3d7    # -0.56f

    .line 95
    .line 96
    .line 97
    const/high16 v4, 0x3fa00000    # 1.25f

    .line 98
    .line 99
    move-object v0, v7

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    .line 102
    .line 103
    const v0, 0x415b0a3d    # 13.69f

    .line 104
    .line 105
    .line 106
    const/high16 v1, 0x40f80000    # 7.75f

    .line 107
    .line 108
    const/high16 v2, 0x41500000    # 13.0f

    .line 109
    .line 110
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    .line 112
    .line 113
    const v0, 0x3f0f5c29    # 0.56f

    .line 114
    .line 115
    .line 116
    const/high16 v1, -0x40600000    # -1.25f

    .line 117
    .line 118
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 119
    .line 120
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    .line 122
    .line 123
    const/high16 v1, 0x3fa00000    # 1.25f

    .line 124
    .line 125
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    .line 130
    .line 131
    const/high16 v0, 0x41700000    # 15.0f

    .line 132
    .line 133
    const/high16 v1, 0x413c0000    # 11.75f

    .line 134
    .line 135
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    .line 137
    .line 138
    const v1, -0x40cf5c29    # -0.69f

    .line 139
    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    const/high16 v3, -0x40600000    # -1.25f

    .line 143
    .line 144
    const v4, 0x3f0f5c29    # 0.56f

    .line 145
    .line 146
    .line 147
    move-object v0, v7

    .line 148
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 149
    .line 150
    .line 151
    const v0, 0x3f0f5c29    # 0.56f

    .line 152
    .line 153
    .line 154
    const/high16 v1, 0x3fa00000    # 1.25f

    .line 155
    .line 156
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 157
    .line 158
    .line 159
    const v0, -0x40f0a3d7    # -0.56f

    .line 160
    .line 161
    .line 162
    const/high16 v1, -0x40600000    # -1.25f

    .line 163
    .line 164
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 165
    .line 166
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 173
    .line 174
    .line 175
    const/high16 v0, 0x41b00000    # 22.0f

    .line 176
    .line 177
    const/high16 v1, 0x41400000    # 12.0f

    .line 178
    .line 179
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 180
    .line 181
    .line 182
    const/high16 v5, -0x3ee00000    # -10.0f

    .line 183
    .line 184
    const/high16 v6, 0x41200000    # 10.0f

    .line 185
    .line 186
    const/4 v1, 0x0

    .line 187
    const v2, 0x40b0a3d7    # 5.52f

    .line 188
    .line 189
    .line 190
    const v3, -0x3f70a3d7    # -4.48f

    .line 191
    .line 192
    .line 193
    const/high16 v4, 0x41200000    # 10.0f

    .line 194
    .line 195
    move-object v0, v7

    .line 196
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 197
    .line 198
    .line 199
    const v0, 0x418c28f6    # 17.52f

    .line 200
    .line 201
    .line 202
    const/high16 v1, 0x40000000    # 2.0f

    .line 203
    .line 204
    const/high16 v2, 0x41400000    # 12.0f

    .line 205
    .line 206
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 207
    .line 208
    .line 209
    const v0, 0x40cf5c29    # 6.48f

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 213
    .line 214
    .line 215
    const v0, 0x408f5c29    # 4.48f

    .line 216
    .line 217
    .line 218
    const/high16 v1, 0x41200000    # 10.0f

    .line 219
    .line 220
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 224
    .line 225
    .line 226
    const v0, 0x412a8f5c    # 10.66f

    .line 227
    .line 228
    .line 229
    const v1, 0x4083d70a    # 4.12f

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 233
    .line 234
    .line 235
    const/high16 v5, 0x418c0000    # 17.5f

    .line 236
    .line 237
    const/high16 v6, 0x41000000    # 8.0f

    .line 238
    .line 239
    const v1, 0x4140f5c3    # 12.06f

    .line 240
    .line 241
    .line 242
    const v2, 0x40ce147b    # 6.44f

    .line 243
    .line 244
    .line 245
    const v3, 0x4169999a    # 14.6f

    .line 246
    .line 247
    .line 248
    const/high16 v4, 0x41000000    # 8.0f

    .line 249
    .line 250
    move-object v0, v7

    .line 251
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 252
    .line 253
    .line 254
    const v5, 0x3fab851f    # 1.34f

    .line 255
    .line 256
    .line 257
    const v6, -0x420a3d71    # -0.12f

    .line 258
    .line 259
    .line 260
    const v1, 0x3eeb851f    # 0.46f

    .line 261
    .line 262
    .line 263
    const/4 v2, 0x0

    .line 264
    const v3, 0x3f68f5c3    # 0.91f

    .line 265
    .line 266
    .line 267
    const v4, -0x42b33333    # -0.05f

    .line 268
    .line 269
    .line 270
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 271
    .line 272
    .line 273
    const/high16 v5, 0x41400000    # 12.0f

    .line 274
    .line 275
    const/high16 v6, 0x40800000    # 4.0f

    .line 276
    .line 277
    const v1, 0x418b851f    # 17.44f

    .line 278
    .line 279
    .line 280
    const v2, 0x40b1eb85    # 5.56f

    .line 281
    .line 282
    .line 283
    const v3, 0x416e6666    # 14.9f

    .line 284
    .line 285
    .line 286
    const/high16 v4, 0x40800000    # 4.0f

    .line 287
    .line 288
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 289
    .line 290
    .line 291
    const v5, -0x40547ae1    # -1.34f

    .line 292
    .line 293
    .line 294
    const v6, 0x3df5c28f    # 0.12f

    .line 295
    .line 296
    .line 297
    const v1, -0x41147ae1    # -0.46f

    .line 298
    .line 299
    .line 300
    const/4 v2, 0x0

    .line 301
    const v3, -0x40970a3d    # -0.91f

    .line 302
    .line 303
    .line 304
    const v4, 0x3d4ccccd    # 0.05f

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 311
    .line 312
    .line 313
    const v0, 0x408d70a4    # 4.42f

    .line 314
    .line 315
    .line 316
    const v1, 0x4117851f    # 9.47f

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 320
    .line 321
    .line 322
    const v5, 0x406a3d71    # 3.66f

    .line 323
    .line 324
    .line 325
    const v6, -0x3f71eb85    # -4.44f

    .line 326
    .line 327
    .line 328
    const v1, 0x3fdae148    # 1.71f

    .line 329
    .line 330
    .line 331
    const v2, -0x4087ae14    # -0.97f

    .line 332
    .line 333
    .line 334
    const v3, 0x4041eb85    # 3.03f

    .line 335
    .line 336
    .line 337
    const v4, -0x3fdccccd    # -2.55f

    .line 338
    .line 339
    .line 340
    move-object v0, v7

    .line 341
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 342
    .line 343
    .line 344
    const v5, 0x408d70a4    # 4.42f

    .line 345
    .line 346
    .line 347
    const v6, 0x4117851f    # 9.47f

    .line 348
    .line 349
    .line 350
    const v1, 0x40cbd70a    # 6.37f

    .line 351
    .line 352
    .line 353
    const/high16 v2, 0x40c00000    # 6.0f

    .line 354
    .line 355
    const v3, 0x40a1999a    # 5.05f

    .line 356
    .line 357
    .line 358
    const v4, 0x40f28f5c    # 7.58f

    .line 359
    .line 360
    .line 361
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 365
    .line 366
    .line 367
    const/high16 v0, 0x41a00000    # 20.0f

    .line 368
    .line 369
    const/high16 v1, 0x41400000    # 12.0f

    .line 370
    .line 371
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 372
    .line 373
    .line 374
    const v5, -0x41570a3d    # -0.33f

    .line 375
    .line 376
    .line 377
    const v6, -0x3ff0a3d7    # -2.24f

    .line 378
    .line 379
    .line 380
    const/4 v1, 0x0

    .line 381
    const v2, -0x40b851ec    # -0.78f

    .line 382
    .line 383
    .line 384
    const v3, -0x420a3d71    # -0.12f

    .line 385
    .line 386
    .line 387
    const v4, -0x403c28f6    # -1.53f

    .line 388
    .line 389
    .line 390
    move-object v0, v7

    .line 391
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 392
    .line 393
    .line 394
    const v5, -0x3ff51eb8    # -2.17f

    .line 395
    .line 396
    .line 397
    const v6, 0x3e75c28f    # 0.24f

    .line 398
    .line 399
    .line 400
    const v1, -0x40cccccd    # -0.7f

    .line 401
    .line 402
    .line 403
    const v2, 0x3e19999a    # 0.15f

    .line 404
    .line 405
    .line 406
    const v3, -0x404a3d71    # -1.42f

    .line 407
    .line 408
    .line 409
    const v4, 0x3e75c28f    # 0.24f

    .line 410
    .line 411
    .line 412
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 413
    .line 414
    .line 415
    const v5, -0x3f07ae14    # -7.76f

    .line 416
    .line 417
    .line 418
    const v6, -0x3f93d70a    # -3.69f

    .line 419
    .line 420
    .line 421
    const v1, -0x3fb7ae14    # -3.13f

    .line 422
    .line 423
    .line 424
    const/4 v2, 0x0

    .line 425
    const v3, -0x3f428f5c    # -5.92f

    .line 426
    .line 427
    .line 428
    const v4, -0x4047ae14    # -1.44f

    .line 429
    .line 430
    .line 431
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 432
    .line 433
    .line 434
    const/high16 v5, 0x40800000    # 4.0f

    .line 435
    .line 436
    const v6, 0x413dc28f    # 11.86f

    .line 437
    .line 438
    .line 439
    const v1, 0x410b0a3d    # 8.69f

    .line 440
    .line 441
    .line 442
    const v2, 0x410deb85    # 8.87f

    .line 443
    .line 444
    .line 445
    const v3, 0x40d33333    # 6.6f

    .line 446
    .line 447
    .line 448
    const v4, 0x412e147b    # 10.88f

    .line 449
    .line 450
    .line 451
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 452
    .line 453
    .line 454
    const/4 v5, 0x0

    .line 455
    const v6, 0x3e0f5c29    # 0.14f

    .line 456
    .line 457
    .line 458
    const v1, 0x3c23d70a    # 0.01f

    .line 459
    .line 460
    .line 461
    const v2, 0x3d23d70a    # 0.04f

    .line 462
    .line 463
    .line 464
    const/4 v3, 0x0

    .line 465
    const v4, 0x3db851ec    # 0.09f

    .line 466
    .line 467
    .line 468
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 469
    .line 470
    .line 471
    const/high16 v5, 0x41000000    # 8.0f

    .line 472
    .line 473
    const/high16 v6, 0x41000000    # 8.0f

    .line 474
    .line 475
    const/4 v1, 0x0

    .line 476
    const v2, 0x408d1eb8    # 4.41f

    .line 477
    .line 478
    .line 479
    const v3, 0x4065c28f    # 3.59f

    .line 480
    .line 481
    .line 482
    const/high16 v4, 0x41000000    # 8.0f

    .line 483
    .line 484
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 485
    .line 486
    .line 487
    const v0, -0x3f9a3d71    # -3.59f

    .line 488
    .line 489
    .line 490
    const/high16 v1, -0x3f000000    # -8.0f

    .line 491
    .line 492
    const/high16 v2, 0x41000000    # 8.0f

    .line 493
    .line 494
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 501
    .line 502
    .line 503
    move-result-object v13

    .line 504
    const/16 v27, 0x3800

    .line 505
    .line 506
    const/16 v28, 0x0

    .line 507
    .line 508
    const/high16 v17, 0x3f800000    # 1.0f

    .line 509
    .line 510
    const/high16 v19, 0x3f800000    # 1.0f

    .line 511
    .line 512
    const/16 v18, 0x0

    .line 513
    .line 514
    const/high16 v20, 0x3f800000    # 1.0f

    .line 515
    .line 516
    const/high16 v23, 0x3f800000    # 1.0f

    .line 517
    .line 518
    const/16 v24, 0x0

    .line 519
    .line 520
    const/16 v25, 0x0

    .line 521
    .line 522
    const/16 v26, 0x0

    .line 523
    .line 524
    const-string v15, ""

    .line 525
    .line 526
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    sput-object v0, Landroidx/compose/material/icons/outlined/FaceKt;->_face:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 535
    .line 536
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    return-object v0
.end method
