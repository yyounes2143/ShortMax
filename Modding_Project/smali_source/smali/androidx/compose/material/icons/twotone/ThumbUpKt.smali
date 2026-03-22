.class public final Landroidx/compose/material/icons/twotone/ThumbUpKt;
.super Ljava/lang/Object;
.source "ThumbUp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _thumbUp:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getThumbUp(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/twotone/ThumbUpKt;->_thumbUp:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "TwoTone.ThumbUp"

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
    const/high16 v4, 0x41a80000    # 21.0f

    .line 82
    .line 83
    const/high16 v5, 0x41400000    # 12.0f

    .line 84
    .line 85
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const/high16 v4, -0x40000000    # -2.0f

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    .line 92
    .line 93
    const/high16 v4, -0x3ef00000    # -9.0f

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    .line 97
    .line 98
    const v4, 0x3fab851f    # 1.34f

    .line 99
    .line 100
    .line 101
    const v5, -0x3f551eb8    # -5.34f

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    .line 106
    .line 107
    const/high16 v4, 0x41100000    # 9.0f

    .line 108
    .line 109
    invoke-virtual {v3, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    .line 111
    .line 112
    const/high16 v4, 0x41200000    # 10.0f

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    .line 116
    .line 117
    const/high16 v4, 0x41100000    # 9.0f

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v13

    .line 129
    const/16 v27, 0x3800

    .line 130
    .line 131
    const/16 v28, 0x0

    .line 132
    .line 133
    const v17, 0x3e99999a    # 0.3f

    .line 134
    .line 135
    .line 136
    const v19, 0x3e99999a    # 0.3f

    .line 137
    .line 138
    .line 139
    const/16 v18, 0x0

    .line 140
    .line 141
    const/high16 v20, 0x3f800000    # 1.0f

    .line 142
    .line 143
    const/high16 v23, 0x3f800000    # 1.0f

    .line 144
    .line 145
    const/16 v24, 0x0

    .line 146
    .line 147
    const/16 v25, 0x0

    .line 148
    .line 149
    const/16 v26, 0x0

    .line 150
    .line 151
    const-string v15, ""

    .line 152
    .line 153
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 157
    .line 158
    .line 159
    move-result v31

    .line 160
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 161
    .line 162
    move-object/from16 v33, v3

    .line 163
    .line 164
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 165
    .line 166
    .line 167
    move-result-wide v4

    .line 168
    const/4 v1, 0x0

    .line 169
    invoke-direct {v3, v4, v5, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 173
    .line 174
    .line 175
    move-result v38

    .line 176
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 177
    .line 178
    .line 179
    move-result v39

    .line 180
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 181
    .line 182
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const/high16 v0, 0x41a80000    # 21.0f

    .line 186
    .line 187
    const/high16 v1, 0x41100000    # 9.0f

    .line 188
    .line 189
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 190
    .line 191
    .line 192
    const/high16 v0, 0x41100000    # 9.0f

    .line 193
    .line 194
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 195
    .line 196
    .line 197
    const v5, 0x3feb851f    # 1.84f

    .line 198
    .line 199
    .line 200
    const v6, -0x4063d70a    # -1.22f

    .line 201
    .line 202
    .line 203
    const v1, 0x3f547ae1    # 0.83f

    .line 204
    .line 205
    .line 206
    const/4 v2, 0x0

    .line 207
    const v3, 0x3fc51eb8    # 1.54f

    .line 208
    .line 209
    .line 210
    const/high16 v4, -0x41000000    # -0.5f

    .line 211
    .line 212
    move-object v0, v7

    .line 213
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 214
    .line 215
    .line 216
    const v0, 0x404147ae    # 3.02f

    .line 217
    .line 218
    .line 219
    const v1, -0x3f1e6666    # -7.05f

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 223
    .line 224
    .line 225
    const v5, 0x3e0f5c29    # 0.14f

    .line 226
    .line 227
    .line 228
    const v6, -0x40c51eb8    # -0.73f

    .line 229
    .line 230
    .line 231
    const v1, 0x3db851ec    # 0.09f

    .line 232
    .line 233
    .line 234
    const v2, -0x41947ae1    # -0.23f

    .line 235
    .line 236
    .line 237
    const v3, 0x3e0f5c29    # 0.14f

    .line 238
    .line 239
    .line 240
    const v4, -0x410f5c29    # -0.47f

    .line 241
    .line 242
    .line 243
    move-object v0, v7

    .line 244
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 245
    .line 246
    .line 247
    const/high16 v0, -0x40000000    # -2.0f

    .line 248
    .line 249
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 250
    .line 251
    .line 252
    const/high16 v5, -0x40000000    # -2.0f

    .line 253
    .line 254
    const/high16 v6, -0x40000000    # -2.0f

    .line 255
    .line 256
    const/4 v1, 0x0

    .line 257
    const v2, -0x40733333    # -1.1f

    .line 258
    .line 259
    .line 260
    const v3, -0x4099999a    # -0.9f

    .line 261
    .line 262
    .line 263
    const/high16 v4, -0x40000000    # -2.0f

    .line 264
    .line 265
    move-object v0, v7

    .line 266
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 267
    .line 268
    .line 269
    const v0, -0x3f36147b    # -6.31f

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 273
    .line 274
    .line 275
    const v0, 0x3f733333    # 0.95f

    .line 276
    .line 277
    .line 278
    const v1, -0x3f6dc28f    # -4.57f

    .line 279
    .line 280
    .line 281
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 282
    .line 283
    .line 284
    const v0, 0x3cf5c28f    # 0.03f

    .line 285
    .line 286
    .line 287
    const v1, -0x415c28f6    # -0.32f

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 291
    .line 292
    .line 293
    const v5, -0x411eb852    # -0.44f

    .line 294
    .line 295
    .line 296
    const v6, -0x407851ec    # -1.06f

    .line 297
    .line 298
    .line 299
    const/4 v1, 0x0

    .line 300
    const v2, -0x412e147b    # -0.41f

    .line 301
    .line 302
    .line 303
    const v3, -0x41d1eb85    # -0.17f

    .line 304
    .line 305
    .line 306
    const v4, -0x40b5c28f    # -0.79f

    .line 307
    .line 308
    .line 309
    move-object v0, v7

    .line 310
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 311
    .line 312
    .line 313
    const v0, 0x4162b852    # 14.17f

    .line 314
    .line 315
    .line 316
    const/high16 v1, 0x3f800000    # 1.0f

    .line 317
    .line 318
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 319
    .line 320
    .line 321
    const v0, 0x40f28f5c    # 7.58f

    .line 322
    .line 323
    .line 324
    const v1, 0x40f2e148    # 7.59f

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 328
    .line 329
    .line 330
    const/high16 v5, 0x40e00000    # 7.0f

    .line 331
    .line 332
    const/high16 v6, 0x41100000    # 9.0f

    .line 333
    .line 334
    const v1, 0x40e70a3d    # 7.22f

    .line 335
    .line 336
    .line 337
    const v2, 0x40fe6666    # 7.95f

    .line 338
    .line 339
    .line 340
    const/high16 v3, 0x40e00000    # 7.0f

    .line 341
    .line 342
    const v4, 0x41073333    # 8.45f

    .line 343
    .line 344
    .line 345
    move-object v0, v7

    .line 346
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 347
    .line 348
    .line 349
    const/high16 v0, 0x41200000    # 10.0f

    .line 350
    .line 351
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 352
    .line 353
    .line 354
    const/high16 v5, 0x40000000    # 2.0f

    .line 355
    .line 356
    const/high16 v6, 0x40000000    # 2.0f

    .line 357
    .line 358
    const/4 v1, 0x0

    .line 359
    const v2, 0x3f8ccccd    # 1.1f

    .line 360
    .line 361
    .line 362
    const v3, 0x3f666666    # 0.9f

    .line 363
    .line 364
    .line 365
    const/high16 v4, 0x40000000    # 2.0f

    .line 366
    .line 367
    move-object v0, v7

    .line 368
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 372
    .line 373
    .line 374
    const/high16 v0, 0x41100000    # 9.0f

    .line 375
    .line 376
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 377
    .line 378
    .line 379
    const v0, 0x408ae148    # 4.34f

    .line 380
    .line 381
    .line 382
    const v1, -0x3f751eb8    # -4.34f

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 386
    .line 387
    .line 388
    const/high16 v0, 0x41200000    # 10.0f

    .line 389
    .line 390
    const/high16 v1, 0x41400000    # 12.0f

    .line 391
    .line 392
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 393
    .line 394
    .line 395
    const/high16 v0, 0x41100000    # 9.0f

    .line 396
    .line 397
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 398
    .line 399
    .line 400
    const/high16 v0, 0x40000000    # 2.0f

    .line 401
    .line 402
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 403
    .line 404
    .line 405
    const/high16 v0, -0x3fc00000    # -3.0f

    .line 406
    .line 407
    const/high16 v1, 0x40e00000    # 7.0f

    .line 408
    .line 409
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 410
    .line 411
    .line 412
    const/high16 v0, 0x41100000    # 9.0f

    .line 413
    .line 414
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 421
    .line 422
    .line 423
    const/high16 v0, 0x3f800000    # 1.0f

    .line 424
    .line 425
    const/high16 v1, 0x41100000    # 9.0f

    .line 426
    .line 427
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 428
    .line 429
    .line 430
    const/high16 v0, 0x40800000    # 4.0f

    .line 431
    .line 432
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 433
    .line 434
    .line 435
    const/high16 v0, 0x41400000    # 12.0f

    .line 436
    .line 437
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 438
    .line 439
    .line 440
    const/high16 v0, 0x3f800000    # 1.0f

    .line 441
    .line 442
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v30

    .line 452
    const/16 v44, 0x3800

    .line 453
    .line 454
    const/16 v45, 0x0

    .line 455
    .line 456
    const/high16 v34, 0x3f800000    # 1.0f

    .line 457
    .line 458
    const/high16 v36, 0x3f800000    # 1.0f

    .line 459
    .line 460
    const/16 v35, 0x0

    .line 461
    .line 462
    const/high16 v37, 0x3f800000    # 1.0f

    .line 463
    .line 464
    const/high16 v40, 0x3f800000    # 1.0f

    .line 465
    .line 466
    const/16 v41, 0x0

    .line 467
    .line 468
    const/16 v42, 0x0

    .line 469
    .line 470
    const/16 v43, 0x0

    .line 471
    .line 472
    const-string v32, ""

    .line 473
    .line 474
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    sput-object v0, Landroidx/compose/material/icons/twotone/ThumbUpKt;->_thumbUp:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 483
    .line 484
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    return-object v0
.end method
