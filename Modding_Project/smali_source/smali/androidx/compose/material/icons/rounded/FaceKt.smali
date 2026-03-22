.class public final Landroidx/compose/material/icons/rounded/FaceKt;
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

.method public static final getFace(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/rounded/FaceKt;->_face:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.Face"

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
    const/high16 v0, 0x41500000    # 13.0f

    .line 80
    .line 81
    const/high16 v1, 0x41240000    # 10.25f

    .line 82
    .line 83
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .line 85
    .line 86
    const/high16 v5, -0x40600000    # -1.25f

    .line 87
    .line 88
    const/high16 v6, 0x3fa00000    # 1.25f

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    const v2, 0x3f30a3d7    # 0.69f

    .line 92
    .line 93
    .line 94
    const v3, -0x40f0a3d7    # -0.56f

    .line 95
    .line 96
    .line 97
    const/high16 v4, 0x3fa00000    # 1.25f

    .line 98
    .line 99
    move-object v0, v7

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    .line 102
    .line 103
    const v0, 0x415b0a3d    # 13.69f

    .line 104
    .line 105
    .line 106
    const/high16 v1, 0x40f80000    # 7.75f

    .line 107
    .line 108
    const/high16 v2, 0x41500000    # 13.0f

    .line 109
    .line 110
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    .line 112
    .line 113
    const v0, 0x4104f5c3    # 8.31f

    .line 114
    .line 115
    .line 116
    const/high16 v1, 0x41100000    # 9.0f

    .line 117
    .line 118
    const/high16 v2, 0x413c0000    # 11.75f

    .line 119
    .line 120
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    .line 122
    .line 123
    const v0, 0x4144f5c3    # 12.31f

    .line 124
    .line 125
    .line 126
    const/high16 v1, 0x41500000    # 13.0f

    .line 127
    .line 128
    const/high16 v2, 0x41240000    # 10.25f

    .line 129
    .line 130
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    .line 135
    .line 136
    const/high16 v0, 0x41700000    # 15.0f

    .line 137
    .line 138
    const/high16 v1, 0x413c0000    # 11.75f

    .line 139
    .line 140
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 141
    .line 142
    .line 143
    const v1, -0x40cf5c29    # -0.69f

    .line 144
    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    const/high16 v3, -0x40600000    # -1.25f

    .line 148
    .line 149
    const v4, 0x3f0f5c29    # 0.56f

    .line 150
    .line 151
    .line 152
    move-object v0, v7

    .line 153
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 154
    .line 155
    .line 156
    const v0, 0x3f0f5c29    # 0.56f

    .line 157
    .line 158
    .line 159
    const/high16 v1, 0x3fa00000    # 1.25f

    .line 160
    .line 161
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 162
    .line 163
    .line 164
    const v0, -0x40f0a3d7    # -0.56f

    .line 165
    .line 166
    .line 167
    const/high16 v1, -0x40600000    # -1.25f

    .line 168
    .line 169
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 170
    .line 171
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 172
    .line 173
    .line 174
    const v0, 0x417b0a3d    # 15.69f

    .line 175
    .line 176
    .line 177
    const/high16 v1, 0x41700000    # 15.0f

    .line 178
    .line 179
    const/high16 v2, 0x413c0000    # 11.75f

    .line 180
    .line 181
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 185
    .line 186
    .line 187
    const/high16 v0, 0x41b00000    # 22.0f

    .line 188
    .line 189
    const/high16 v1, 0x41400000    # 12.0f

    .line 190
    .line 191
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 192
    .line 193
    .line 194
    const/high16 v5, -0x3ee00000    # -10.0f

    .line 195
    .line 196
    const/high16 v6, 0x41200000    # 10.0f

    .line 197
    .line 198
    const/4 v1, 0x0

    .line 199
    const v2, 0x40b0a3d7    # 5.52f

    .line 200
    .line 201
    .line 202
    const v3, -0x3f70a3d7    # -4.48f

    .line 203
    .line 204
    .line 205
    const/high16 v4, 0x41200000    # 10.0f

    .line 206
    .line 207
    move-object v0, v7

    .line 208
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 209
    .line 210
    .line 211
    const v0, 0x418c28f6    # 17.52f

    .line 212
    .line 213
    .line 214
    const/high16 v1, 0x40000000    # 2.0f

    .line 215
    .line 216
    const/high16 v2, 0x41400000    # 12.0f

    .line 217
    .line 218
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 219
    .line 220
    .line 221
    const v0, 0x40cf5c29    # 6.48f

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 225
    .line 226
    .line 227
    const/high16 v1, 0x41b00000    # 22.0f

    .line 228
    .line 229
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 233
    .line 234
    .line 235
    const/high16 v0, 0x41a00000    # 20.0f

    .line 236
    .line 237
    const/high16 v1, 0x41400000    # 12.0f

    .line 238
    .line 239
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 240
    .line 241
    .line 242
    const v5, -0x41570a3d    # -0.33f

    .line 243
    .line 244
    .line 245
    const v6, -0x3ff0a3d7    # -2.24f

    .line 246
    .line 247
    .line 248
    const/4 v1, 0x0

    .line 249
    const v2, -0x40b851ec    # -0.78f

    .line 250
    .line 251
    .line 252
    const v3, -0x420a3d71    # -0.12f

    .line 253
    .line 254
    .line 255
    const v4, -0x403c28f6    # -1.53f

    .line 256
    .line 257
    .line 258
    move-object v0, v7

    .line 259
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 260
    .line 261
    .line 262
    const/high16 v5, 0x418c0000    # 17.5f

    .line 263
    .line 264
    const/high16 v6, 0x41200000    # 10.0f

    .line 265
    .line 266
    const v1, 0x4197c28f    # 18.97f

    .line 267
    .line 268
    .line 269
    const v2, 0x411e8f5c    # 9.91f

    .line 270
    .line 271
    .line 272
    const/high16 v3, 0x41920000    # 18.25f

    .line 273
    .line 274
    const/high16 v4, 0x41200000    # 10.0f

    .line 275
    .line 276
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 277
    .line 278
    .line 279
    const v5, -0x3f07ae14    # -7.76f

    .line 280
    .line 281
    .line 282
    const v6, -0x3f93d70a    # -3.69f

    .line 283
    .line 284
    .line 285
    const v1, -0x3fb7ae14    # -3.13f

    .line 286
    .line 287
    .line 288
    const/4 v2, 0x0

    .line 289
    const v3, -0x3f428f5c    # -5.92f

    .line 290
    .line 291
    .line 292
    const v4, -0x4047ae14    # -1.44f

    .line 293
    .line 294
    .line 295
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 296
    .line 297
    .line 298
    const/high16 v5, 0x40800000    # 4.0f

    .line 299
    .line 300
    const v6, 0x413dc28f    # 11.86f

    .line 301
    .line 302
    .line 303
    const v1, 0x410b0a3d    # 8.69f

    .line 304
    .line 305
    .line 306
    const v2, 0x410deb85    # 8.87f

    .line 307
    .line 308
    .line 309
    const v3, 0x40d33333    # 6.6f

    .line 310
    .line 311
    .line 312
    const v4, 0x412e147b    # 10.88f

    .line 313
    .line 314
    .line 315
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 316
    .line 317
    .line 318
    const/high16 v6, 0x41400000    # 12.0f

    .line 319
    .line 320
    const v1, 0x408051ec    # 4.01f

    .line 321
    .line 322
    .line 323
    const v2, 0x413e6666    # 11.9f

    .line 324
    .line 325
    .line 326
    const/high16 v3, 0x40800000    # 4.0f

    .line 327
    .line 328
    const v4, 0x413f3333    # 11.95f

    .line 329
    .line 330
    .line 331
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 332
    .line 333
    .line 334
    const/high16 v5, 0x41000000    # 8.0f

    .line 335
    .line 336
    const/high16 v6, 0x41000000    # 8.0f

    .line 337
    .line 338
    const/4 v1, 0x0

    .line 339
    const v2, 0x408d1eb8    # 4.41f

    .line 340
    .line 341
    .line 342
    const v3, 0x4065c28f    # 3.59f

    .line 343
    .line 344
    .line 345
    const/high16 v4, 0x41000000    # 8.0f

    .line 346
    .line 347
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 348
    .line 349
    .line 350
    const v0, 0x418347ae    # 16.41f

    .line 351
    .line 352
    .line 353
    const/high16 v1, 0x41a00000    # 20.0f

    .line 354
    .line 355
    const/high16 v2, 0x41400000    # 12.0f

    .line 356
    .line 357
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

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
    sput-object v0, Landroidx/compose/material/icons/rounded/FaceKt;->_face:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 398
    .line 399
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    return-object v0
.end method
