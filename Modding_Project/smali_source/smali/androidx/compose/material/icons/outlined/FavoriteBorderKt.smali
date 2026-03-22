.class public final Landroidx/compose/material/icons/outlined/FavoriteBorderKt;
.super Ljava/lang/Object;
.source "FavoriteBorder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _favoriteBorder:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getFavoriteBorder(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29
    .param p0    # Landroidx/compose/material/icons/Icons$Outlined;
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
    sget-object v0, Landroidx/compose/material/icons/outlined/FavoriteBorderKt;->_favoriteBorder:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Outlined.FavoriteBorder"

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
    const/high16 v0, 0x41840000    # 16.5f

    .line 80
    .line 81
    const/high16 v1, 0x40400000    # 3.0f

    .line 82
    .line 83
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .line 85
    .line 86
    const/high16 v5, -0x3f700000    # -4.5f

    .line 87
    .line 88
    const v6, 0x4005c28f    # 2.09f

    .line 89
    .line 90
    .line 91
    const v1, -0x402147ae    # -1.74f

    .line 92
    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    const v3, -0x3fa5c28f    # -3.41f

    .line 96
    .line 97
    .line 98
    const v4, 0x3f4f5c29    # 0.81f

    .line 99
    .line 100
    .line 101
    move-object v0, v7

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    .line 104
    .line 105
    const/high16 v5, 0x40f00000    # 7.5f

    .line 106
    .line 107
    const/high16 v6, 0x40400000    # 3.0f

    .line 108
    .line 109
    const v1, 0x412e8f5c    # 10.91f

    .line 110
    .line 111
    .line 112
    const v2, 0x4073d70a    # 3.81f

    .line 113
    .line 114
    .line 115
    const v3, 0x4113d70a    # 9.24f

    .line 116
    .line 117
    .line 118
    const/high16 v4, 0x40400000    # 3.0f

    .line 119
    .line 120
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    .line 122
    .line 123
    const/high16 v5, 0x40000000    # 2.0f

    .line 124
    .line 125
    const/high16 v6, 0x41080000    # 8.5f

    .line 126
    .line 127
    const v1, 0x408d70a4    # 4.42f

    .line 128
    .line 129
    .line 130
    const/high16 v2, 0x40400000    # 3.0f

    .line 131
    .line 132
    const/high16 v3, 0x40000000    # 2.0f

    .line 133
    .line 134
    const v4, 0x40ad70a4    # 5.42f

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    .line 139
    .line 140
    const v5, 0x4108cccd    # 8.55f

    .line 141
    .line 142
    .line 143
    const v6, 0x4138a3d7    # 11.54f

    .line 144
    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    const v2, 0x4071eb85    # 3.78f

    .line 148
    .line 149
    .line 150
    const v3, 0x4059999a    # 3.4f

    .line 151
    .line 152
    .line 153
    const v4, 0x40db851f    # 6.86f

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 157
    .line 158
    .line 159
    const/high16 v0, 0x41400000    # 12.0f

    .line 160
    .line 161
    const v1, 0x41aacccd    # 21.35f

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 165
    .line 166
    .line 167
    const v0, 0x3fb9999a    # 1.45f

    .line 168
    .line 169
    .line 170
    const v1, -0x40570a3d    # -1.32f

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 174
    .line 175
    .line 176
    const/high16 v5, 0x41b00000    # 22.0f

    .line 177
    .line 178
    const/high16 v6, 0x41080000    # 8.5f

    .line 179
    .line 180
    const v1, 0x4194cccd    # 18.6f

    .line 181
    .line 182
    .line 183
    const v2, 0x4175c28f    # 15.36f

    .line 184
    .line 185
    .line 186
    const/high16 v3, 0x41b00000    # 22.0f

    .line 187
    .line 188
    const v4, 0x41447ae1    # 12.28f

    .line 189
    .line 190
    .line 191
    move-object v0, v7

    .line 192
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 193
    .line 194
    .line 195
    const/high16 v5, 0x41840000    # 16.5f

    .line 196
    .line 197
    const/high16 v6, 0x40400000    # 3.0f

    .line 198
    .line 199
    const/high16 v1, 0x41b00000    # 22.0f

    .line 200
    .line 201
    const v2, 0x40ad70a4    # 5.42f

    .line 202
    .line 203
    .line 204
    const v3, 0x419ca3d7    # 19.58f

    .line 205
    .line 206
    .line 207
    const/high16 v4, 0x40400000    # 3.0f

    .line 208
    .line 209
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 213
    .line 214
    .line 215
    const v0, 0x4141999a    # 12.1f

    .line 216
    .line 217
    .line 218
    const v1, 0x41946666    # 18.55f

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 222
    .line 223
    .line 224
    const v0, 0x3dcccccd    # 0.1f

    .line 225
    .line 226
    .line 227
    const v1, -0x42333333    # -0.1f

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 231
    .line 232
    .line 233
    const v0, -0x42333333    # -0.1f

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 237
    .line 238
    .line 239
    const/high16 v5, 0x40800000    # 4.0f

    .line 240
    .line 241
    const/high16 v6, 0x41080000    # 8.5f

    .line 242
    .line 243
    const v1, 0x40e47ae1    # 7.14f

    .line 244
    .line 245
    .line 246
    const v2, 0x4163d70a    # 14.24f

    .line 247
    .line 248
    .line 249
    const/high16 v3, 0x40800000    # 4.0f

    .line 250
    .line 251
    const v4, 0x41363d71    # 11.39f

    .line 252
    .line 253
    .line 254
    move-object v0, v7

    .line 255
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 256
    .line 257
    .line 258
    const/high16 v5, 0x40f00000    # 7.5f

    .line 259
    .line 260
    const/high16 v6, 0x40a00000    # 5.0f

    .line 261
    .line 262
    const/high16 v1, 0x40800000    # 4.0f

    .line 263
    .line 264
    const/high16 v2, 0x40d00000    # 6.5f

    .line 265
    .line 266
    const/high16 v3, 0x40b00000    # 5.5f

    .line 267
    .line 268
    const/high16 v4, 0x40a00000    # 5.0f

    .line 269
    .line 270
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 271
    .line 272
    .line 273
    const v5, 0x40647ae1    # 3.57f

    .line 274
    .line 275
    .line 276
    const v6, 0x40170a3d    # 2.36f

    .line 277
    .line 278
    .line 279
    const v1, 0x3fc51eb8    # 1.54f

    .line 280
    .line 281
    .line 282
    const/4 v2, 0x0

    .line 283
    const v3, 0x40428f5c    # 3.04f

    .line 284
    .line 285
    .line 286
    const v4, 0x3f7d70a4    # 0.99f

    .line 287
    .line 288
    .line 289
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 290
    .line 291
    .line 292
    const v0, 0x3fef5c29    # 1.87f

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 296
    .line 297
    .line 298
    const/high16 v5, 0x41840000    # 16.5f

    .line 299
    .line 300
    const/high16 v6, 0x40a00000    # 5.0f

    .line 301
    .line 302
    const v1, 0x41575c29    # 13.46f

    .line 303
    .line 304
    .line 305
    const v2, 0x40bfae14    # 5.99f

    .line 306
    .line 307
    .line 308
    const v3, 0x416f5c29    # 14.96f

    .line 309
    .line 310
    .line 311
    const/high16 v4, 0x40a00000    # 5.0f

    .line 312
    .line 313
    move-object v0, v7

    .line 314
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 315
    .line 316
    .line 317
    const/high16 v5, 0x40600000    # 3.5f

    .line 318
    .line 319
    const/high16 v6, 0x40600000    # 3.5f

    .line 320
    .line 321
    const/high16 v1, 0x40000000    # 2.0f

    .line 322
    .line 323
    const/4 v2, 0x0

    .line 324
    const/high16 v3, 0x40600000    # 3.5f

    .line 325
    .line 326
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 327
    .line 328
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 329
    .line 330
    .line 331
    const v5, -0x3f033333    # -7.9f

    .line 332
    .line 333
    .line 334
    const v6, 0x4120cccd    # 10.05f

    .line 335
    .line 336
    .line 337
    const/4 v1, 0x0

    .line 338
    const v2, 0x4038f5c3    # 2.89f

    .line 339
    .line 340
    .line 341
    const v3, -0x3fb70a3d    # -3.14f

    .line 342
    .line 343
    .line 344
    const v4, 0x40b7ae14    # 5.74f

    .line 345
    .line 346
    .line 347
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v13

    .line 357
    const/16 v27, 0x3800

    .line 358
    .line 359
    const/16 v28, 0x0

    .line 360
    .line 361
    const/high16 v17, 0x3f800000    # 1.0f

    .line 362
    .line 363
    const/high16 v19, 0x3f800000    # 1.0f

    .line 364
    .line 365
    const/16 v18, 0x0

    .line 366
    .line 367
    const/high16 v20, 0x3f800000    # 1.0f

    .line 368
    .line 369
    const/high16 v23, 0x3f800000    # 1.0f

    .line 370
    .line 371
    const/16 v24, 0x0

    .line 372
    .line 373
    const/16 v25, 0x0

    .line 374
    .line 375
    const/16 v26, 0x0

    .line 376
    .line 377
    const-string v15, ""

    .line 378
    .line 379
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    sput-object v0, Landroidx/compose/material/icons/outlined/FavoriteBorderKt;->_favoriteBorder:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 388
    .line 389
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    return-object v0
.end method
