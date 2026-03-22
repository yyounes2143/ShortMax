.class public final Landroidx/compose/material/icons/outlined/AccountBoxKt;
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

.method public static final getAccountBox(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/outlined/AccountBoxKt;->_accountBox:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Outlined.AccountBox"

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
    const/high16 v0, 0x41980000    # 19.0f

    .line 80
    .line 81
    const/high16 v1, 0x40a00000    # 5.0f

    .line 82
    .line 83
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .line 85
    .line 86
    const/high16 v0, 0x41600000    # 14.0f

    .line 87
    .line 88
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    .line 90
    .line 91
    const/high16 v0, 0x41980000    # 19.0f

    .line 92
    .line 93
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    .line 95
    .line 96
    const/high16 v0, 0x40a00000    # 5.0f

    .line 97
    .line 98
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    .line 100
    .line 101
    const/high16 v0, 0x41600000    # 14.0f

    .line 102
    .line 103
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    const/high16 v1, -0x40000000    # -2.0f

    .line 108
    .line 109
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    .line 111
    .line 112
    const/high16 v0, 0x40a00000    # 5.0f

    .line 113
    .line 114
    const/high16 v1, 0x40400000    # 3.0f

    .line 115
    .line 116
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    .line 118
    .line 119
    const/high16 v5, -0x40000000    # -2.0f

    .line 120
    .line 121
    const/high16 v6, 0x40000000    # 2.0f

    .line 122
    .line 123
    const v1, -0x4071eb85    # -1.11f

    .line 124
    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    const/high16 v3, -0x40000000    # -2.0f

    .line 128
    .line 129
    const v4, 0x3f666666    # 0.9f

    .line 130
    .line 131
    .line 132
    move-object v0, v7

    .line 133
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    .line 135
    .line 136
    const/high16 v0, 0x41600000    # 14.0f

    .line 137
    .line 138
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 139
    .line 140
    .line 141
    const/high16 v5, 0x40000000    # 2.0f

    .line 142
    .line 143
    const/4 v1, 0x0

    .line 144
    const v2, 0x3f8ccccd    # 1.1f

    .line 145
    .line 146
    .line 147
    const v3, 0x3f63d70a    # 0.89f

    .line 148
    .line 149
    .line 150
    const/high16 v4, 0x40000000    # 2.0f

    .line 151
    .line 152
    move-object v0, v7

    .line 153
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 154
    .line 155
    .line 156
    const/high16 v0, 0x41600000    # 14.0f

    .line 157
    .line 158
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 159
    .line 160
    .line 161
    const/high16 v6, -0x40000000    # -2.0f

    .line 162
    .line 163
    const v1, 0x3f8ccccd    # 1.1f

    .line 164
    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    const/high16 v3, 0x40000000    # 2.0f

    .line 168
    .line 169
    const v4, -0x4099999a    # -0.9f

    .line 170
    .line 171
    .line 172
    move-object v0, v7

    .line 173
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 174
    .line 175
    .line 176
    const/high16 v0, 0x41a80000    # 21.0f

    .line 177
    .line 178
    const/high16 v1, 0x40a00000    # 5.0f

    .line 179
    .line 180
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 181
    .line 182
    .line 183
    const/high16 v5, -0x40000000    # -2.0f

    .line 184
    .line 185
    const/4 v1, 0x0

    .line 186
    const v2, -0x40733333    # -1.1f

    .line 187
    .line 188
    .line 189
    const v3, -0x4099999a    # -0.9f

    .line 190
    .line 191
    .line 192
    const/high16 v4, -0x40000000    # -2.0f

    .line 193
    .line 194
    move-object v0, v7

    .line 195
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 199
    .line 200
    .line 201
    const/high16 v0, 0x41400000    # 12.0f

    .line 202
    .line 203
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 204
    .line 205
    .line 206
    const/high16 v5, -0x3fc00000    # -3.0f

    .line 207
    .line 208
    const/high16 v6, -0x3fc00000    # -3.0f

    .line 209
    .line 210
    const v1, -0x402ccccd    # -1.65f

    .line 211
    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    const/high16 v3, -0x3fc00000    # -3.0f

    .line 215
    .line 216
    const v4, -0x40533333    # -1.35f

    .line 217
    .line 218
    .line 219
    move-object v0, v7

    .line 220
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 221
    .line 222
    .line 223
    const v0, 0x3faccccd    # 1.35f

    .line 224
    .line 225
    .line 226
    const/high16 v1, -0x3fc00000    # -3.0f

    .line 227
    .line 228
    const/high16 v2, 0x40400000    # 3.0f

    .line 229
    .line 230
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 231
    .line 232
    .line 233
    const/high16 v1, 0x40400000    # 3.0f

    .line 234
    .line 235
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 236
    .line 237
    .line 238
    const v0, -0x40533333    # -1.35f

    .line 239
    .line 240
    .line 241
    const/high16 v1, -0x3fc00000    # -3.0f

    .line 242
    .line 243
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 247
    .line 248
    .line 249
    const/high16 v0, 0x41000000    # 8.0f

    .line 250
    .line 251
    const/high16 v1, 0x41400000    # 12.0f

    .line 252
    .line 253
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 254
    .line 255
    .line 256
    const/high16 v5, -0x40800000    # -1.0f

    .line 257
    .line 258
    const/high16 v6, 0x3f800000    # 1.0f

    .line 259
    .line 260
    const v1, -0x40f33333    # -0.55f

    .line 261
    .line 262
    .line 263
    const/4 v2, 0x0

    .line 264
    const/high16 v3, -0x40800000    # -1.0f

    .line 265
    .line 266
    const v4, 0x3ee66666    # 0.45f

    .line 267
    .line 268
    .line 269
    move-object v0, v7

    .line 270
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 271
    .line 272
    .line 273
    const v0, 0x3ee66666    # 0.45f

    .line 274
    .line 275
    .line 276
    const/high16 v1, 0x3f800000    # 1.0f

    .line 277
    .line 278
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 279
    .line 280
    .line 281
    const v0, -0x4119999a    # -0.45f

    .line 282
    .line 283
    .line 284
    const/high16 v1, -0x40800000    # -1.0f

    .line 285
    .line 286
    const/high16 v2, 0x3f800000    # 1.0f

    .line 287
    .line 288
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 295
    .line 296
    .line 297
    const/high16 v0, 0x41900000    # 18.0f

    .line 298
    .line 299
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 300
    .line 301
    .line 302
    const/high16 v0, 0x40c00000    # 6.0f

    .line 303
    .line 304
    const/high16 v1, 0x41900000    # 18.0f

    .line 305
    .line 306
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 307
    .line 308
    .line 309
    const v0, -0x403c28f6    # -1.53f

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 313
    .line 314
    .line 315
    const/high16 v5, 0x40c00000    # 6.0f

    .line 316
    .line 317
    const v6, -0x3f9ae148    # -3.58f

    .line 318
    .line 319
    .line 320
    const/4 v1, 0x0

    .line 321
    const/high16 v2, -0x3fe00000    # -2.5f

    .line 322
    .line 323
    const v3, 0x407e147b    # 3.97f

    .line 324
    .line 325
    .line 326
    const v4, -0x3f9ae148    # -3.58f

    .line 327
    .line 328
    .line 329
    move-object v0, v7

    .line 330
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 331
    .line 332
    .line 333
    const v0, 0x3f8a3d71    # 1.08f

    .line 334
    .line 335
    .line 336
    const v1, 0x40651eb8    # 3.58f

    .line 337
    .line 338
    .line 339
    const/high16 v2, 0x40c00000    # 6.0f

    .line 340
    .line 341
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 342
    .line 343
    .line 344
    const/high16 v0, 0x41900000    # 18.0f

    .line 345
    .line 346
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 350
    .line 351
    .line 352
    const v0, 0x4104f5c3    # 8.31f

    .line 353
    .line 354
    .line 355
    const/high16 v1, 0x41800000    # 16.0f

    .line 356
    .line 357
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 358
    .line 359
    .line 360
    const v0, 0x40ec28f6    # 7.38f

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 364
    .line 365
    .line 366
    const v5, -0x3f93d70a    # -3.69f

    .line 367
    .line 368
    .line 369
    const v6, -0x4070a3d7    # -1.12f

    .line 370
    .line 371
    .line 372
    const v1, -0x40cf5c29    # -0.69f

    .line 373
    .line 374
    .line 375
    const v2, -0x40f0a3d7    # -0.56f

    .line 376
    .line 377
    .line 378
    const v3, -0x3fe7ae14    # -2.38f

    .line 379
    .line 380
    .line 381
    const v4, -0x4070a3d7    # -1.12f

    .line 382
    .line 383
    .line 384
    move-object v0, v7

    .line 385
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 386
    .line 387
    .line 388
    const v0, -0x3f93d70a    # -3.69f

    .line 389
    .line 390
    .line 391
    const v1, 0x3f8f5c29    # 1.12f

    .line 392
    .line 393
    .line 394
    const v2, -0x3fbf5c29    # -3.01f

    .line 395
    .line 396
    .line 397
    const v3, 0x3f0f5c29    # 0.56f

    .line 398
    .line 399
    .line 400
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 407
    .line 408
    .line 409
    move-result-object v13

    .line 410
    const/16 v27, 0x3800

    .line 411
    .line 412
    const/16 v28, 0x0

    .line 413
    .line 414
    const/high16 v17, 0x3f800000    # 1.0f

    .line 415
    .line 416
    const/high16 v19, 0x3f800000    # 1.0f

    .line 417
    .line 418
    const/16 v18, 0x0

    .line 419
    .line 420
    const/high16 v20, 0x3f800000    # 1.0f

    .line 421
    .line 422
    const/high16 v23, 0x3f800000    # 1.0f

    .line 423
    .line 424
    const/16 v24, 0x0

    .line 425
    .line 426
    const/16 v25, 0x0

    .line 427
    .line 428
    const/16 v26, 0x0

    .line 429
    .line 430
    const-string v15, ""

    .line 431
    .line 432
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    sput-object v0, Landroidx/compose/material/icons/outlined/AccountBoxKt;->_accountBox:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 441
    .line 442
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    return-object v0
.end method
