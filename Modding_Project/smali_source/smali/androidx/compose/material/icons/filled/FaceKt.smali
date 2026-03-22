.class public final Landroidx/compose/material/icons/filled/FaceKt;
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

.method public static final getFace(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29
    .param p0    # Landroidx/compose/material/icons/Icons$Filled;
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
    sget-object v0, Landroidx/compose/material/icons/filled/FaceKt;->_face:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Filled.Face"

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
    const/high16 v0, 0x41100000    # 9.0f

    .line 80
    .line 81
    const/high16 v1, 0x413c0000    # 11.75f

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
    const v1, -0x40cf5c29    # -0.69f

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    const/high16 v3, -0x40600000    # -1.25f

    .line 95
    .line 96
    const v4, 0x3f0f5c29    # 0.56f

    .line 97
    .line 98
    .line 99
    move-object v0, v7

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    .line 102
    .line 103
    const v0, 0x3f0f5c29    # 0.56f

    .line 104
    .line 105
    .line 106
    const/high16 v1, 0x3fa00000    # 1.25f

    .line 107
    .line 108
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    .line 110
    .line 111
    const v0, -0x40f0a3d7    # -0.56f

    .line 112
    .line 113
    .line 114
    const/high16 v1, -0x40600000    # -1.25f

    .line 115
    .line 116
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 117
    .line 118
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    .line 126
    .line 127
    const/high16 v0, 0x41700000    # 15.0f

    .line 128
    .line 129
    const/high16 v1, 0x413c0000    # 11.75f

    .line 130
    .line 131
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    .line 133
    .line 134
    const v1, -0x40cf5c29    # -0.69f

    .line 135
    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    move-object v0, v7

    .line 139
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 140
    .line 141
    .line 142
    const v0, 0x3f0f5c29    # 0.56f

    .line 143
    .line 144
    .line 145
    const/high16 v1, 0x3fa00000    # 1.25f

    .line 146
    .line 147
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 148
    .line 149
    .line 150
    const v0, -0x40f0a3d7    # -0.56f

    .line 151
    .line 152
    .line 153
    const/high16 v1, -0x40600000    # -1.25f

    .line 154
    .line 155
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 156
    .line 157
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 164
    .line 165
    .line 166
    const/high16 v0, 0x40000000    # 2.0f

    .line 167
    .line 168
    const/high16 v1, 0x41400000    # 12.0f

    .line 169
    .line 170
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 171
    .line 172
    .line 173
    const/high16 v5, 0x40000000    # 2.0f

    .line 174
    .line 175
    const/high16 v6, 0x41400000    # 12.0f

    .line 176
    .line 177
    const v1, 0x40cf5c29    # 6.48f

    .line 178
    .line 179
    .line 180
    const/high16 v2, 0x40000000    # 2.0f

    .line 181
    .line 182
    const/high16 v3, 0x40000000    # 2.0f

    .line 183
    .line 184
    const v4, 0x40cf5c29    # 6.48f

    .line 185
    .line 186
    .line 187
    move-object v0, v7

    .line 188
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 189
    .line 190
    .line 191
    const v0, 0x408f5c29    # 4.48f

    .line 192
    .line 193
    .line 194
    const/high16 v1, 0x41200000    # 10.0f

    .line 195
    .line 196
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 197
    .line 198
    .line 199
    const v0, -0x3f70a3d7    # -4.48f

    .line 200
    .line 201
    .line 202
    const/high16 v1, -0x3ee00000    # -10.0f

    .line 203
    .line 204
    const/high16 v2, 0x41200000    # 10.0f

    .line 205
    .line 206
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 207
    .line 208
    .line 209
    const v0, 0x418c28f6    # 17.52f

    .line 210
    .line 211
    .line 212
    const/high16 v1, 0x40000000    # 2.0f

    .line 213
    .line 214
    const/high16 v2, 0x41400000    # 12.0f

    .line 215
    .line 216
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 220
    .line 221
    .line 222
    const/high16 v0, 0x41a00000    # 20.0f

    .line 223
    .line 224
    const/high16 v1, 0x41400000    # 12.0f

    .line 225
    .line 226
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 227
    .line 228
    .line 229
    const/high16 v5, -0x3f000000    # -8.0f

    .line 230
    .line 231
    const/high16 v6, -0x3f000000    # -8.0f

    .line 232
    .line 233
    const v1, -0x3f72e148    # -4.41f

    .line 234
    .line 235
    .line 236
    const/4 v2, 0x0

    .line 237
    const/high16 v3, -0x3f000000    # -8.0f

    .line 238
    .line 239
    const v4, -0x3f9a3d71    # -3.59f

    .line 240
    .line 241
    .line 242
    move-object v0, v7

    .line 243
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 244
    .line 245
    .line 246
    const v5, 0x3d4ccccd    # 0.05f

    .line 247
    .line 248
    .line 249
    const v6, -0x40a3d70a    # -0.86f

    .line 250
    .line 251
    .line 252
    const/4 v1, 0x0

    .line 253
    const v2, -0x416b851f    # -0.29f

    .line 254
    .line 255
    .line 256
    const v3, 0x3ca3d70a    # 0.02f

    .line 257
    .line 258
    .line 259
    const v4, -0x40eb851f    # -0.58f

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 263
    .line 264
    .line 265
    const v5, 0x40a6b852    # 5.21f

    .line 266
    .line 267
    .line 268
    const v6, -0x3f5428f6    # -5.37f

    .line 269
    .line 270
    .line 271
    const v1, 0x40170a3d    # 2.36f

    .line 272
    .line 273
    .line 274
    const v2, -0x4079999a    # -1.05f

    .line 275
    .line 276
    .line 277
    const v3, 0x40875c29    # 4.23f

    .line 278
    .line 279
    .line 280
    const v4, -0x3fc147ae    # -2.98f

    .line 281
    .line 282
    .line 283
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 284
    .line 285
    .line 286
    const v5, 0x418b5c29    # 17.42f

    .line 287
    .line 288
    .line 289
    const/high16 v6, 0x41200000    # 10.0f

    .line 290
    .line 291
    const v1, 0x41311eb8    # 11.07f

    .line 292
    .line 293
    .line 294
    const v2, 0x410547ae    # 8.33f

    .line 295
    .line 296
    .line 297
    const v3, 0x4160cccd    # 14.05f

    .line 298
    .line 299
    .line 300
    const/high16 v4, 0x41200000    # 10.0f

    .line 301
    .line 302
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 303
    .line 304
    .line 305
    const/high16 v5, 0x40100000    # 2.25f

    .line 306
    .line 307
    const v6, -0x417ae148    # -0.26f

    .line 308
    .line 309
    .line 310
    const v1, 0x3f47ae14    # 0.78f

    .line 311
    .line 312
    .line 313
    const/4 v2, 0x0

    .line 314
    const v3, 0x3fc3d70a    # 1.53f

    .line 315
    .line 316
    .line 317
    const v4, -0x4247ae14    # -0.09f

    .line 318
    .line 319
    .line 320
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 321
    .line 322
    .line 323
    const v5, 0x3ea8f5c3    # 0.33f

    .line 324
    .line 325
    .line 326
    const v6, 0x4010a3d7    # 2.26f

    .line 327
    .line 328
    .line 329
    const v1, 0x3e570a3d    # 0.21f

    .line 330
    .line 331
    .line 332
    const v2, 0x3f35c28f    # 0.71f

    .line 333
    .line 334
    .line 335
    const v3, 0x3ea8f5c3    # 0.33f

    .line 336
    .line 337
    .line 338
    const v4, 0x3fbc28f6    # 1.47f

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 342
    .line 343
    .line 344
    const/high16 v5, -0x3f000000    # -8.0f

    .line 345
    .line 346
    const/high16 v6, 0x41000000    # 8.0f

    .line 347
    .line 348
    const/4 v1, 0x0

    .line 349
    const v2, 0x408d1eb8    # 4.41f

    .line 350
    .line 351
    .line 352
    const v3, -0x3f9a3d71    # -3.59f

    .line 353
    .line 354
    .line 355
    const/high16 v4, 0x41000000    # 8.0f

    .line 356
    .line 357
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v13

    .line 367
    const/16 v27, 0x3800

    .line 368
    .line 369
    const/16 v28, 0x0

    .line 370
    .line 371
    const/high16 v17, 0x3f800000    # 1.0f

    .line 372
    .line 373
    const/high16 v19, 0x3f800000    # 1.0f

    .line 374
    .line 375
    const/16 v18, 0x0

    .line 376
    .line 377
    const/high16 v20, 0x3f800000    # 1.0f

    .line 378
    .line 379
    const/high16 v23, 0x3f800000    # 1.0f

    .line 380
    .line 381
    const/16 v24, 0x0

    .line 382
    .line 383
    const/16 v25, 0x0

    .line 384
    .line 385
    const/16 v26, 0x0

    .line 386
    .line 387
    const-string v15, ""

    .line 388
    .line 389
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    sput-object v0, Landroidx/compose/material/icons/filled/FaceKt;->_face:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 398
    .line 399
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    return-object v0
.end method
