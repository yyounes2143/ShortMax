.class public final Landroidx/compose/material/icons/outlined/PhoneKt;
.super Ljava/lang/Object;
.source "Phone.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _phone:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getPhone(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/outlined/PhoneKt;->_phone:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Outlined.Phone"

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
    const v0, 0x40d147ae    # 6.54f

    .line 80
    .line 81
    .line 82
    const/high16 v1, 0x40a00000    # 5.0f

    .line 83
    .line 84
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    .line 86
    .line 87
    const v5, 0x3ee66666    # 0.45f

    .line 88
    .line 89
    .line 90
    const v6, 0x4025c28f    # 2.59f

    .line 91
    .line 92
    .line 93
    const v1, 0x3d75c28f    # 0.06f

    .line 94
    .line 95
    .line 96
    const v2, 0x3f63d70a    # 0.89f

    .line 97
    .line 98
    .line 99
    const v3, 0x3e570a3d    # 0.21f

    .line 100
    .line 101
    .line 102
    const v4, 0x3fe147ae    # 1.76f

    .line 103
    .line 104
    .line 105
    move-object v0, v7

    .line 106
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    .line 108
    .line 109
    const v0, -0x40666666    # -1.2f

    .line 110
    .line 111
    .line 112
    const v1, 0x3f99999a    # 1.2f

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    .line 117
    .line 118
    const v5, -0x40bd70a4    # -0.76f

    .line 119
    .line 120
    .line 121
    const v6, -0x3f8d70a4    # -3.79f

    .line 122
    .line 123
    .line 124
    const v1, -0x412e147b    # -0.41f

    .line 125
    .line 126
    .line 127
    const v2, -0x40666666    # -1.2f

    .line 128
    .line 129
    .line 130
    const v3, -0x40d47ae1    # -0.67f

    .line 131
    .line 132
    .line 133
    const v4, -0x3fe1eb85    # -2.47f

    .line 134
    .line 135
    .line 136
    move-object v0, v7

    .line 137
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    .line 139
    .line 140
    const v0, 0x3fc147ae    # 1.51f

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 144
    .line 145
    .line 146
    const v0, 0x411dc28f    # 9.86f

    .line 147
    .line 148
    .line 149
    const v1, 0x414051ec    # 12.02f

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 153
    .line 154
    .line 155
    const v5, 0x40266666    # 2.6f

    .line 156
    .line 157
    .line 158
    const v6, 0x3ee66666    # 0.45f

    .line 159
    .line 160
    .line 161
    const v1, 0x3f59999a    # 0.85f

    .line 162
    .line 163
    .line 164
    const v2, 0x3e75c28f    # 0.24f

    .line 165
    .line 166
    .line 167
    const v3, 0x3fdc28f6    # 1.72f

    .line 168
    .line 169
    .line 170
    const v4, 0x3ec7ae14    # 0.39f

    .line 171
    .line 172
    .line 173
    move-object v0, v7

    .line 174
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 175
    .line 176
    .line 177
    const v0, 0x3fbeb852    # 1.49f

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 181
    .line 182
    .line 183
    const v5, -0x3f8ccccd    # -3.8f

    .line 184
    .line 185
    .line 186
    const/high16 v6, -0x40c00000    # -0.75f

    .line 187
    .line 188
    const v1, -0x40570a3d    # -1.32f

    .line 189
    .line 190
    .line 191
    const v2, -0x4247ae14    # -0.09f

    .line 192
    .line 193
    .line 194
    const v3, -0x3fda3d71    # -2.59f

    .line 195
    .line 196
    .line 197
    const v4, -0x414ccccd    # -0.35f

    .line 198
    .line 199
    .line 200
    move-object v0, v7

    .line 201
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 202
    .line 203
    .line 204
    const v0, -0x4067ae14    # -1.19f

    .line 205
    .line 206
    .line 207
    const v1, 0x3f99999a    # 1.2f

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 211
    .line 212
    .line 213
    const/high16 v0, 0x40f00000    # 7.5f

    .line 214
    .line 215
    const/high16 v1, 0x40400000    # 3.0f

    .line 216
    .line 217
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 218
    .line 219
    .line 220
    const/high16 v0, 0x40800000    # 4.0f

    .line 221
    .line 222
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 223
    .line 224
    .line 225
    const/high16 v5, -0x40800000    # -1.0f

    .line 226
    .line 227
    const/high16 v6, 0x3f800000    # 1.0f

    .line 228
    .line 229
    const v1, -0x40f33333    # -0.55f

    .line 230
    .line 231
    .line 232
    const/4 v2, 0x0

    .line 233
    const/high16 v3, -0x40800000    # -1.0f

    .line 234
    .line 235
    const v4, 0x3ee66666    # 0.45f

    .line 236
    .line 237
    .line 238
    move-object v0, v7

    .line 239
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 240
    .line 241
    .line 242
    const/high16 v5, 0x41880000    # 17.0f

    .line 243
    .line 244
    const/high16 v6, 0x41880000    # 17.0f

    .line 245
    .line 246
    const/4 v1, 0x0

    .line 247
    const v2, 0x41163d71    # 9.39f

    .line 248
    .line 249
    .line 250
    const v3, 0x40f3851f    # 7.61f

    .line 251
    .line 252
    .line 253
    const/high16 v4, 0x41880000    # 17.0f

    .line 254
    .line 255
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 256
    .line 257
    .line 258
    const/high16 v5, 0x3f800000    # 1.0f

    .line 259
    .line 260
    const/high16 v6, -0x40800000    # -1.0f

    .line 261
    .line 262
    const v1, 0x3f0ccccd    # 0.55f

    .line 263
    .line 264
    .line 265
    const/4 v2, 0x0

    .line 266
    const/high16 v3, 0x3f800000    # 1.0f

    .line 267
    .line 268
    const v4, -0x4119999a    # -0.45f

    .line 269
    .line 270
    .line 271
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 272
    .line 273
    .line 274
    const v0, -0x3fa0a3d7    # -3.49f

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 278
    .line 279
    .line 280
    const/high16 v5, -0x40800000    # -1.0f

    .line 281
    .line 282
    const/4 v1, 0x0

    .line 283
    const v2, -0x40f33333    # -0.55f

    .line 284
    .line 285
    .line 286
    const v3, -0x4119999a    # -0.45f

    .line 287
    .line 288
    .line 289
    const/high16 v4, -0x40800000    # -1.0f

    .line 290
    .line 291
    move-object v0, v7

    .line 292
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 293
    .line 294
    .line 295
    const v5, -0x3f9b851f    # -3.57f

    .line 296
    .line 297
    .line 298
    const v6, -0x40ee147b    # -0.57f

    .line 299
    .line 300
    .line 301
    const v1, -0x406147ae    # -1.24f

    .line 302
    .line 303
    .line 304
    const/4 v2, 0x0

    .line 305
    const v3, -0x3fe33333    # -2.45f

    .line 306
    .line 307
    .line 308
    const v4, -0x41b33333    # -0.2f

    .line 309
    .line 310
    .line 311
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 312
    .line 313
    .line 314
    const v5, -0x416147ae    # -0.31f

    .line 315
    .line 316
    .line 317
    const v6, -0x42b33333    # -0.05f

    .line 318
    .line 319
    .line 320
    const v1, -0x42333333    # -0.1f

    .line 321
    .line 322
    .line 323
    const v2, -0x42dc28f6    # -0.04f

    .line 324
    .line 325
    .line 326
    const v3, -0x41a8f5c3    # -0.21f

    .line 327
    .line 328
    .line 329
    const v4, -0x42b33333    # -0.05f

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 333
    .line 334
    .line 335
    const v5, -0x40ca3d71    # -0.71f

    .line 336
    .line 337
    .line 338
    const v6, 0x3e947ae1    # 0.29f

    .line 339
    .line 340
    .line 341
    const v1, -0x417ae148    # -0.26f

    .line 342
    .line 343
    .line 344
    const/4 v2, 0x0

    .line 345
    const v3, -0x40fd70a4    # -0.51f

    .line 346
    .line 347
    .line 348
    const v4, 0x3dcccccd    # 0.1f

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 352
    .line 353
    .line 354
    const v0, 0x400ccccd    # 2.2f

    .line 355
    .line 356
    .line 357
    const v1, -0x3ff33333    # -2.2f

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 361
    .line 362
    .line 363
    const v5, -0x3f2d1eb8    # -6.59f

    .line 364
    .line 365
    .line 366
    const v6, -0x3f2d1eb8    # -6.59f

    .line 367
    .line 368
    .line 369
    const v1, -0x3fcae148    # -2.83f

    .line 370
    .line 371
    .line 372
    const v2, -0x40466666    # -1.45f

    .line 373
    .line 374
    .line 375
    const v3, -0x3f5b3333    # -5.15f

    .line 376
    .line 377
    .line 378
    const v4, -0x3f8f5c29    # -3.76f

    .line 379
    .line 380
    .line 381
    move-object v0, v7

    .line 382
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 383
    .line 384
    .line 385
    const v0, 0x400ccccd    # 2.2f

    .line 386
    .line 387
    .line 388
    const v1, -0x3ff33333    # -2.2f

    .line 389
    .line 390
    .line 391
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 392
    .line 393
    .line 394
    const/high16 v5, 0x3e800000    # 0.25f

    .line 395
    .line 396
    const v6, -0x407d70a4    # -1.02f

    .line 397
    .line 398
    .line 399
    const v1, 0x3e8f5c29    # 0.28f

    .line 400
    .line 401
    .line 402
    const v2, -0x4170a3d7    # -0.28f

    .line 403
    .line 404
    .line 405
    const v3, 0x3eb851ec    # 0.36f

    .line 406
    .line 407
    .line 408
    const v4, -0x40d47ae1    # -0.67f

    .line 409
    .line 410
    .line 411
    move-object v0, v7

    .line 412
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 413
    .line 414
    .line 415
    const/high16 v5, 0x41080000    # 8.5f

    .line 416
    .line 417
    const/high16 v6, 0x40800000    # 4.0f

    .line 418
    .line 419
    const v1, 0x410b3333    # 8.7f

    .line 420
    .line 421
    .line 422
    const v2, 0x40ce6666    # 6.45f

    .line 423
    .line 424
    .line 425
    const/high16 v3, 0x41080000    # 8.5f

    .line 426
    .line 427
    const/high16 v4, 0x40a80000    # 5.25f

    .line 428
    .line 429
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 430
    .line 431
    .line 432
    const/high16 v5, -0x40800000    # -1.0f

    .line 433
    .line 434
    const/high16 v6, -0x40800000    # -1.0f

    .line 435
    .line 436
    const/4 v1, 0x0

    .line 437
    const v2, -0x40f33333    # -0.55f

    .line 438
    .line 439
    .line 440
    const v3, -0x4119999a    # -0.45f

    .line 441
    .line 442
    .line 443
    const/high16 v4, -0x40800000    # -1.0f

    .line 444
    .line 445
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 452
    .line 453
    .line 454
    move-result-object v13

    .line 455
    const/16 v27, 0x3800

    .line 456
    .line 457
    const/16 v28, 0x0

    .line 458
    .line 459
    const/high16 v17, 0x3f800000    # 1.0f

    .line 460
    .line 461
    const/high16 v19, 0x3f800000    # 1.0f

    .line 462
    .line 463
    const/16 v18, 0x0

    .line 464
    .line 465
    const/high16 v20, 0x3f800000    # 1.0f

    .line 466
    .line 467
    const/high16 v23, 0x3f800000    # 1.0f

    .line 468
    .line 469
    const/16 v24, 0x0

    .line 470
    .line 471
    const/16 v25, 0x0

    .line 472
    .line 473
    const/16 v26, 0x0

    .line 474
    .line 475
    const-string v15, ""

    .line 476
    .line 477
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    sput-object v0, Landroidx/compose/material/icons/outlined/PhoneKt;->_phone:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 486
    .line 487
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    return-object v0
.end method
