.class public final Landroidx/compose/material/icons/twotone/InfoKt;
.super Ljava/lang/Object;
.source "Info.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _info:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getInfo(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/twotone/InfoKt;->_info:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "TwoTone.Info"

    .line 35
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
    const/high16 v5, 0x40800000    # 4.0f

    .line 82
    .line 83
    const/high16 v15, 0x41400000    # 12.0f

    .line 84
    .line 85
    invoke-virtual {v3, v15, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const/high16 v10, -0x3f000000    # -8.0f

    .line 89
    .line 90
    const/high16 v11, 0x41000000    # 8.0f

    .line 91
    .line 92
    const v6, -0x3f72e148    # -4.41f

    .line 93
    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    const/high16 v8, -0x3f000000    # -8.0f

    .line 97
    .line 98
    const v9, 0x4065c28f    # 3.59f

    .line 99
    .line 100
    .line 101
    move-object v5, v3

    .line 102
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    .line 104
    .line 105
    const v5, 0x4065c28f    # 3.59f

    .line 106
    .line 107
    .line 108
    const/high16 v6, 0x41000000    # 8.0f

    .line 109
    .line 110
    invoke-virtual {v3, v5, v6, v6, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    .line 112
    .line 113
    const v7, -0x3f9a3d71    # -3.59f

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v6, v7, v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v7, v8, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    .line 124
    .line 125
    const/high16 v9, 0x41880000    # 17.0f

    .line 126
    .line 127
    const/high16 v10, 0x41500000    # 13.0f

    .line 128
    .line 129
    invoke-virtual {v3, v10, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    .line 131
    .line 132
    const/high16 v9, -0x40000000    # -2.0f

    .line 133
    .line 134
    invoke-virtual {v3, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    .line 136
    .line 137
    const/high16 v11, -0x3f400000    # -6.0f

    .line 138
    .line 139
    invoke-virtual {v3, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 140
    .line 141
    .line 142
    const/high16 v11, 0x40000000    # 2.0f

    .line 143
    .line 144
    invoke-virtual {v3, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 145
    .line 146
    .line 147
    const/high16 v13, 0x40c00000    # 6.0f

    .line 148
    .line 149
    invoke-virtual {v3, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 153
    .line 154
    .line 155
    const/high16 v13, 0x41100000    # 9.0f

    .line 156
    .line 157
    invoke-virtual {v3, v10, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 161
    .line 162
    .line 163
    const/high16 v10, 0x41300000    # 11.0f

    .line 164
    .line 165
    const/high16 v13, 0x40e00000    # 7.0f

    .line 166
    .line 167
    invoke-virtual {v3, v10, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    move v5, v13

    .line 184
    const/high16 v7, 0x40c00000    # 6.0f

    .line 185
    .line 186
    move-object v13, v3

    .line 187
    const/16 v27, 0x3800

    .line 188
    .line 189
    const/16 v28, 0x0

    .line 190
    .line 191
    const-string v3, ""

    .line 192
    .line 193
    move v6, v15

    .line 194
    move-object v15, v3

    .line 195
    const v17, 0x3e99999a    # 0.3f

    .line 196
    .line 197
    .line 198
    const/16 v18, 0x0

    .line 199
    .line 200
    const v19, 0x3e99999a    # 0.3f

    .line 201
    .line 202
    .line 203
    const/high16 v20, 0x3f800000    # 1.0f

    .line 204
    .line 205
    const/high16 v23, 0x3f800000    # 1.0f

    .line 206
    .line 207
    const/16 v24, 0x0

    .line 208
    .line 209
    const/16 v25, 0x0

    .line 210
    .line 211
    const/16 v26, 0x0

    .line 212
    .line 213
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 214
    .line 215
    .line 216
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 217
    .line 218
    .line 219
    move-result v31

    .line 220
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 221
    .line 222
    move-object/from16 v33, v3

    .line 223
    .line 224
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 225
    .line 226
    .line 227
    move-result-wide v12

    .line 228
    invoke-direct {v3, v12, v13, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 232
    .line 233
    .line 234
    move-result v38

    .line 235
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 236
    .line 237
    .line 238
    move-result v39

    .line 239
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 240
    .line 241
    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v10, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v6, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 275
    .line 276
    .line 277
    const/high16 v17, 0x40000000    # 2.0f

    .line 278
    .line 279
    const/high16 v18, 0x41400000    # 12.0f

    .line 280
    .line 281
    const v13, 0x40cf5c29    # 6.48f

    .line 282
    .line 283
    .line 284
    const/high16 v14, 0x40000000    # 2.0f

    .line 285
    .line 286
    const/high16 v15, 0x40000000    # 2.0f

    .line 287
    .line 288
    const v16, 0x40cf5c29    # 6.48f

    .line 289
    .line 290
    .line 291
    move-object v12, v0

    .line 292
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 293
    .line 294
    .line 295
    const v1, 0x408f5c29    # 4.48f

    .line 296
    .line 297
    .line 298
    const/high16 v2, 0x41200000    # 10.0f

    .line 299
    .line 300
    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 301
    .line 302
    .line 303
    const v1, -0x3f70a3d7    # -4.48f

    .line 304
    .line 305
    .line 306
    const/high16 v3, -0x3ee00000    # -10.0f

    .line 307
    .line 308
    invoke-virtual {v0, v2, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 309
    .line 310
    .line 311
    const v1, 0x418c28f6    # 17.52f

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1, v11, v6, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 318
    .line 319
    .line 320
    const/high16 v1, 0x41a00000    # 20.0f

    .line 321
    .line 322
    invoke-virtual {v0, v6, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 323
    .line 324
    .line 325
    const/high16 v17, -0x3f000000    # -8.0f

    .line 326
    .line 327
    const/high16 v18, -0x3f000000    # -8.0f

    .line 328
    .line 329
    const v13, -0x3f72e148    # -4.41f

    .line 330
    .line 331
    .line 332
    const/4 v14, 0x0

    .line 333
    const/high16 v15, -0x3f000000    # -8.0f

    .line 334
    .line 335
    const v16, -0x3f9a3d71    # -3.59f

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 339
    .line 340
    .line 341
    const v1, 0x4065c28f    # 3.59f

    .line 342
    .line 343
    .line 344
    const/high16 v2, 0x41000000    # 8.0f

    .line 345
    .line 346
    invoke-virtual {v0, v1, v8, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v2, v1, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 350
    .line 351
    .line 352
    const v1, -0x3f9a3d71    # -3.59f

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v1, v2, v8, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v30

    .line 365
    const/16 v44, 0x3800

    .line 366
    .line 367
    const/16 v45, 0x0

    .line 368
    .line 369
    const-string v32, ""

    .line 370
    .line 371
    const/high16 v34, 0x3f800000    # 1.0f

    .line 372
    .line 373
    const/16 v35, 0x0

    .line 374
    .line 375
    const/high16 v36, 0x3f800000    # 1.0f

    .line 376
    .line 377
    const/high16 v37, 0x3f800000    # 1.0f

    .line 378
    .line 379
    const/high16 v40, 0x3f800000    # 1.0f

    .line 380
    .line 381
    const/16 v41, 0x0

    .line 382
    .line 383
    const/16 v42, 0x0

    .line 384
    .line 385
    const/16 v43, 0x0

    .line 386
    .line 387
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    sput-object v0, Landroidx/compose/material/icons/twotone/InfoKt;->_info:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 396
    .line 397
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    return-object v0
.end method
