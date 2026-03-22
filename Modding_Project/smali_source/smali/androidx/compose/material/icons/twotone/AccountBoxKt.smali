.class public final Landroidx/compose/material/icons/twotone/AccountBoxKt;
.super Ljava/lang/Object;
.source "AccountBox.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _accountBox:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getAccountBox(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/twotone/AccountBoxKt;->_accountBox:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "TwoTone.AccountBox"

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
    const/high16 v4, 0x40a00000    # 5.0f

    .line 84
    .line 85
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const/high16 v3, 0x41600000    # 14.0f

    .line 89
    .line 90
    invoke-virtual {v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    .line 92
    .line 93
    const/high16 v3, 0x41980000    # 19.0f

    .line 94
    .line 95
    invoke-virtual {v10, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    .line 97
    .line 98
    const/high16 v3, 0x40a00000    # 5.0f

    .line 99
    .line 100
    invoke-virtual {v10, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    .line 102
    .line 103
    const/high16 v3, 0x41600000    # 14.0f

    .line 104
    .line 105
    invoke-virtual {v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    .line 110
    .line 111
    const/high16 v3, 0x41400000    # 12.0f

    .line 112
    .line 113
    const/high16 v4, 0x40c00000    # 6.0f

    .line 114
    .line 115
    invoke-virtual {v10, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    .line 117
    .line 118
    const/high16 v8, 0x40400000    # 3.0f

    .line 119
    .line 120
    const/high16 v9, 0x40400000    # 3.0f

    .line 121
    .line 122
    const v4, 0x3fd33333    # 1.65f

    .line 123
    .line 124
    .line 125
    const/4 v5, 0x0

    .line 126
    const/high16 v6, 0x40400000    # 3.0f

    .line 127
    .line 128
    const v7, 0x3faccccd    # 1.35f

    .line 129
    .line 130
    .line 131
    move-object v3, v10

    .line 132
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
    .line 134
    .line 135
    const v3, -0x40533333    # -1.35f

    .line 136
    .line 137
    .line 138
    const/high16 v4, 0x40400000    # 3.0f

    .line 139
    .line 140
    const/high16 v5, -0x3fc00000    # -3.0f

    .line 141
    .line 142
    invoke-virtual {v10, v3, v4, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 143
    .line 144
    .line 145
    const/high16 v4, -0x3fc00000    # -3.0f

    .line 146
    .line 147
    invoke-virtual {v10, v4, v3, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 148
    .line 149
    .line 150
    const v3, 0x3faccccd    # 1.35f

    .line 151
    .line 152
    .line 153
    const/high16 v4, 0x40400000    # 3.0f

    .line 154
    .line 155
    invoke-virtual {v10, v3, v5, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 159
    .line 160
    .line 161
    const v3, 0x4183c28f    # 16.47f

    .line 162
    .line 163
    .line 164
    const/high16 v4, 0x40c00000    # 6.0f

    .line 165
    .line 166
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 167
    .line 168
    .line 169
    const/high16 v8, 0x40c00000    # 6.0f

    .line 170
    .line 171
    const v9, -0x3f9ae148    # -3.58f

    .line 172
    .line 173
    .line 174
    const/4 v4, 0x0

    .line 175
    const/high16 v5, -0x3fe00000    # -2.5f

    .line 176
    .line 177
    const v6, 0x407e147b    # 3.97f

    .line 178
    .line 179
    .line 180
    const v7, -0x3f9ae148    # -3.58f

    .line 181
    .line 182
    .line 183
    move-object v3, v10

    .line 184
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 185
    .line 186
    .line 187
    const v3, 0x40651eb8    # 3.58f

    .line 188
    .line 189
    .line 190
    const v4, 0x3f8a3d71    # 1.08f

    .line 191
    .line 192
    .line 193
    const/high16 v5, 0x40c00000    # 6.0f

    .line 194
    .line 195
    invoke-virtual {v10, v5, v4, v5, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 196
    .line 197
    .line 198
    const/high16 v3, 0x41900000    # 18.0f

    .line 199
    .line 200
    invoke-virtual {v10, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 201
    .line 202
    .line 203
    const/high16 v4, 0x40c00000    # 6.0f

    .line 204
    .line 205
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 206
    .line 207
    .line 208
    const v3, -0x403c28f6    # -1.53f

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

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
    const/high16 v0, 0x41400000    # 12.0f

    .line 278
    .line 279
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 280
    .line 281
    .line 282
    const/high16 v5, 0x40400000    # 3.0f

    .line 283
    .line 284
    const/high16 v6, -0x3fc00000    # -3.0f

    .line 285
    .line 286
    const v1, 0x3fd33333    # 1.65f

    .line 287
    .line 288
    .line 289
    const/4 v2, 0x0

    .line 290
    const/high16 v3, 0x40400000    # 3.0f

    .line 291
    .line 292
    const v4, -0x40533333    # -1.35f

    .line 293
    .line 294
    .line 295
    move-object v0, v7

    .line 296
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 297
    .line 298
    .line 299
    const v0, -0x40533333    # -1.35f

    .line 300
    .line 301
    .line 302
    const/high16 v1, -0x3fc00000    # -3.0f

    .line 303
    .line 304
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 305
    .line 306
    .line 307
    const v0, 0x3faccccd    # 1.35f

    .line 308
    .line 309
    .line 310
    const/high16 v1, 0x40400000    # 3.0f

    .line 311
    .line 312
    const/high16 v2, -0x3fc00000    # -3.0f

    .line 313
    .line 314
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 321
    .line 322
    .line 323
    const/high16 v0, 0x41000000    # 8.0f

    .line 324
    .line 325
    const/high16 v1, 0x41400000    # 12.0f

    .line 326
    .line 327
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 328
    .line 329
    .line 330
    const/high16 v5, 0x3f800000    # 1.0f

    .line 331
    .line 332
    const/high16 v6, 0x3f800000    # 1.0f

    .line 333
    .line 334
    const v1, 0x3f0ccccd    # 0.55f

    .line 335
    .line 336
    .line 337
    const/4 v2, 0x0

    .line 338
    const/high16 v3, 0x3f800000    # 1.0f

    .line 339
    .line 340
    const v4, 0x3ee66666    # 0.45f

    .line 341
    .line 342
    .line 343
    move-object v0, v7

    .line 344
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 345
    .line 346
    .line 347
    const v0, -0x4119999a    # -0.45f

    .line 348
    .line 349
    .line 350
    const/high16 v1, 0x3f800000    # 1.0f

    .line 351
    .line 352
    const/high16 v2, -0x40800000    # -1.0f

    .line 353
    .line 354
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 355
    .line 356
    .line 357
    const/high16 v1, -0x40800000    # -1.0f

    .line 358
    .line 359
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 360
    .line 361
    .line 362
    const v0, 0x3ee66666    # 0.45f

    .line 363
    .line 364
    .line 365
    const/high16 v1, 0x3f800000    # 1.0f

    .line 366
    .line 367
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 371
    .line 372
    .line 373
    const/high16 v0, 0x41980000    # 19.0f

    .line 374
    .line 375
    const/high16 v1, 0x40400000    # 3.0f

    .line 376
    .line 377
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 378
    .line 379
    .line 380
    const/high16 v0, 0x40400000    # 3.0f

    .line 381
    .line 382
    const/high16 v1, 0x40a00000    # 5.0f

    .line 383
    .line 384
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 385
    .line 386
    .line 387
    const/high16 v5, -0x40000000    # -2.0f

    .line 388
    .line 389
    const/high16 v6, 0x40000000    # 2.0f

    .line 390
    .line 391
    const v1, -0x4071eb85    # -1.11f

    .line 392
    .line 393
    .line 394
    const/4 v2, 0x0

    .line 395
    const/high16 v3, -0x40000000    # -2.0f

    .line 396
    .line 397
    const v4, 0x3f666666    # 0.9f

    .line 398
    .line 399
    .line 400
    move-object v0, v7

    .line 401
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 402
    .line 403
    .line 404
    const/high16 v0, 0x41600000    # 14.0f

    .line 405
    .line 406
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 407
    .line 408
    .line 409
    const/high16 v5, 0x40000000    # 2.0f

    .line 410
    .line 411
    const/4 v1, 0x0

    .line 412
    const v2, 0x3f8ccccd    # 1.1f

    .line 413
    .line 414
    .line 415
    const v3, 0x3f63d70a    # 0.89f

    .line 416
    .line 417
    .line 418
    const/high16 v4, 0x40000000    # 2.0f

    .line 419
    .line 420
    move-object v0, v7

    .line 421
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 422
    .line 423
    .line 424
    const/high16 v0, 0x41600000    # 14.0f

    .line 425
    .line 426
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 427
    .line 428
    .line 429
    const/high16 v6, -0x40000000    # -2.0f

    .line 430
    .line 431
    const v1, 0x3f8ccccd    # 1.1f

    .line 432
    .line 433
    .line 434
    const/4 v2, 0x0

    .line 435
    const/high16 v3, 0x40000000    # 2.0f

    .line 436
    .line 437
    const v4, -0x4099999a    # -0.9f

    .line 438
    .line 439
    .line 440
    move-object v0, v7

    .line 441
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 442
    .line 443
    .line 444
    const/high16 v0, 0x41a80000    # 21.0f

    .line 445
    .line 446
    const/high16 v1, 0x40a00000    # 5.0f

    .line 447
    .line 448
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 449
    .line 450
    .line 451
    const/high16 v5, -0x40000000    # -2.0f

    .line 452
    .line 453
    const/4 v1, 0x0

    .line 454
    const v2, -0x40733333    # -1.1f

    .line 455
    .line 456
    .line 457
    const v3, -0x4099999a    # -0.9f

    .line 458
    .line 459
    .line 460
    const/high16 v4, -0x40000000    # -2.0f

    .line 461
    .line 462
    move-object v0, v7

    .line 463
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 467
    .line 468
    .line 469
    const/high16 v0, 0x41980000    # 19.0f

    .line 470
    .line 471
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 472
    .line 473
    .line 474
    const/high16 v1, 0x40a00000    # 5.0f

    .line 475
    .line 476
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 477
    .line 478
    .line 479
    const/high16 v0, 0x40a00000    # 5.0f

    .line 480
    .line 481
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 482
    .line 483
    .line 484
    const/high16 v0, 0x41600000    # 14.0f

    .line 485
    .line 486
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 493
    .line 494
    .line 495
    const v0, 0x4183c28f    # 16.47f

    .line 496
    .line 497
    .line 498
    const/high16 v1, 0x41900000    # 18.0f

    .line 499
    .line 500
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 501
    .line 502
    .line 503
    const/high16 v5, -0x3f400000    # -6.0f

    .line 504
    .line 505
    const v6, -0x3f9ae148    # -3.58f

    .line 506
    .line 507
    .line 508
    const/4 v1, 0x0

    .line 509
    const/high16 v2, -0x3fe00000    # -2.5f

    .line 510
    .line 511
    const v3, -0x3f81eb85    # -3.97f

    .line 512
    .line 513
    .line 514
    const v4, -0x3f9ae148    # -3.58f

    .line 515
    .line 516
    .line 517
    move-object v0, v7

    .line 518
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 519
    .line 520
    .line 521
    const/high16 v0, -0x3f400000    # -6.0f

    .line 522
    .line 523
    const v1, 0x40651eb8    # 3.58f

    .line 524
    .line 525
    .line 526
    const v2, 0x3f8a3d71    # 1.08f

    .line 527
    .line 528
    .line 529
    invoke-virtual {v7, v0, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 530
    .line 531
    .line 532
    const/high16 v0, 0x41900000    # 18.0f

    .line 533
    .line 534
    const/high16 v1, 0x40c00000    # 6.0f

    .line 535
    .line 536
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 537
    .line 538
    .line 539
    const/high16 v0, 0x41400000    # 12.0f

    .line 540
    .line 541
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 542
    .line 543
    .line 544
    const v0, -0x403c28f6    # -1.53f

    .line 545
    .line 546
    .line 547
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 551
    .line 552
    .line 553
    const/high16 v0, 0x41800000    # 16.0f

    .line 554
    .line 555
    const v1, 0x4104f5c3    # 8.31f

    .line 556
    .line 557
    .line 558
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 559
    .line 560
    .line 561
    const v5, 0x406c28f6    # 3.69f

    .line 562
    .line 563
    .line 564
    const v6, -0x4070a3d7    # -1.12f

    .line 565
    .line 566
    .line 567
    const v1, 0x3f30a3d7    # 0.69f

    .line 568
    .line 569
    .line 570
    const v2, -0x40f0a3d7    # -0.56f

    .line 571
    .line 572
    .line 573
    const v3, 0x401851ec    # 2.38f

    .line 574
    .line 575
    .line 576
    const v4, -0x4070a3d7    # -1.12f

    .line 577
    .line 578
    .line 579
    move-object v0, v7

    .line 580
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 581
    .line 582
    .line 583
    const v0, 0x406c28f6    # 3.69f

    .line 584
    .line 585
    .line 586
    const v1, 0x3f8f5c29    # 1.12f

    .line 587
    .line 588
    .line 589
    const v2, 0x4040a3d7    # 3.01f

    .line 590
    .line 591
    .line 592
    const v3, 0x3f0f5c29    # 0.56f

    .line 593
    .line 594
    .line 595
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 596
    .line 597
    .line 598
    const/high16 v0, 0x41800000    # 16.0f

    .line 599
    .line 600
    const v1, 0x4104f5c3    # 8.31f

    .line 601
    .line 602
    .line 603
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 610
    .line 611
    .line 612
    move-result-object v30

    .line 613
    const/16 v44, 0x3800

    .line 614
    .line 615
    const/16 v45, 0x0

    .line 616
    .line 617
    const/high16 v34, 0x3f800000    # 1.0f

    .line 618
    .line 619
    const/high16 v36, 0x3f800000    # 1.0f

    .line 620
    .line 621
    const/16 v35, 0x0

    .line 622
    .line 623
    const/high16 v37, 0x3f800000    # 1.0f

    .line 624
    .line 625
    const/high16 v40, 0x3f800000    # 1.0f

    .line 626
    .line 627
    const/16 v41, 0x0

    .line 628
    .line 629
    const/16 v42, 0x0

    .line 630
    .line 631
    const/16 v43, 0x0

    .line 632
    .line 633
    const-string v32, ""

    .line 634
    .line 635
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    sput-object v0, Landroidx/compose/material/icons/twotone/AccountBoxKt;->_accountBox:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 644
    .line 645
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    return-object v0
.end method
