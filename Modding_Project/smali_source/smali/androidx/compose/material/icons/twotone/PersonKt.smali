.class public final Landroidx/compose/material/icons/twotone/PersonKt;
.super Ljava/lang/Object;
.source "Person.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _person:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getPerson(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/twotone/PersonKt;->_person:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "TwoTone.Person"

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
    const/high16 v3, 0x41800000    # 16.0f

    .line 84
    .line 85
    const/high16 v4, 0x41400000    # 12.0f

    .line 86
    .line 87
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    .line 89
    .line 90
    const/high16 v8, -0x3f400000    # -6.0f

    .line 91
    .line 92
    const/high16 v9, 0x40000000    # 2.0f

    .line 93
    .line 94
    const v4, -0x3fd3d70a    # -2.69f

    .line 95
    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    const v6, -0x3f475c29    # -5.77f

    .line 99
    .line 100
    .line 101
    const v7, 0x3fa3d70a    # 1.28f

    .line 102
    .line 103
    .line 104
    move-object v3, v10

    .line 105
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    .line 107
    .line 108
    const/high16 v3, 0x41400000    # 12.0f

    .line 109
    .line 110
    invoke-virtual {v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    .line 112
    .line 113
    const/high16 v9, -0x40000000    # -2.0f

    .line 114
    .line 115
    const v4, -0x41b33333    # -0.2f

    .line 116
    .line 117
    .line 118
    const v5, -0x40ca3d71    # -0.71f

    .line 119
    .line 120
    .line 121
    const v6, -0x3faccccd    # -3.3f

    .line 122
    .line 123
    .line 124
    const/high16 v7, -0x40000000    # -2.0f

    .line 125
    .line 126
    move-object v3, v10

    .line 127
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    const/16 v27, 0x3800

    .line 138
    .line 139
    const/16 v28, 0x0

    .line 140
    .line 141
    const v17, 0x3e99999a    # 0.3f

    .line 142
    .line 143
    .line 144
    const v19, 0x3e99999a    # 0.3f

    .line 145
    .line 146
    .line 147
    const/16 v18, 0x0

    .line 148
    .line 149
    const/high16 v20, 0x3f800000    # 1.0f

    .line 150
    .line 151
    const/high16 v23, 0x3f800000    # 1.0f

    .line 152
    .line 153
    const/16 v24, 0x0

    .line 154
    .line 155
    const/16 v25, 0x0

    .line 156
    .line 157
    const/16 v26, 0x0

    .line 158
    .line 159
    const-string v15, ""

    .line 160
    .line 161
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 162
    .line 163
    .line 164
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 165
    .line 166
    .line 167
    move-result v31

    .line 168
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 169
    .line 170
    move-object/from16 v33, v3

    .line 171
    .line 172
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 173
    .line 174
    .line 175
    move-result-wide v4

    .line 176
    const/4 v6, 0x0

    .line 177
    invoke-direct {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 181
    .line 182
    .line 183
    move-result v38

    .line 184
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 185
    .line 186
    .line 187
    move-result v39

    .line 188
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 189
    .line 190
    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const/high16 v3, 0x41000000    # 8.0f

    .line 194
    .line 195
    const/high16 v4, 0x41400000    # 12.0f

    .line 196
    .line 197
    invoke-virtual {v11, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 198
    .line 199
    .line 200
    const/4 v3, 0x0

    .line 201
    const/high16 v4, -0x40000000    # -2.0f

    .line 202
    .line 203
    invoke-virtual {v11, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 204
    .line 205
    .line 206
    const/high16 v9, 0x40800000    # 4.0f

    .line 207
    .line 208
    const/4 v10, 0x0

    .line 209
    const/high16 v4, 0x40000000    # 2.0f

    .line 210
    .line 211
    const/high16 v5, 0x40000000    # 2.0f

    .line 212
    .line 213
    const/4 v6, 0x0

    .line 214
    const/4 v7, 0x1

    .line 215
    const/4 v8, 0x1

    .line 216
    move-object v3, v11

    .line 217
    invoke-virtual/range {v3 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 218
    .line 219
    .line 220
    const/high16 v9, -0x3f800000    # -4.0f

    .line 221
    .line 222
    invoke-virtual/range {v3 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v30

    .line 229
    const/16 v44, 0x3800

    .line 230
    .line 231
    const/16 v45, 0x0

    .line 232
    .line 233
    const v34, 0x3e99999a    # 0.3f

    .line 234
    .line 235
    .line 236
    const v36, 0x3e99999a    # 0.3f

    .line 237
    .line 238
    .line 239
    const/16 v35, 0x0

    .line 240
    .line 241
    const/high16 v37, 0x3f800000    # 1.0f

    .line 242
    .line 243
    const/high16 v40, 0x3f800000    # 1.0f

    .line 244
    .line 245
    const/16 v41, 0x0

    .line 246
    .line 247
    const/16 v42, 0x0

    .line 248
    .line 249
    const/16 v43, 0x0

    .line 250
    .line 251
    const-string v32, ""

    .line 252
    .line 253
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 254
    .line 255
    .line 256
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 257
    .line 258
    .line 259
    move-result v48

    .line 260
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 261
    .line 262
    move-object/from16 v50, v3

    .line 263
    .line 264
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 265
    .line 266
    .line 267
    move-result-wide v4

    .line 268
    const/4 v1, 0x0

    .line 269
    invoke-direct {v3, v4, v5, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 273
    .line 274
    .line 275
    move-result v55

    .line 276
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 277
    .line 278
    .line 279
    move-result v56

    .line 280
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 281
    .line 282
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    const/high16 v0, 0x41600000    # 14.0f

    .line 286
    .line 287
    const/high16 v1, 0x41400000    # 12.0f

    .line 288
    .line 289
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 290
    .line 291
    .line 292
    const/high16 v5, -0x3f000000    # -8.0f

    .line 293
    .line 294
    const/high16 v6, 0x40800000    # 4.0f

    .line 295
    .line 296
    const v1, -0x3fd51eb8    # -2.67f

    .line 297
    .line 298
    .line 299
    const/4 v2, 0x0

    .line 300
    const/high16 v3, -0x3f000000    # -8.0f

    .line 301
    .line 302
    const v4, 0x3fab851f    # 1.34f

    .line 303
    .line 304
    .line 305
    move-object v0, v7

    .line 306
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 307
    .line 308
    .line 309
    const/high16 v0, 0x40000000    # 2.0f

    .line 310
    .line 311
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 312
    .line 313
    .line 314
    const/high16 v0, 0x41800000    # 16.0f

    .line 315
    .line 316
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 317
    .line 318
    .line 319
    const/high16 v0, -0x40000000    # -2.0f

    .line 320
    .line 321
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 322
    .line 323
    .line 324
    const/high16 v6, -0x3f800000    # -4.0f

    .line 325
    .line 326
    const/4 v1, 0x0

    .line 327
    const v2, -0x3fd5c28f    # -2.66f

    .line 328
    .line 329
    .line 330
    const v3, -0x3f5570a4    # -5.33f

    .line 331
    .line 332
    .line 333
    const/high16 v4, -0x3f800000    # -4.0f

    .line 334
    .line 335
    move-object v0, v7

    .line 336
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 340
    .line 341
    .line 342
    const/high16 v0, 0x41900000    # 18.0f

    .line 343
    .line 344
    const/high16 v1, 0x40c00000    # 6.0f

    .line 345
    .line 346
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 347
    .line 348
    .line 349
    const/high16 v5, 0x40c00000    # 6.0f

    .line 350
    .line 351
    const/high16 v6, -0x40000000    # -2.0f

    .line 352
    .line 353
    const v1, 0x3e6147ae    # 0.22f

    .line 354
    .line 355
    .line 356
    const v2, -0x40c7ae14    # -0.72f

    .line 357
    .line 358
    .line 359
    const v3, 0x4053d70a    # 3.31f

    .line 360
    .line 361
    .line 362
    const/high16 v4, -0x40000000    # -2.0f

    .line 363
    .line 364
    move-object v0, v7

    .line 365
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 366
    .line 367
    .line 368
    const/high16 v6, 0x40000000    # 2.0f

    .line 369
    .line 370
    const v1, 0x402ccccd    # 2.7f

    .line 371
    .line 372
    .line 373
    const/4 v2, 0x0

    .line 374
    const v3, 0x40b9999a    # 5.8f

    .line 375
    .line 376
    .line 377
    const v4, 0x3fa51eb8    # 1.29f

    .line 378
    .line 379
    .line 380
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 381
    .line 382
    .line 383
    const/high16 v0, 0x41900000    # 18.0f

    .line 384
    .line 385
    const/high16 v1, 0x40c00000    # 6.0f

    .line 386
    .line 387
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 391
    .line 392
    .line 393
    const/high16 v0, 0x41400000    # 12.0f

    .line 394
    .line 395
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 396
    .line 397
    .line 398
    const/high16 v5, 0x40800000    # 4.0f

    .line 399
    .line 400
    const/high16 v6, -0x3f800000    # -4.0f

    .line 401
    .line 402
    const v1, 0x400d70a4    # 2.21f

    .line 403
    .line 404
    .line 405
    const/high16 v3, 0x40800000    # 4.0f

    .line 406
    .line 407
    const v4, -0x401ae148    # -1.79f

    .line 408
    .line 409
    .line 410
    move-object v0, v7

    .line 411
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 412
    .line 413
    .line 414
    const v0, -0x401ae148    # -1.79f

    .line 415
    .line 416
    .line 417
    const/high16 v1, -0x3f800000    # -4.0f

    .line 418
    .line 419
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 420
    .line 421
    .line 422
    const v0, 0x3fe51eb8    # 1.79f

    .line 423
    .line 424
    .line 425
    const/high16 v1, 0x40800000    # 4.0f

    .line 426
    .line 427
    const/high16 v2, -0x3f800000    # -4.0f

    .line 428
    .line 429
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 436
    .line 437
    .line 438
    const/high16 v0, 0x40c00000    # 6.0f

    .line 439
    .line 440
    const/high16 v1, 0x41400000    # 12.0f

    .line 441
    .line 442
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 443
    .line 444
    .line 445
    const/high16 v5, 0x40000000    # 2.0f

    .line 446
    .line 447
    const/high16 v6, 0x40000000    # 2.0f

    .line 448
    .line 449
    const v1, 0x3f8ccccd    # 1.1f

    .line 450
    .line 451
    .line 452
    const/4 v2, 0x0

    .line 453
    const/high16 v3, 0x40000000    # 2.0f

    .line 454
    .line 455
    const v4, 0x3f666666    # 0.9f

    .line 456
    .line 457
    .line 458
    move-object v0, v7

    .line 459
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 460
    .line 461
    .line 462
    const v0, -0x4099999a    # -0.9f

    .line 463
    .line 464
    .line 465
    const/high16 v1, 0x40000000    # 2.0f

    .line 466
    .line 467
    const/high16 v2, -0x40000000    # -2.0f

    .line 468
    .line 469
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 470
    .line 471
    .line 472
    const/high16 v1, -0x40000000    # -2.0f

    .line 473
    .line 474
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 475
    .line 476
    .line 477
    const v0, 0x3f666666    # 0.9f

    .line 478
    .line 479
    .line 480
    const/high16 v1, 0x40000000    # 2.0f

    .line 481
    .line 482
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 489
    .line 490
    .line 491
    move-result-object v47

    .line 492
    const/16 v61, 0x3800

    .line 493
    .line 494
    const/16 v62, 0x0

    .line 495
    .line 496
    const/high16 v51, 0x3f800000    # 1.0f

    .line 497
    .line 498
    const/high16 v53, 0x3f800000    # 1.0f

    .line 499
    .line 500
    const/16 v52, 0x0

    .line 501
    .line 502
    const/high16 v54, 0x3f800000    # 1.0f

    .line 503
    .line 504
    const/high16 v57, 0x3f800000    # 1.0f

    .line 505
    .line 506
    const/16 v58, 0x0

    .line 507
    .line 508
    const/16 v59, 0x0

    .line 509
    .line 510
    const/16 v60, 0x0

    .line 511
    .line 512
    const-string v49, ""

    .line 513
    .line 514
    invoke-static/range {v46 .. v62}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    sput-object v0, Landroidx/compose/material/icons/twotone/PersonKt;->_person:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 523
    .line 524
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    return-object v0
.end method
