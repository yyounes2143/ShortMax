.class public final Landroidx/compose/material/icons/twotone/LockKt;
.super Ljava/lang/Object;
.source "Lock.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _lock:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getLock(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/twotone/LockKt;->_lock:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "TwoTone.Lock"

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
    const/high16 v3, 0x41a00000    # 20.0f

    .line 82
    .line 83
    const/high16 v4, 0x40c00000    # 6.0f

    .line 84
    .line 85
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const/high16 v3, 0x41400000    # 12.0f

    .line 89
    .line 90
    invoke-virtual {v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    .line 92
    .line 93
    const/high16 v3, 0x41900000    # 18.0f

    .line 94
    .line 95
    const/high16 v4, 0x41200000    # 10.0f

    .line 96
    .line 97
    invoke-virtual {v10, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    .line 99
    .line 100
    const/high16 v3, 0x41200000    # 10.0f

    .line 101
    .line 102
    const/high16 v4, 0x40c00000    # 6.0f

    .line 103
    .line 104
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    .line 112
    .line 113
    const/high16 v3, 0x41500000    # 13.0f

    .line 114
    .line 115
    const/high16 v4, 0x41400000    # 12.0f

    .line 116
    .line 117
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    .line 119
    .line 120
    const/high16 v8, 0x40000000    # 2.0f

    .line 121
    .line 122
    const/high16 v9, 0x40000000    # 2.0f

    .line 123
    .line 124
    const v4, 0x3f8ccccd    # 1.1f

    .line 125
    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    const/high16 v6, 0x40000000    # 2.0f

    .line 129
    .line 130
    const v7, 0x3f666666    # 0.9f

    .line 131
    .line 132
    .line 133
    move-object v3, v10

    .line 134
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    .line 136
    .line 137
    const v3, -0x4099999a    # -0.9f

    .line 138
    .line 139
    .line 140
    const/high16 v4, 0x40000000    # 2.0f

    .line 141
    .line 142
    const/high16 v5, -0x40000000    # -2.0f

    .line 143
    .line 144
    invoke-virtual {v10, v3, v4, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 145
    .line 146
    .line 147
    const/high16 v4, -0x40000000    # -2.0f

    .line 148
    .line 149
    invoke-virtual {v10, v4, v3, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 150
    .line 151
    .line 152
    const v3, 0x3f666666    # 0.9f

    .line 153
    .line 154
    .line 155
    const/high16 v4, 0x40000000    # 2.0f

    .line 156
    .line 157
    invoke-virtual {v10, v3, v5, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    const/16 v27, 0x3800

    .line 168
    .line 169
    const/16 v28, 0x0

    .line 170
    .line 171
    const v17, 0x3e99999a    # 0.3f

    .line 172
    .line 173
    .line 174
    const v19, 0x3e99999a    # 0.3f

    .line 175
    .line 176
    .line 177
    const/16 v18, 0x0

    .line 178
    .line 179
    const/high16 v20, 0x3f800000    # 1.0f

    .line 180
    .line 181
    const/high16 v23, 0x3f800000    # 1.0f

    .line 182
    .line 183
    const/16 v24, 0x0

    .line 184
    .line 185
    const/16 v25, 0x0

    .line 186
    .line 187
    const/16 v26, 0x0

    .line 188
    .line 189
    const-string v15, ""

    .line 190
    .line 191
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 192
    .line 193
    .line 194
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 195
    .line 196
    .line 197
    move-result v31

    .line 198
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 199
    .line 200
    move-object/from16 v33, v3

    .line 201
    .line 202
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 203
    .line 204
    .line 205
    move-result-wide v4

    .line 206
    const/4 v1, 0x0

    .line 207
    invoke-direct {v3, v4, v5, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 211
    .line 212
    .line 213
    move-result v38

    .line 214
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 215
    .line 216
    .line 217
    move-result v39

    .line 218
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 219
    .line 220
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const/high16 v0, 0x41000000    # 8.0f

    .line 224
    .line 225
    const/high16 v1, 0x41900000    # 18.0f

    .line 226
    .line 227
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 228
    .line 229
    .line 230
    const/high16 v0, -0x40800000    # -1.0f

    .line 231
    .line 232
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 233
    .line 234
    .line 235
    const/high16 v0, 0x41880000    # 17.0f

    .line 236
    .line 237
    const/high16 v1, 0x40c00000    # 6.0f

    .line 238
    .line 239
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 240
    .line 241
    .line 242
    const/high16 v5, -0x3f600000    # -5.0f

    .line 243
    .line 244
    const/high16 v6, -0x3f600000    # -5.0f

    .line 245
    .line 246
    const/4 v1, 0x0

    .line 247
    const v2, -0x3fcf5c29    # -2.76f

    .line 248
    .line 249
    .line 250
    const v3, -0x3ff0a3d7    # -2.24f

    .line 251
    .line 252
    .line 253
    const/high16 v4, -0x3f600000    # -5.0f

    .line 254
    .line 255
    move-object v0, v7

    .line 256
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 257
    .line 258
    .line 259
    const v0, 0x404f5c29    # 3.24f

    .line 260
    .line 261
    .line 262
    const/high16 v1, 0x40e00000    # 7.0f

    .line 263
    .line 264
    const/high16 v2, 0x40c00000    # 6.0f

    .line 265
    .line 266
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 267
    .line 268
    .line 269
    const/high16 v0, 0x40000000    # 2.0f

    .line 270
    .line 271
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 272
    .line 273
    .line 274
    const/high16 v0, 0x41000000    # 8.0f

    .line 275
    .line 276
    const/high16 v1, 0x40c00000    # 6.0f

    .line 277
    .line 278
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 279
    .line 280
    .line 281
    const/high16 v5, -0x40000000    # -2.0f

    .line 282
    .line 283
    const/high16 v6, 0x40000000    # 2.0f

    .line 284
    .line 285
    const v1, -0x40733333    # -1.1f

    .line 286
    .line 287
    .line 288
    const/4 v2, 0x0

    .line 289
    const/high16 v3, -0x40000000    # -2.0f

    .line 290
    .line 291
    const v4, 0x3f666666    # 0.9f

    .line 292
    .line 293
    .line 294
    move-object v0, v7

    .line 295
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 296
    .line 297
    .line 298
    const/high16 v0, 0x41200000    # 10.0f

    .line 299
    .line 300
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 301
    .line 302
    .line 303
    const/high16 v5, 0x40000000    # 2.0f

    .line 304
    .line 305
    const/4 v1, 0x0

    .line 306
    const v2, 0x3f8ccccd    # 1.1f

    .line 307
    .line 308
    .line 309
    const v3, 0x3f666666    # 0.9f

    .line 310
    .line 311
    .line 312
    const/high16 v4, 0x40000000    # 2.0f

    .line 313
    .line 314
    move-object v0, v7

    .line 315
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 316
    .line 317
    .line 318
    const/high16 v0, 0x41400000    # 12.0f

    .line 319
    .line 320
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 321
    .line 322
    .line 323
    const/high16 v6, -0x40000000    # -2.0f

    .line 324
    .line 325
    const v1, 0x3f8ccccd    # 1.1f

    .line 326
    .line 327
    .line 328
    const/4 v2, 0x0

    .line 329
    const/high16 v3, 0x40000000    # 2.0f

    .line 330
    .line 331
    const v4, -0x4099999a    # -0.9f

    .line 332
    .line 333
    .line 334
    move-object v0, v7

    .line 335
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 336
    .line 337
    .line 338
    const/high16 v0, 0x41a00000    # 20.0f

    .line 339
    .line 340
    const/high16 v1, 0x41200000    # 10.0f

    .line 341
    .line 342
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 343
    .line 344
    .line 345
    const/high16 v5, -0x40000000    # -2.0f

    .line 346
    .line 347
    const/4 v1, 0x0

    .line 348
    const v2, -0x40733333    # -1.1f

    .line 349
    .line 350
    .line 351
    const v3, -0x4099999a    # -0.9f

    .line 352
    .line 353
    .line 354
    const/high16 v4, -0x40000000    # -2.0f

    .line 355
    .line 356
    move-object v0, v7

    .line 357
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 361
    .line 362
    .line 363
    const/high16 v0, 0x41100000    # 9.0f

    .line 364
    .line 365
    const/high16 v1, 0x40c00000    # 6.0f

    .line 366
    .line 367
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 368
    .line 369
    .line 370
    const/high16 v5, 0x40400000    # 3.0f

    .line 371
    .line 372
    const/high16 v6, -0x3fc00000    # -3.0f

    .line 373
    .line 374
    const/4 v1, 0x0

    .line 375
    const v2, -0x402b851f    # -1.66f

    .line 376
    .line 377
    .line 378
    const v3, 0x3fab851f    # 1.34f

    .line 379
    .line 380
    .line 381
    const/high16 v4, -0x3fc00000    # -3.0f

    .line 382
    .line 383
    move-object v0, v7

    .line 384
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 385
    .line 386
    .line 387
    const v0, 0x3fab851f    # 1.34f

    .line 388
    .line 389
    .line 390
    const/high16 v1, 0x40400000    # 3.0f

    .line 391
    .line 392
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 393
    .line 394
    .line 395
    const/high16 v0, 0x40000000    # 2.0f

    .line 396
    .line 397
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 398
    .line 399
    .line 400
    const/high16 v0, 0x41100000    # 9.0f

    .line 401
    .line 402
    const/high16 v1, 0x41000000    # 8.0f

    .line 403
    .line 404
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 405
    .line 406
    .line 407
    const/high16 v1, 0x40c00000    # 6.0f

    .line 408
    .line 409
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 413
    .line 414
    .line 415
    const/high16 v0, 0x41900000    # 18.0f

    .line 416
    .line 417
    const/high16 v1, 0x41a00000    # 20.0f

    .line 418
    .line 419
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 420
    .line 421
    .line 422
    const/high16 v0, 0x41a00000    # 20.0f

    .line 423
    .line 424
    const/high16 v1, 0x40c00000    # 6.0f

    .line 425
    .line 426
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 427
    .line 428
    .line 429
    const/high16 v0, 0x41200000    # 10.0f

    .line 430
    .line 431
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 432
    .line 433
    .line 434
    const/high16 v0, 0x41400000    # 12.0f

    .line 435
    .line 436
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 437
    .line 438
    .line 439
    const/high16 v0, 0x41200000    # 10.0f

    .line 440
    .line 441
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 445
    .line 446
    .line 447
    const/high16 v0, 0x41880000    # 17.0f

    .line 448
    .line 449
    const/high16 v1, 0x41400000    # 12.0f

    .line 450
    .line 451
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 452
    .line 453
    .line 454
    const/high16 v5, 0x40000000    # 2.0f

    .line 455
    .line 456
    const/high16 v6, -0x40000000    # -2.0f

    .line 457
    .line 458
    const v1, 0x3f8ccccd    # 1.1f

    .line 459
    .line 460
    .line 461
    const/4 v2, 0x0

    .line 462
    const/high16 v3, 0x40000000    # 2.0f

    .line 463
    .line 464
    const v4, -0x4099999a    # -0.9f

    .line 465
    .line 466
    .line 467
    move-object v0, v7

    .line 468
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 469
    .line 470
    .line 471
    const v0, -0x4099999a    # -0.9f

    .line 472
    .line 473
    .line 474
    const/high16 v1, -0x40000000    # -2.0f

    .line 475
    .line 476
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 477
    .line 478
    .line 479
    const v0, 0x3f666666    # 0.9f

    .line 480
    .line 481
    .line 482
    const/high16 v1, 0x40000000    # 2.0f

    .line 483
    .line 484
    const/high16 v2, -0x40000000    # -2.0f

    .line 485
    .line 486
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 496
    .line 497
    .line 498
    move-result-object v30

    .line 499
    const/16 v44, 0x3800

    .line 500
    .line 501
    const/16 v45, 0x0

    .line 502
    .line 503
    const/high16 v34, 0x3f800000    # 1.0f

    .line 504
    .line 505
    const/high16 v36, 0x3f800000    # 1.0f

    .line 506
    .line 507
    const/16 v35, 0x0

    .line 508
    .line 509
    const/high16 v37, 0x3f800000    # 1.0f

    .line 510
    .line 511
    const/high16 v40, 0x3f800000    # 1.0f

    .line 512
    .line 513
    const/16 v41, 0x0

    .line 514
    .line 515
    const/16 v42, 0x0

    .line 516
    .line 517
    const/16 v43, 0x0

    .line 518
    .line 519
    const-string v32, ""

    .line 520
    .line 521
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    sput-object v0, Landroidx/compose/material/icons/twotone/LockKt;->_lock:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 530
    .line 531
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    return-object v0
.end method
