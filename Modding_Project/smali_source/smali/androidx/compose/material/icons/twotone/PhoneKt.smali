.class public final Landroidx/compose/material/icons/twotone/PhoneKt;
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

.method public static final getPhone(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/twotone/PhoneKt;->_phone:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "TwoTone.Phone"

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
    const/high16 v3, 0x41980000    # 19.0f

    .line 82
    .line 83
    const v4, 0x418bc28f    # 17.47f

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    .line 88
    .line 89
    const v8, -0x3fd9999a    # -2.6f

    .line 90
    .line 91
    .line 92
    const v9, -0x4119999a    # -0.45f

    .line 93
    .line 94
    .line 95
    const v4, -0x409eb852    # -0.88f

    .line 96
    .line 97
    .line 98
    const v5, -0x4270a3d7    # -0.07f

    .line 99
    .line 100
    .line 101
    const/high16 v6, -0x40200000    # -1.75f

    .line 102
    .line 103
    const v7, -0x419eb852    # -0.22f

    .line 104
    .line 105
    .line 106
    move-object v3, v10

    .line 107
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    .line 109
    .line 110
    const v3, 0x3f9851ec    # 1.19f

    .line 111
    .line 112
    .line 113
    const v4, -0x4067ae14    # -1.19f

    .line 114
    .line 115
    .line 116
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    .line 118
    .line 119
    const v8, 0x40733333    # 3.8f

    .line 120
    .line 121
    .line 122
    const/high16 v9, 0x3f400000    # 0.75f

    .line 123
    .line 124
    const v4, 0x3f99999a    # 1.2f

    .line 125
    .line 126
    .line 127
    const v5, 0x3ed1eb85    # 0.41f

    .line 128
    .line 129
    .line 130
    const v6, 0x401eb852    # 2.48f

    .line 131
    .line 132
    .line 133
    const v7, 0x3f2b851f    # 0.67f

    .line 134
    .line 135
    .line 136
    move-object v3, v10

    .line 137
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    .line 139
    .line 140
    const v3, -0x404147ae    # -1.49f

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 147
    .line 148
    .line 149
    const/high16 v3, 0x40a00000    # 5.0f

    .line 150
    .line 151
    const v4, 0x40a0f5c3    # 5.03f

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 155
    .line 156
    .line 157
    const/high16 v8, 0x3f400000    # 0.75f

    .line 158
    .line 159
    const v9, 0x40733333    # 3.8f

    .line 160
    .line 161
    .line 162
    const v4, 0x3db851ec    # 0.09f

    .line 163
    .line 164
    .line 165
    const v5, 0x3fa8f5c3    # 1.32f

    .line 166
    .line 167
    .line 168
    const v6, 0x3eb33333    # 0.35f

    .line 169
    .line 170
    .line 171
    const v7, 0x4025c28f    # 2.59f

    .line 172
    .line 173
    .line 174
    move-object v3, v10

    .line 175
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 176
    .line 177
    .line 178
    const v3, -0x40666666    # -1.2f

    .line 179
    .line 180
    .line 181
    const v4, 0x3f99999a    # 1.2f

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 185
    .line 186
    .line 187
    const v8, -0x411eb852    # -0.44f

    .line 188
    .line 189
    .line 190
    const v9, -0x3fd9999a    # -2.6f

    .line 191
    .line 192
    .line 193
    const v4, -0x41947ae1    # -0.23f

    .line 194
    .line 195
    .line 196
    const v5, -0x40a8f5c3    # -0.84f

    .line 197
    .line 198
    .line 199
    const v6, -0x413d70a4    # -0.38f

    .line 200
    .line 201
    .line 202
    const v7, -0x40251eb8    # -1.71f

    .line 203
    .line 204
    .line 205
    move-object v3, v10

    .line 206
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 207
    .line 208
    .line 209
    const v3, 0x40a0f5c3    # 5.03f

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

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
    const v0, 0x41111eb8    # 9.07f

    .line 279
    .line 280
    .line 281
    const v1, 0x40f23d71    # 7.57f

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 285
    .line 286
    .line 287
    const/high16 v5, 0x41080000    # 8.5f

    .line 288
    .line 289
    const/high16 v6, 0x40800000    # 4.0f

    .line 290
    .line 291
    const v1, 0x410b3333    # 8.7f

    .line 292
    .line 293
    .line 294
    const v2, 0x40ce6666    # 6.45f

    .line 295
    .line 296
    .line 297
    const/high16 v3, 0x41080000    # 8.5f

    .line 298
    .line 299
    const/high16 v4, 0x40a80000    # 5.25f

    .line 300
    .line 301
    move-object v0, v7

    .line 302
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 303
    .line 304
    .line 305
    const/high16 v5, -0x40800000    # -1.0f

    .line 306
    .line 307
    const/high16 v6, -0x40800000    # -1.0f

    .line 308
    .line 309
    const/4 v1, 0x0

    .line 310
    const v2, -0x40f33333    # -0.55f

    .line 311
    .line 312
    .line 313
    const v3, -0x4119999a    # -0.45f

    .line 314
    .line 315
    .line 316
    const/high16 v4, -0x40800000    # -1.0f

    .line 317
    .line 318
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 319
    .line 320
    .line 321
    const/high16 v0, 0x40800000    # 4.0f

    .line 322
    .line 323
    const/high16 v1, 0x40400000    # 3.0f

    .line 324
    .line 325
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 326
    .line 327
    .line 328
    const/high16 v6, 0x3f800000    # 1.0f

    .line 329
    .line 330
    const v1, -0x40f33333    # -0.55f

    .line 331
    .line 332
    .line 333
    const/4 v2, 0x0

    .line 334
    const/high16 v3, -0x40800000    # -1.0f

    .line 335
    .line 336
    const v4, 0x3ee66666    # 0.45f

    .line 337
    .line 338
    .line 339
    move-object v0, v7

    .line 340
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 341
    .line 342
    .line 343
    const/high16 v5, 0x41880000    # 17.0f

    .line 344
    .line 345
    const/high16 v6, 0x41880000    # 17.0f

    .line 346
    .line 347
    const/4 v1, 0x0

    .line 348
    const v2, 0x41163d71    # 9.39f

    .line 349
    .line 350
    .line 351
    const v3, 0x40f3851f    # 7.61f

    .line 352
    .line 353
    .line 354
    const/high16 v4, 0x41880000    # 17.0f

    .line 355
    .line 356
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 357
    .line 358
    .line 359
    const/high16 v5, 0x3f800000    # 1.0f

    .line 360
    .line 361
    const/high16 v6, -0x40800000    # -1.0f

    .line 362
    .line 363
    const v1, 0x3f0ccccd    # 0.55f

    .line 364
    .line 365
    .line 366
    const/4 v2, 0x0

    .line 367
    const/high16 v3, 0x3f800000    # 1.0f

    .line 368
    .line 369
    const v4, -0x4119999a    # -0.45f

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 373
    .line 374
    .line 375
    const v0, -0x3fa0a3d7    # -3.49f

    .line 376
    .line 377
    .line 378
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 379
    .line 380
    .line 381
    const/high16 v5, -0x40800000    # -1.0f

    .line 382
    .line 383
    const/4 v1, 0x0

    .line 384
    const v2, -0x40f33333    # -0.55f

    .line 385
    .line 386
    .line 387
    const v3, -0x4119999a    # -0.45f

    .line 388
    .line 389
    .line 390
    const/high16 v4, -0x40800000    # -1.0f

    .line 391
    .line 392
    move-object v0, v7

    .line 393
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 394
    .line 395
    .line 396
    const v5, -0x3f9b851f    # -3.57f

    .line 397
    .line 398
    .line 399
    const v6, -0x40ee147b    # -0.57f

    .line 400
    .line 401
    .line 402
    const v1, -0x406147ae    # -1.24f

    .line 403
    .line 404
    .line 405
    const/4 v2, 0x0

    .line 406
    const v3, -0x3fe33333    # -2.45f

    .line 407
    .line 408
    .line 409
    const v4, -0x41b33333    # -0.2f

    .line 410
    .line 411
    .line 412
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 413
    .line 414
    .line 415
    const v5, -0x416147ae    # -0.31f

    .line 416
    .line 417
    .line 418
    const v6, -0x42b33333    # -0.05f

    .line 419
    .line 420
    .line 421
    const v1, -0x42333333    # -0.1f

    .line 422
    .line 423
    .line 424
    const v2, -0x42dc28f6    # -0.04f

    .line 425
    .line 426
    .line 427
    const v3, -0x41a8f5c3    # -0.21f

    .line 428
    .line 429
    .line 430
    const v4, -0x42b33333    # -0.05f

    .line 431
    .line 432
    .line 433
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 434
    .line 435
    .line 436
    const v5, -0x40ca3d71    # -0.71f

    .line 437
    .line 438
    .line 439
    const v6, 0x3e947ae1    # 0.29f

    .line 440
    .line 441
    .line 442
    const v1, -0x417ae148    # -0.26f

    .line 443
    .line 444
    .line 445
    const/4 v2, 0x0

    .line 446
    const v3, -0x40fd70a4    # -0.51f

    .line 447
    .line 448
    .line 449
    const v4, 0x3dcccccd    # 0.1f

    .line 450
    .line 451
    .line 452
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 453
    .line 454
    .line 455
    const v0, 0x400ccccd    # 2.2f

    .line 456
    .line 457
    .line 458
    const v1, -0x3ff33333    # -2.2f

    .line 459
    .line 460
    .line 461
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 462
    .line 463
    .line 464
    const v5, -0x3f2d1eb8    # -6.59f

    .line 465
    .line 466
    .line 467
    const v6, -0x3f2d1eb8    # -6.59f

    .line 468
    .line 469
    .line 470
    const v1, -0x3fcae148    # -2.83f

    .line 471
    .line 472
    .line 473
    const v2, -0x40466666    # -1.45f

    .line 474
    .line 475
    .line 476
    const v3, -0x3f5b3333    # -5.15f

    .line 477
    .line 478
    .line 479
    const v4, -0x3f8f5c29    # -3.76f

    .line 480
    .line 481
    .line 482
    move-object v0, v7

    .line 483
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 484
    .line 485
    .line 486
    const v0, 0x400ccccd    # 2.2f

    .line 487
    .line 488
    .line 489
    const v1, -0x3ff33333    # -2.2f

    .line 490
    .line 491
    .line 492
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 493
    .line 494
    .line 495
    const/high16 v5, 0x3e800000    # 0.25f

    .line 496
    .line 497
    const v6, -0x407d70a4    # -1.02f

    .line 498
    .line 499
    .line 500
    const v1, 0x3e8f5c29    # 0.28f

    .line 501
    .line 502
    .line 503
    const v2, -0x4170a3d7    # -0.28f

    .line 504
    .line 505
    .line 506
    const v3, 0x3eb851ec    # 0.36f

    .line 507
    .line 508
    .line 509
    const v4, -0x40d47ae1    # -0.67f

    .line 510
    .line 511
    .line 512
    move-object v0, v7

    .line 513
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 517
    .line 518
    .line 519
    const v0, 0x41833333    # 16.4f

    .line 520
    .line 521
    .line 522
    const v1, 0x418828f6    # 17.02f

    .line 523
    .line 524
    .line 525
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 526
    .line 527
    .line 528
    const v5, 0x40266666    # 2.6f

    .line 529
    .line 530
    .line 531
    const v6, 0x3ee66666    # 0.45f

    .line 532
    .line 533
    .line 534
    const v1, 0x3f59999a    # 0.85f

    .line 535
    .line 536
    .line 537
    const v2, 0x3e75c28f    # 0.24f

    .line 538
    .line 539
    .line 540
    const v3, 0x3fdc28f6    # 1.72f

    .line 541
    .line 542
    .line 543
    const v4, 0x3ec7ae14    # 0.39f

    .line 544
    .line 545
    .line 546
    move-object v0, v7

    .line 547
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 548
    .line 549
    .line 550
    const v0, 0x3fbeb852    # 1.49f

    .line 551
    .line 552
    .line 553
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 554
    .line 555
    .line 556
    const v5, -0x3f8ccccd    # -3.8f

    .line 557
    .line 558
    .line 559
    const/high16 v6, -0x40c00000    # -0.75f

    .line 560
    .line 561
    const v1, -0x40570a3d    # -1.32f

    .line 562
    .line 563
    .line 564
    const v2, -0x4247ae14    # -0.09f

    .line 565
    .line 566
    .line 567
    const v3, -0x3fda3d71    # -2.59f

    .line 568
    .line 569
    .line 570
    const v4, -0x414ccccd    # -0.35f

    .line 571
    .line 572
    .line 573
    move-object v0, v7

    .line 574
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 575
    .line 576
    .line 577
    const v0, 0x3f99999a    # 1.2f

    .line 578
    .line 579
    .line 580
    const v1, -0x4067ae14    # -1.19f

    .line 581
    .line 582
    .line 583
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 587
    .line 588
    .line 589
    const v0, 0x410ccccd    # 8.8f

    .line 590
    .line 591
    .line 592
    const v1, 0x40b947ae    # 5.79f

    .line 593
    .line 594
    .line 595
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 596
    .line 597
    .line 598
    const v5, -0x40bd70a4    # -0.76f

    .line 599
    .line 600
    .line 601
    const v6, -0x3f8ccccd    # -3.8f

    .line 602
    .line 603
    .line 604
    const v1, -0x412e147b    # -0.41f

    .line 605
    .line 606
    .line 607
    const v2, -0x40651eb8    # -1.21f

    .line 608
    .line 609
    .line 610
    const v3, -0x40d47ae1    # -0.67f

    .line 611
    .line 612
    .line 613
    const v4, -0x3fe147ae    # -2.48f

    .line 614
    .line 615
    .line 616
    move-object v0, v7

    .line 617
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 618
    .line 619
    .line 620
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 621
    .line 622
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 623
    .line 624
    .line 625
    const v5, 0x3eeb851f    # 0.46f

    .line 626
    .line 627
    .line 628
    const v6, 0x4025c28f    # 2.59f

    .line 629
    .line 630
    .line 631
    const v1, 0x3d8f5c29    # 0.07f

    .line 632
    .line 633
    .line 634
    const v2, 0x3f63d70a    # 0.89f

    .line 635
    .line 636
    .line 637
    const v3, 0x3e6147ae    # 0.22f

    .line 638
    .line 639
    .line 640
    const v4, 0x3fe147ae    # 1.76f

    .line 641
    .line 642
    .line 643
    move-object v0, v7

    .line 644
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 645
    .line 646
    .line 647
    const v0, 0x410ccccd    # 8.8f

    .line 648
    .line 649
    .line 650
    const v1, 0x40b947ae    # 5.79f

    .line 651
    .line 652
    .line 653
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 660
    .line 661
    .line 662
    move-result-object v30

    .line 663
    const/16 v44, 0x3800

    .line 664
    .line 665
    const/16 v45, 0x0

    .line 666
    .line 667
    const/high16 v34, 0x3f800000    # 1.0f

    .line 668
    .line 669
    const/high16 v36, 0x3f800000    # 1.0f

    .line 670
    .line 671
    const/16 v35, 0x0

    .line 672
    .line 673
    const/high16 v37, 0x3f800000    # 1.0f

    .line 674
    .line 675
    const/high16 v40, 0x3f800000    # 1.0f

    .line 676
    .line 677
    const/16 v41, 0x0

    .line 678
    .line 679
    const/16 v42, 0x0

    .line 680
    .line 681
    const/16 v43, 0x0

    .line 682
    .line 683
    const-string v32, ""

    .line 684
    .line 685
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    sput-object v0, Landroidx/compose/material/icons/twotone/PhoneKt;->_phone:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 694
    .line 695
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    return-object v0
.end method
