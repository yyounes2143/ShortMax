.class public final Landroidx/compose/material/icons/twotone/CallKt;
.super Ljava/lang/Object;
.source "Call.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _call:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getCall(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/twotone/CallKt;->_call:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "TwoTone.Call"

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
    const v3, 0x40d147ae    # 6.54f

    .line 150
    .line 151
    .line 152
    const/high16 v4, 0x40a00000    # 5.0f

    .line 153
    .line 154
    invoke-virtual {v10, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 155
    .line 156
    .line 157
    const/high16 v3, -0x40400000    # -1.5f

    .line 158
    .line 159
    invoke-virtual {v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 160
    .line 161
    .line 162
    const/high16 v8, 0x3f400000    # 0.75f

    .line 163
    .line 164
    const v9, 0x40733333    # 3.8f

    .line 165
    .line 166
    .line 167
    const v4, 0x3db851ec    # 0.09f

    .line 168
    .line 169
    .line 170
    const v5, 0x3fa8f5c3    # 1.32f

    .line 171
    .line 172
    .line 173
    const v6, 0x3eb33333    # 0.35f

    .line 174
    .line 175
    .line 176
    const v7, 0x4025c28f    # 2.59f

    .line 177
    .line 178
    .line 179
    move-object v3, v10

    .line 180
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 181
    .line 182
    .line 183
    const v3, -0x40666666    # -1.2f

    .line 184
    .line 185
    .line 186
    const v4, 0x3f99999a    # 1.2f

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 190
    .line 191
    .line 192
    const v8, -0x4119999a    # -0.45f

    .line 193
    .line 194
    .line 195
    const v9, -0x3fd9999a    # -2.6f

    .line 196
    .line 197
    .line 198
    const v4, -0x418a3d71    # -0.24f

    .line 199
    .line 200
    .line 201
    const v5, -0x40a8f5c3    # -0.84f

    .line 202
    .line 203
    .line 204
    const v6, -0x413851ec    # -0.39f

    .line 205
    .line 206
    .line 207
    const v7, -0x40251eb8    # -1.71f

    .line 208
    .line 209
    .line 210
    move-object v3, v10

    .line 211
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    const/16 v27, 0x3800

    .line 222
    .line 223
    const/16 v28, 0x0

    .line 224
    .line 225
    const v17, 0x3e99999a    # 0.3f

    .line 226
    .line 227
    .line 228
    const v19, 0x3e99999a    # 0.3f

    .line 229
    .line 230
    .line 231
    const/16 v18, 0x0

    .line 232
    .line 233
    const/high16 v20, 0x3f800000    # 1.0f

    .line 234
    .line 235
    const/high16 v23, 0x3f800000    # 1.0f

    .line 236
    .line 237
    const/16 v24, 0x0

    .line 238
    .line 239
    const/16 v25, 0x0

    .line 240
    .line 241
    const/16 v26, 0x0

    .line 242
    .line 243
    const-string v15, ""

    .line 244
    .line 245
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 246
    .line 247
    .line 248
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 249
    .line 250
    .line 251
    move-result v31

    .line 252
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 253
    .line 254
    move-object/from16 v33, v3

    .line 255
    .line 256
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 257
    .line 258
    .line 259
    move-result-wide v4

    .line 260
    const/4 v1, 0x0

    .line 261
    invoke-direct {v3, v4, v5, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 265
    .line 266
    .line 267
    move-result v38

    .line 268
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 269
    .line 270
    .line 271
    move-result v39

    .line 272
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 273
    .line 274
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const/high16 v0, 0x41a00000    # 20.0f

    .line 278
    .line 279
    const/high16 v1, 0x41a80000    # 21.0f

    .line 280
    .line 281
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 282
    .line 283
    .line 284
    const/high16 v5, 0x3f800000    # 1.0f

    .line 285
    .line 286
    const/high16 v6, -0x40800000    # -1.0f

    .line 287
    .line 288
    const v1, 0x3f0ccccd    # 0.55f

    .line 289
    .line 290
    .line 291
    const/4 v2, 0x0

    .line 292
    const/high16 v3, 0x3f800000    # 1.0f

    .line 293
    .line 294
    const v4, -0x4119999a    # -0.45f

    .line 295
    .line 296
    .line 297
    move-object v0, v7

    .line 298
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 299
    .line 300
    .line 301
    const v0, -0x3fa0a3d7    # -3.49f

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 305
    .line 306
    .line 307
    const/high16 v5, -0x40800000    # -1.0f

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
    move-object v0, v7

    .line 319
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 320
    .line 321
    .line 322
    const v5, -0x3f9b851f    # -3.57f

    .line 323
    .line 324
    .line 325
    const v6, -0x40ee147b    # -0.57f

    .line 326
    .line 327
    .line 328
    const v1, -0x406147ae    # -1.24f

    .line 329
    .line 330
    .line 331
    const/4 v2, 0x0

    .line 332
    const v3, -0x3fe33333    # -2.45f

    .line 333
    .line 334
    .line 335
    const v4, -0x41b33333    # -0.2f

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 339
    .line 340
    .line 341
    const v5, -0x416147ae    # -0.31f

    .line 342
    .line 343
    .line 344
    const v6, -0x42b33333    # -0.05f

    .line 345
    .line 346
    .line 347
    const v1, -0x42333333    # -0.1f

    .line 348
    .line 349
    .line 350
    const v2, -0x42dc28f6    # -0.04f

    .line 351
    .line 352
    .line 353
    const v3, -0x41a8f5c3    # -0.21f

    .line 354
    .line 355
    .line 356
    const v4, -0x42b33333    # -0.05f

    .line 357
    .line 358
    .line 359
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 360
    .line 361
    .line 362
    const v5, -0x40ca3d71    # -0.71f

    .line 363
    .line 364
    .line 365
    const v6, 0x3e947ae1    # 0.29f

    .line 366
    .line 367
    .line 368
    const v1, -0x417ae148    # -0.26f

    .line 369
    .line 370
    .line 371
    const/4 v2, 0x0

    .line 372
    const v3, -0x40fd70a4    # -0.51f

    .line 373
    .line 374
    .line 375
    const v4, 0x3dcccccd    # 0.1f

    .line 376
    .line 377
    .line 378
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 379
    .line 380
    .line 381
    const v0, 0x400ccccd    # 2.2f

    .line 382
    .line 383
    .line 384
    const v1, -0x3ff33333    # -2.2f

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 388
    .line 389
    .line 390
    const v5, -0x3f2d1eb8    # -6.59f

    .line 391
    .line 392
    .line 393
    const v6, -0x3f2d1eb8    # -6.59f

    .line 394
    .line 395
    .line 396
    const v1, -0x3fcae148    # -2.83f

    .line 397
    .line 398
    .line 399
    const v2, -0x40466666    # -1.45f

    .line 400
    .line 401
    .line 402
    const v3, -0x3f5b3333    # -5.15f

    .line 403
    .line 404
    .line 405
    const v4, -0x3f8f5c29    # -3.76f

    .line 406
    .line 407
    .line 408
    move-object v0, v7

    .line 409
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 410
    .line 411
    .line 412
    const v0, 0x400ccccd    # 2.2f

    .line 413
    .line 414
    .line 415
    const v1, -0x3ff33333    # -2.2f

    .line 416
    .line 417
    .line 418
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 419
    .line 420
    .line 421
    const/high16 v5, 0x3e800000    # 0.25f

    .line 422
    .line 423
    const v6, -0x407d70a4    # -1.02f

    .line 424
    .line 425
    .line 426
    const v1, 0x3e8f5c29    # 0.28f

    .line 427
    .line 428
    .line 429
    const v2, -0x4170a3d7    # -0.28f

    .line 430
    .line 431
    .line 432
    const v3, 0x3eb851ec    # 0.36f

    .line 433
    .line 434
    .line 435
    const v4, -0x40d47ae1    # -0.67f

    .line 436
    .line 437
    .line 438
    move-object v0, v7

    .line 439
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 440
    .line 441
    .line 442
    const/high16 v5, 0x41080000    # 8.5f

    .line 443
    .line 444
    const/high16 v6, 0x40800000    # 4.0f

    .line 445
    .line 446
    const v1, 0x410b3333    # 8.7f

    .line 447
    .line 448
    .line 449
    const v2, 0x40ce6666    # 6.45f

    .line 450
    .line 451
    .line 452
    const/high16 v3, 0x41080000    # 8.5f

    .line 453
    .line 454
    const/high16 v4, 0x40a80000    # 5.25f

    .line 455
    .line 456
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 457
    .line 458
    .line 459
    const/high16 v5, -0x40800000    # -1.0f

    .line 460
    .line 461
    const/high16 v6, -0x40800000    # -1.0f

    .line 462
    .line 463
    const/4 v1, 0x0

    .line 464
    const v2, -0x40f33333    # -0.55f

    .line 465
    .line 466
    .line 467
    const v3, -0x4119999a    # -0.45f

    .line 468
    .line 469
    .line 470
    const/high16 v4, -0x40800000    # -1.0f

    .line 471
    .line 472
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 473
    .line 474
    .line 475
    const/high16 v0, 0x40800000    # 4.0f

    .line 476
    .line 477
    const/high16 v1, 0x40400000    # 3.0f

    .line 478
    .line 479
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 480
    .line 481
    .line 482
    const/high16 v6, 0x3f800000    # 1.0f

    .line 483
    .line 484
    const v1, -0x40f33333    # -0.55f

    .line 485
    .line 486
    .line 487
    const/4 v2, 0x0

    .line 488
    const/high16 v3, -0x40800000    # -1.0f

    .line 489
    .line 490
    const v4, 0x3ee66666    # 0.45f

    .line 491
    .line 492
    .line 493
    move-object v0, v7

    .line 494
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 495
    .line 496
    .line 497
    const/high16 v5, 0x41880000    # 17.0f

    .line 498
    .line 499
    const/high16 v6, 0x41880000    # 17.0f

    .line 500
    .line 501
    const/4 v1, 0x0

    .line 502
    const v2, 0x41163d71    # 9.39f

    .line 503
    .line 504
    .line 505
    const v3, 0x40f3851f    # 7.61f

    .line 506
    .line 507
    .line 508
    const/high16 v4, 0x41880000    # 17.0f

    .line 509
    .line 510
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 514
    .line 515
    .line 516
    const v0, 0x41833333    # 16.4f

    .line 517
    .line 518
    .line 519
    const v1, 0x418828f6    # 17.02f

    .line 520
    .line 521
    .line 522
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 523
    .line 524
    .line 525
    const v5, 0x40266666    # 2.6f

    .line 526
    .line 527
    .line 528
    const v6, 0x3ee66666    # 0.45f

    .line 529
    .line 530
    .line 531
    const v1, 0x3f59999a    # 0.85f

    .line 532
    .line 533
    .line 534
    const v2, 0x3e75c28f    # 0.24f

    .line 535
    .line 536
    .line 537
    const v3, 0x3fdc28f6    # 1.72f

    .line 538
    .line 539
    .line 540
    const v4, 0x3ec7ae14    # 0.39f

    .line 541
    .line 542
    .line 543
    move-object v0, v7

    .line 544
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 545
    .line 546
    .line 547
    const v0, 0x3fbeb852    # 1.49f

    .line 548
    .line 549
    .line 550
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 551
    .line 552
    .line 553
    const v5, -0x3f8ccccd    # -3.8f

    .line 554
    .line 555
    .line 556
    const/high16 v6, -0x40c00000    # -0.75f

    .line 557
    .line 558
    const v1, -0x40570a3d    # -1.32f

    .line 559
    .line 560
    .line 561
    const v2, -0x4247ae14    # -0.09f

    .line 562
    .line 563
    .line 564
    const v3, -0x3fda3d71    # -2.59f

    .line 565
    .line 566
    .line 567
    const v4, -0x414ccccd    # -0.35f

    .line 568
    .line 569
    .line 570
    move-object v0, v7

    .line 571
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 572
    .line 573
    .line 574
    const v0, -0x4067ae14    # -1.19f

    .line 575
    .line 576
    .line 577
    const v1, 0x3f99999a    # 1.2f

    .line 578
    .line 579
    .line 580
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 584
    .line 585
    .line 586
    const v0, 0x40a0f5c3    # 5.03f

    .line 587
    .line 588
    .line 589
    const/high16 v1, 0x40a00000    # 5.0f

    .line 590
    .line 591
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 592
    .line 593
    .line 594
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 595
    .line 596
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 597
    .line 598
    .line 599
    const v5, 0x3eeb851f    # 0.46f

    .line 600
    .line 601
    .line 602
    const v6, 0x4025c28f    # 2.59f

    .line 603
    .line 604
    .line 605
    const v1, 0x3d8f5c29    # 0.07f

    .line 606
    .line 607
    .line 608
    const v2, 0x3f63d70a    # 0.89f

    .line 609
    .line 610
    .line 611
    const v3, 0x3e6147ae    # 0.22f

    .line 612
    .line 613
    .line 614
    const v4, 0x3fe147ae    # 1.76f

    .line 615
    .line 616
    .line 617
    move-object v0, v7

    .line 618
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 619
    .line 620
    .line 621
    const v0, -0x40666666    # -1.2f

    .line 622
    .line 623
    .line 624
    const v1, 0x3f99999a    # 1.2f

    .line 625
    .line 626
    .line 627
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 628
    .line 629
    .line 630
    const v5, -0x40bd70a4    # -0.76f

    .line 631
    .line 632
    .line 633
    const v6, -0x3f8d70a4    # -3.79f

    .line 634
    .line 635
    .line 636
    const v1, -0x412e147b    # -0.41f

    .line 637
    .line 638
    .line 639
    const v2, -0x40666666    # -1.2f

    .line 640
    .line 641
    .line 642
    const v3, -0x40d47ae1    # -0.67f

    .line 643
    .line 644
    .line 645
    const v4, -0x3fe1eb85    # -2.47f

    .line 646
    .line 647
    .line 648
    move-object v0, v7

    .line 649
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 656
    .line 657
    .line 658
    move-result-object v30

    .line 659
    const/16 v44, 0x3800

    .line 660
    .line 661
    const/16 v45, 0x0

    .line 662
    .line 663
    const/high16 v34, 0x3f800000    # 1.0f

    .line 664
    .line 665
    const/high16 v36, 0x3f800000    # 1.0f

    .line 666
    .line 667
    const/16 v35, 0x0

    .line 668
    .line 669
    const/high16 v37, 0x3f800000    # 1.0f

    .line 670
    .line 671
    const/high16 v40, 0x3f800000    # 1.0f

    .line 672
    .line 673
    const/16 v41, 0x0

    .line 674
    .line 675
    const/16 v42, 0x0

    .line 676
    .line 677
    const/16 v43, 0x0

    .line 678
    .line 679
    const-string v32, ""

    .line 680
    .line 681
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    sput-object v0, Landroidx/compose/material/icons/twotone/CallKt;->_call:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 690
    .line 691
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    return-object v0
.end method
