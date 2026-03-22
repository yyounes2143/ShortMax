.class public final Landroidx/compose/material/icons/rounded/SettingsKt;
.super Ljava/lang/Object;
.source "Settings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _settings:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getSettings(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/rounded/SettingsKt;->_settings:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.Settings"

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
    const/high16 v0, 0x419c0000    # 19.5f

    .line 80
    .line 81
    const/high16 v1, 0x41400000    # 12.0f

    .line 82
    .line 83
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .line 85
    .line 86
    const v5, -0x430a3d71    # -0.03f

    .line 87
    .line 88
    .line 89
    const v6, -0x40d1eb85    # -0.68f

    .line 90
    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    const v2, -0x41947ae1    # -0.23f

    .line 94
    .line 95
    .line 96
    const v3, -0x43dc28f6    # -0.01f

    .line 97
    .line 98
    .line 99
    const v4, -0x4119999a    # -0.45f

    .line 100
    .line 101
    .line 102
    move-object v0, v7

    .line 103
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    .line 105
    .line 106
    const v0, -0x404b851f    # -1.41f

    .line 107
    .line 108
    .line 109
    const v1, 0x3fee147b    # 1.86f

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    .line 114
    .line 115
    const v5, 0x3e851eb8    # 0.26f

    .line 116
    .line 117
    .line 118
    const v6, -0x4059999a    # -1.3f

    .line 119
    .line 120
    .line 121
    const v1, 0x3ecccccd    # 0.4f

    .line 122
    .line 123
    .line 124
    const v2, -0x41666666    # -0.3f

    .line 125
    .line 126
    .line 127
    const v3, 0x3f028f5c    # 0.51f

    .line 128
    .line 129
    .line 130
    const v4, -0x40a3d70a    # -0.86f

    .line 131
    .line 132
    .line 133
    move-object v0, v7

    .line 134
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    .line 136
    .line 137
    const v0, -0x4010a3d7    # -1.87f

    .line 138
    .line 139
    .line 140
    const v1, -0x3fb147ae    # -3.23f

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 144
    .line 145
    .line 146
    const/high16 v5, -0x40600000    # -1.25f

    .line 147
    .line 148
    const v6, -0x4128f5c3    # -0.42f

    .line 149
    .line 150
    .line 151
    const/high16 v1, -0x41800000    # -0.25f

    .line 152
    .line 153
    const v2, -0x411eb852    # -0.44f

    .line 154
    .line 155
    .line 156
    const v3, -0x40b5c28f    # -0.79f

    .line 157
    .line 158
    .line 159
    const v4, -0x40e147ae    # -0.62f

    .line 160
    .line 161
    .line 162
    move-object v0, v7

    .line 163
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 164
    .line 165
    .line 166
    const v0, -0x3ff66666    # -2.15f

    .line 167
    .line 168
    .line 169
    const v1, 0x3f68f5c3    # 0.91f

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 173
    .line 174
    .line 175
    const v5, -0x406a3d71    # -1.17f

    .line 176
    .line 177
    .line 178
    const v6, -0x40d1eb85    # -0.68f

    .line 179
    .line 180
    .line 181
    const v1, -0x41428f5c    # -0.37f

    .line 182
    .line 183
    .line 184
    const v2, -0x417ae148    # -0.26f

    .line 185
    .line 186
    .line 187
    const v3, -0x40bd70a4    # -0.76f

    .line 188
    .line 189
    .line 190
    const v4, -0x41051eb8    # -0.49f

    .line 191
    .line 192
    .line 193
    move-object v0, v7

    .line 194
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 195
    .line 196
    .line 197
    const v0, -0x416b851f    # -0.29f

    .line 198
    .line 199
    .line 200
    const v1, -0x3fec28f6    # -2.31f

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 204
    .line 205
    .line 206
    const v5, 0x415deb85    # 13.87f

    .line 207
    .line 208
    .line 209
    const/high16 v6, 0x40000000    # 2.0f

    .line 210
    .line 211
    const v1, 0x416ccccd    # 14.8f

    .line 212
    .line 213
    .line 214
    const v2, 0x401851ec    # 2.38f

    .line 215
    .line 216
    .line 217
    const v3, 0x4165eb85    # 14.37f

    .line 218
    .line 219
    .line 220
    const/high16 v4, 0x40000000    # 2.0f

    .line 221
    .line 222
    move-object v0, v7

    .line 223
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 224
    .line 225
    .line 226
    const v0, -0x3f9147ae    # -3.73f

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 230
    .line 231
    .line 232
    const v5, 0x41123d71    # 9.14f

    .line 233
    .line 234
    .line 235
    const v6, 0x403851ec    # 2.88f

    .line 236
    .line 237
    .line 238
    const v1, 0x411a147b    # 9.63f

    .line 239
    .line 240
    .line 241
    const/high16 v2, 0x40000000    # 2.0f

    .line 242
    .line 243
    const v3, 0x41133333    # 9.2f

    .line 244
    .line 245
    .line 246
    const v4, 0x401851ec    # 2.38f

    .line 247
    .line 248
    .line 249
    move-object v0, v7

    .line 250
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 251
    .line 252
    .line 253
    const v0, 0x410d999a    # 8.85f

    .line 254
    .line 255
    .line 256
    const v1, 0x40a6147b    # 5.19f

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 260
    .line 261
    .line 262
    const v5, -0x406a3d71    # -1.17f

    .line 263
    .line 264
    .line 265
    const v6, 0x3f2e147b    # 0.68f

    .line 266
    .line 267
    .line 268
    const v1, -0x412e147b    # -0.41f

    .line 269
    .line 270
    .line 271
    const v2, 0x3e428f5c    # 0.19f

    .line 272
    .line 273
    .line 274
    const v3, -0x40b33333    # -0.8f

    .line 275
    .line 276
    .line 277
    const v4, 0x3ed70a3d    # 0.42f

    .line 278
    .line 279
    .line 280
    move-object v0, v7

    .line 281
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 282
    .line 283
    .line 284
    const v0, 0x40b0f5c3    # 5.53f

    .line 285
    .line 286
    .line 287
    const v1, 0x409eb852    # 4.96f

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 291
    .line 292
    .line 293
    const/high16 v5, -0x40600000    # -1.25f

    .line 294
    .line 295
    const v6, 0x3ed70a3d    # 0.42f

    .line 296
    .line 297
    .line 298
    const v1, -0x41147ae1    # -0.46f

    .line 299
    .line 300
    .line 301
    const v2, -0x41b33333    # -0.2f

    .line 302
    .line 303
    .line 304
    const/high16 v3, -0x40800000    # -1.0f

    .line 305
    .line 306
    const v4, -0x435c28f6    # -0.02f

    .line 307
    .line 308
    .line 309
    move-object v0, v7

    .line 310
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 311
    .line 312
    .line 313
    const v0, 0x401a3d71    # 2.41f

    .line 314
    .line 315
    .line 316
    const v1, 0x4109eb85    # 8.62f

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 320
    .line 321
    .line 322
    const v5, 0x3e851eb8    # 0.26f

    .line 323
    .line 324
    .line 325
    const v6, 0x3fa66666    # 1.3f

    .line 326
    .line 327
    .line 328
    const/high16 v1, -0x41800000    # -0.25f

    .line 329
    .line 330
    const v2, 0x3ee147ae    # 0.44f

    .line 331
    .line 332
    .line 333
    const v3, -0x41f0a3d7    # -0.14f

    .line 334
    .line 335
    .line 336
    const v4, 0x3f7d70a4    # 0.99f

    .line 337
    .line 338
    .line 339
    move-object v0, v7

    .line 340
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 341
    .line 342
    .line 343
    const v0, 0x3fb47ae1    # 1.41f

    .line 344
    .line 345
    .line 346
    const v1, 0x3fee147b    # 1.86f

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 350
    .line 351
    .line 352
    const/high16 v5, 0x40900000    # 4.5f

    .line 353
    .line 354
    const/high16 v6, 0x41400000    # 12.0f

    .line 355
    .line 356
    const v1, 0x409051ec    # 4.51f

    .line 357
    .line 358
    .line 359
    const v2, 0x4138cccd    # 11.55f

    .line 360
    .line 361
    .line 362
    const/high16 v3, 0x40900000    # 4.5f

    .line 363
    .line 364
    const v4, 0x413c51ec    # 11.77f

    .line 365
    .line 366
    .line 367
    move-object v0, v7

    .line 368
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 369
    .line 370
    .line 371
    const v0, 0x3cf5c28f    # 0.03f

    .line 372
    .line 373
    .line 374
    const v1, 0x3f2e147b    # 0.68f

    .line 375
    .line 376
    .line 377
    const v2, 0x3c23d70a    # 0.01f

    .line 378
    .line 379
    .line 380
    const v3, 0x3ee66666    # 0.45f

    .line 381
    .line 382
    .line 383
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 384
    .line 385
    .line 386
    const v0, -0x4011eb85    # -1.86f

    .line 387
    .line 388
    .line 389
    const v1, 0x3fb47ae1    # 1.41f

    .line 390
    .line 391
    .line 392
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 393
    .line 394
    .line 395
    const v5, -0x417ae148    # -0.26f

    .line 396
    .line 397
    .line 398
    const v6, 0x3fa66666    # 1.3f

    .line 399
    .line 400
    .line 401
    const v1, -0x41333333    # -0.4f

    .line 402
    .line 403
    .line 404
    const v2, 0x3e99999a    # 0.3f

    .line 405
    .line 406
    .line 407
    const v3, -0x40fd70a4    # -0.51f

    .line 408
    .line 409
    .line 410
    const v4, 0x3f5c28f6    # 0.86f

    .line 411
    .line 412
    .line 413
    move-object v0, v7

    .line 414
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 415
    .line 416
    .line 417
    const v0, 0x404eb852    # 3.23f

    .line 418
    .line 419
    .line 420
    const v1, 0x3fef5c29    # 1.87f

    .line 421
    .line 422
    .line 423
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 424
    .line 425
    .line 426
    const/high16 v5, 0x3fa00000    # 1.25f

    .line 427
    .line 428
    const v6, 0x3ed70a3d    # 0.42f

    .line 429
    .line 430
    .line 431
    const/high16 v1, 0x3e800000    # 0.25f

    .line 432
    .line 433
    const v2, 0x3ee147ae    # 0.44f

    .line 434
    .line 435
    .line 436
    const v3, 0x3f4a3d71    # 0.79f

    .line 437
    .line 438
    .line 439
    const v4, 0x3f1eb852    # 0.62f

    .line 440
    .line 441
    .line 442
    move-object v0, v7

    .line 443
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 444
    .line 445
    .line 446
    const v0, -0x40970a3d    # -0.91f

    .line 447
    .line 448
    .line 449
    const v1, 0x4009999a    # 2.15f

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 453
    .line 454
    .line 455
    const v5, 0x3f95c28f    # 1.17f

    .line 456
    .line 457
    .line 458
    const v6, 0x3f2e147b    # 0.68f

    .line 459
    .line 460
    .line 461
    const v1, 0x3ebd70a4    # 0.37f

    .line 462
    .line 463
    .line 464
    const v2, 0x3e851eb8    # 0.26f

    .line 465
    .line 466
    .line 467
    const v3, 0x3f428f5c    # 0.76f

    .line 468
    .line 469
    .line 470
    const v4, 0x3efae148    # 0.49f

    .line 471
    .line 472
    .line 473
    move-object v0, v7

    .line 474
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 475
    .line 476
    .line 477
    const v0, 0x4013d70a    # 2.31f

    .line 478
    .line 479
    .line 480
    const v1, 0x3e947ae1    # 0.29f

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 484
    .line 485
    .line 486
    const v5, 0x4122147b    # 10.13f

    .line 487
    .line 488
    .line 489
    const/high16 v6, 0x41b00000    # 22.0f

    .line 490
    .line 491
    const v1, 0x41133333    # 9.2f

    .line 492
    .line 493
    .line 494
    const v2, 0x41acf5c3    # 21.62f

    .line 495
    .line 496
    .line 497
    const v3, 0x411a147b    # 9.63f

    .line 498
    .line 499
    .line 500
    const/high16 v4, 0x41b00000    # 22.0f

    .line 501
    .line 502
    move-object v0, v7

    .line 503
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 504
    .line 505
    .line 506
    const v0, 0x406eb852    # 3.73f

    .line 507
    .line 508
    .line 509
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 510
    .line 511
    .line 512
    const v5, 0x3f7d70a4    # 0.99f

    .line 513
    .line 514
    .line 515
    const v6, -0x409eb852    # -0.88f

    .line 516
    .line 517
    .line 518
    const/high16 v1, 0x3f000000    # 0.5f

    .line 519
    .line 520
    const/4 v2, 0x0

    .line 521
    const v3, 0x3f6e147b    # 0.93f

    .line 522
    .line 523
    .line 524
    const v4, -0x413d70a4    # -0.38f

    .line 525
    .line 526
    .line 527
    move-object v0, v7

    .line 528
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 529
    .line 530
    .line 531
    const v0, 0x3e947ae1    # 0.29f

    .line 532
    .line 533
    .line 534
    const v1, -0x3fec28f6    # -2.31f

    .line 535
    .line 536
    .line 537
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 538
    .line 539
    .line 540
    const v5, 0x3f95c28f    # 1.17f

    .line 541
    .line 542
    .line 543
    const v6, -0x40d1eb85    # -0.68f

    .line 544
    .line 545
    .line 546
    const v1, 0x3ed1eb85    # 0.41f

    .line 547
    .line 548
    .line 549
    const v2, -0x41bd70a4    # -0.19f

    .line 550
    .line 551
    .line 552
    const v3, 0x3f4ccccd    # 0.8f

    .line 553
    .line 554
    .line 555
    const v4, -0x4128f5c3    # -0.42f

    .line 556
    .line 557
    .line 558
    move-object v0, v7

    .line 559
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 560
    .line 561
    .line 562
    const v0, 0x4009999a    # 2.15f

    .line 563
    .line 564
    .line 565
    const v1, 0x3f68f5c3    # 0.91f

    .line 566
    .line 567
    .line 568
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 569
    .line 570
    .line 571
    const/high16 v5, 0x3fa00000    # 1.25f

    .line 572
    .line 573
    const v6, -0x4128f5c3    # -0.42f

    .line 574
    .line 575
    .line 576
    const v1, 0x3eeb851f    # 0.46f

    .line 577
    .line 578
    .line 579
    const v2, 0x3e4ccccd    # 0.2f

    .line 580
    .line 581
    .line 582
    const/high16 v3, 0x3f800000    # 1.0f

    .line 583
    .line 584
    const v4, 0x3ca3d70a    # 0.02f

    .line 585
    .line 586
    .line 587
    move-object v0, v7

    .line 588
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 589
    .line 590
    .line 591
    const v0, 0x3fef5c29    # 1.87f

    .line 592
    .line 593
    .line 594
    const v1, -0x3fb147ae    # -3.23f

    .line 595
    .line 596
    .line 597
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 598
    .line 599
    .line 600
    const v5, -0x417ae148    # -0.26f

    .line 601
    .line 602
    .line 603
    const v6, -0x4059999a    # -1.3f

    .line 604
    .line 605
    .line 606
    const/high16 v1, 0x3e800000    # 0.25f

    .line 607
    .line 608
    const v2, -0x411eb852    # -0.44f

    .line 609
    .line 610
    .line 611
    const v3, 0x3e0f5c29    # 0.14f

    .line 612
    .line 613
    .line 614
    const v4, -0x40828f5c    # -0.99f

    .line 615
    .line 616
    .line 617
    move-object v0, v7

    .line 618
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 619
    .line 620
    .line 621
    const v0, -0x4011eb85    # -1.86f

    .line 622
    .line 623
    .line 624
    const v1, -0x404b851f    # -1.41f

    .line 625
    .line 626
    .line 627
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 628
    .line 629
    .line 630
    const/high16 v5, 0x419c0000    # 19.5f

    .line 631
    .line 632
    const/high16 v6, 0x41400000    # 12.0f

    .line 633
    .line 634
    const v1, 0x419beb85    # 19.49f

    .line 635
    .line 636
    .line 637
    const v2, 0x41473333    # 12.45f

    .line 638
    .line 639
    .line 640
    const/high16 v3, 0x419c0000    # 19.5f

    .line 641
    .line 642
    const v4, 0x4143ae14    # 12.23f

    .line 643
    .line 644
    .line 645
    move-object v0, v7

    .line 646
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 650
    .line 651
    .line 652
    const v0, 0x4140a3d7    # 12.04f

    .line 653
    .line 654
    .line 655
    const/high16 v1, 0x41780000    # 15.5f

    .line 656
    .line 657
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 658
    .line 659
    .line 660
    const/high16 v5, -0x3fa00000    # -3.5f

    .line 661
    .line 662
    const/high16 v6, -0x3fa00000    # -3.5f

    .line 663
    .line 664
    const v1, -0x4008f5c3    # -1.93f

    .line 665
    .line 666
    .line 667
    const/4 v2, 0x0

    .line 668
    const/high16 v3, -0x3fa00000    # -3.5f

    .line 669
    .line 670
    const v4, -0x40370a3d    # -1.57f

    .line 671
    .line 672
    .line 673
    move-object v0, v7

    .line 674
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 675
    .line 676
    .line 677
    const/high16 v0, -0x3fa00000    # -3.5f

    .line 678
    .line 679
    const v1, 0x3fc8f5c3    # 1.57f

    .line 680
    .line 681
    .line 682
    const/high16 v2, 0x40600000    # 3.5f

    .line 683
    .line 684
    invoke-virtual {v7, v1, v0, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 685
    .line 686
    .line 687
    const v0, 0x3fc8f5c3    # 1.57f

    .line 688
    .line 689
    .line 690
    const/high16 v1, 0x40600000    # 3.5f

    .line 691
    .line 692
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 693
    .line 694
    .line 695
    const v0, 0x415f851f    # 13.97f

    .line 696
    .line 697
    .line 698
    const v1, 0x4140a3d7    # 12.04f

    .line 699
    .line 700
    .line 701
    const/high16 v2, 0x41780000    # 15.5f

    .line 702
    .line 703
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 710
    .line 711
    .line 712
    move-result-object v13

    .line 713
    const/16 v27, 0x3800

    .line 714
    .line 715
    const/16 v28, 0x0

    .line 716
    .line 717
    const/high16 v17, 0x3f800000    # 1.0f

    .line 718
    .line 719
    const/high16 v19, 0x3f800000    # 1.0f

    .line 720
    .line 721
    const/16 v18, 0x0

    .line 722
    .line 723
    const/high16 v20, 0x3f800000    # 1.0f

    .line 724
    .line 725
    const/high16 v23, 0x3f800000    # 1.0f

    .line 726
    .line 727
    const/16 v24, 0x0

    .line 728
    .line 729
    const/16 v25, 0x0

    .line 730
    .line 731
    const/16 v26, 0x0

    .line 732
    .line 733
    const-string v15, ""

    .line 734
    .line 735
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    sput-object v0, Landroidx/compose/material/icons/rounded/SettingsKt;->_settings:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 744
    .line 745
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 746
    .line 747
    .line 748
    return-object v0
.end method
