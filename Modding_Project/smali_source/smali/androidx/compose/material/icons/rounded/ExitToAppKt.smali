.class public final Landroidx/compose/material/icons/rounded/ExitToAppKt;
.super Ljava/lang/Object;
.source "ExitToApp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _exitToApp:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getExitToApp(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/rounded/ExitToAppKt;->_exitToApp:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.ExitToApp"

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
    const v0, 0x412ca3d7    # 10.79f

    .line 80
    .line 81
    .line 82
    const v1, 0x418251ec    # 16.29f

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const v5, 0x3fb47ae1    # 1.41f

    .line 89
    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    const v1, 0x3ec7ae14    # 0.39f

    .line 93
    .line 94
    .line 95
    const v2, 0x3ec7ae14    # 0.39f

    .line 96
    .line 97
    .line 98
    const v3, 0x3f828f5c    # 1.02f

    .line 99
    .line 100
    .line 101
    const v4, 0x3ec7ae14    # 0.39f

    .line 102
    .line 103
    .line 104
    move-object v0, v7

    .line 105
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    .line 107
    .line 108
    const v0, 0x4065c28f    # 3.59f

    .line 109
    .line 110
    .line 111
    const v1, -0x3f9a3d71    # -3.59f

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    const v6, -0x404b851f    # -1.41f

    .line 119
    .line 120
    .line 121
    const v1, 0x3ec7ae14    # 0.39f

    .line 122
    .line 123
    .line 124
    const v2, -0x413851ec    # -0.39f

    .line 125
    .line 126
    .line 127
    const v3, 0x3ec7ae14    # 0.39f

    .line 128
    .line 129
    .line 130
    const v4, -0x407d70a4    # -1.02f

    .line 131
    .line 132
    .line 133
    move-object v0, v7

    .line 134
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    .line 136
    .line 137
    const v0, 0x41433333    # 12.2f

    .line 138
    .line 139
    .line 140
    const v1, 0x40f66666    # 7.7f

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 144
    .line 145
    .line 146
    const v5, -0x404b851f    # -1.41f

    .line 147
    .line 148
    .line 149
    const/4 v6, 0x0

    .line 150
    const v1, -0x413851ec    # -0.39f

    .line 151
    .line 152
    .line 153
    const v3, -0x407d70a4    # -1.02f

    .line 154
    .line 155
    .line 156
    const v4, -0x413851ec    # -0.39f

    .line 157
    .line 158
    .line 159
    move-object v0, v7

    .line 160
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 161
    .line 162
    .line 163
    const/4 v5, 0x0

    .line 164
    const v6, 0x3fb47ae1    # 1.41f

    .line 165
    .line 166
    .line 167
    const v2, 0x3ec7ae14    # 0.39f

    .line 168
    .line 169
    .line 170
    const v3, -0x413851ec    # -0.39f

    .line 171
    .line 172
    .line 173
    const v4, 0x3f828f5c    # 1.02f

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 177
    .line 178
    .line 179
    const v0, 0x414ab852    # 12.67f

    .line 180
    .line 181
    .line 182
    const/high16 v1, 0x41300000    # 11.0f

    .line 183
    .line 184
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 185
    .line 186
    .line 187
    const/high16 v0, 0x40800000    # 4.0f

    .line 188
    .line 189
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 190
    .line 191
    .line 192
    const/high16 v5, -0x40800000    # -1.0f

    .line 193
    .line 194
    const/high16 v6, 0x3f800000    # 1.0f

    .line 195
    .line 196
    const v1, -0x40f33333    # -0.55f

    .line 197
    .line 198
    .line 199
    const/4 v2, 0x0

    .line 200
    const/high16 v3, -0x40800000    # -1.0f

    .line 201
    .line 202
    const v4, 0x3ee66666    # 0.45f

    .line 203
    .line 204
    .line 205
    move-object v0, v7

    .line 206
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 207
    .line 208
    .line 209
    const v0, 0x3ee66666    # 0.45f

    .line 210
    .line 211
    .line 212
    const/high16 v1, 0x3f800000    # 1.0f

    .line 213
    .line 214
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 215
    .line 216
    .line 217
    const v0, 0x410ab852    # 8.67f

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 221
    .line 222
    .line 223
    const v0, -0x400f5c29    # -1.88f

    .line 224
    .line 225
    .line 226
    const v1, 0x3ff0a3d7    # 1.88f

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 230
    .line 231
    .line 232
    const/4 v5, 0x0

    .line 233
    const v6, 0x3fb47ae1    # 1.41f

    .line 234
    .line 235
    .line 236
    const v1, -0x413851ec    # -0.39f

    .line 237
    .line 238
    .line 239
    const v2, 0x3ec7ae14    # 0.39f

    .line 240
    .line 241
    .line 242
    const v3, -0x413d70a4    # -0.38f

    .line 243
    .line 244
    .line 245
    const v4, 0x3f83d70a    # 1.03f

    .line 246
    .line 247
    .line 248
    move-object v0, v7

    .line 249
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 253
    .line 254
    .line 255
    const/high16 v0, 0x41980000    # 19.0f

    .line 256
    .line 257
    const/high16 v1, 0x40400000    # 3.0f

    .line 258
    .line 259
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 260
    .line 261
    .line 262
    const/high16 v0, 0x40a00000    # 5.0f

    .line 263
    .line 264
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 265
    .line 266
    .line 267
    const/high16 v5, -0x40000000    # -2.0f

    .line 268
    .line 269
    const/high16 v6, 0x40000000    # 2.0f

    .line 270
    .line 271
    const v1, -0x4071eb85    # -1.11f

    .line 272
    .line 273
    .line 274
    const/4 v2, 0x0

    .line 275
    const/high16 v3, -0x40000000    # -2.0f

    .line 276
    .line 277
    const v4, 0x3f666666    # 0.9f

    .line 278
    .line 279
    .line 280
    move-object v0, v7

    .line 281
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 282
    .line 283
    .line 284
    const/high16 v0, 0x40400000    # 3.0f

    .line 285
    .line 286
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 287
    .line 288
    .line 289
    const/high16 v5, 0x3f800000    # 1.0f

    .line 290
    .line 291
    const/high16 v6, 0x3f800000    # 1.0f

    .line 292
    .line 293
    const/4 v1, 0x0

    .line 294
    const v2, 0x3f0ccccd    # 0.55f

    .line 295
    .line 296
    .line 297
    const v3, 0x3ee66666    # 0.45f

    .line 298
    .line 299
    .line 300
    const/high16 v4, 0x3f800000    # 1.0f

    .line 301
    .line 302
    move-object v0, v7

    .line 303
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 304
    .line 305
    .line 306
    const v0, -0x4119999a    # -0.45f

    .line 307
    .line 308
    .line 309
    const/high16 v1, -0x40800000    # -1.0f

    .line 310
    .line 311
    const/high16 v2, 0x3f800000    # 1.0f

    .line 312
    .line 313
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 314
    .line 315
    .line 316
    const/high16 v0, 0x40c00000    # 6.0f

    .line 317
    .line 318
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 319
    .line 320
    .line 321
    const/high16 v6, -0x40800000    # -1.0f

    .line 322
    .line 323
    const/4 v1, 0x0

    .line 324
    const v2, -0x40f33333    # -0.55f

    .line 325
    .line 326
    .line 327
    const/high16 v4, -0x40800000    # -1.0f

    .line 328
    .line 329
    move-object v0, v7

    .line 330
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 331
    .line 332
    .line 333
    const/high16 v0, 0x41400000    # 12.0f

    .line 334
    .line 335
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 336
    .line 337
    .line 338
    const/high16 v6, 0x3f800000    # 1.0f

    .line 339
    .line 340
    const v1, 0x3f0ccccd    # 0.55f

    .line 341
    .line 342
    .line 343
    const/4 v2, 0x0

    .line 344
    const/high16 v3, 0x3f800000    # 1.0f

    .line 345
    .line 346
    const v4, 0x3ee66666    # 0.45f

    .line 347
    .line 348
    .line 349
    move-object v0, v7

    .line 350
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 351
    .line 352
    .line 353
    const/high16 v0, 0x41400000    # 12.0f

    .line 354
    .line 355
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 356
    .line 357
    .line 358
    const/high16 v5, -0x40800000    # -1.0f

    .line 359
    .line 360
    const/4 v1, 0x0

    .line 361
    const v2, 0x3f0ccccd    # 0.55f

    .line 362
    .line 363
    .line 364
    const v3, -0x4119999a    # -0.45f

    .line 365
    .line 366
    .line 367
    const/high16 v4, 0x3f800000    # 1.0f

    .line 368
    .line 369
    move-object v0, v7

    .line 370
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 371
    .line 372
    .line 373
    const/high16 v0, 0x40c00000    # 6.0f

    .line 374
    .line 375
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 376
    .line 377
    .line 378
    const/high16 v6, -0x40800000    # -1.0f

    .line 379
    .line 380
    const v1, -0x40f33333    # -0.55f

    .line 381
    .line 382
    .line 383
    const/4 v2, 0x0

    .line 384
    const/high16 v3, -0x40800000    # -1.0f

    .line 385
    .line 386
    const v4, -0x4119999a    # -0.45f

    .line 387
    .line 388
    .line 389
    move-object v0, v7

    .line 390
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 391
    .line 392
    .line 393
    const/high16 v0, -0x40000000    # -2.0f

    .line 394
    .line 395
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 396
    .line 397
    .line 398
    const/4 v1, 0x0

    .line 399
    const v2, -0x40f33333    # -0.55f

    .line 400
    .line 401
    .line 402
    const v3, -0x4119999a    # -0.45f

    .line 403
    .line 404
    .line 405
    const/high16 v4, -0x40800000    # -1.0f

    .line 406
    .line 407
    move-object v0, v7

    .line 408
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 409
    .line 410
    .line 411
    const v0, 0x3ee66666    # 0.45f

    .line 412
    .line 413
    .line 414
    const/high16 v1, -0x40800000    # -1.0f

    .line 415
    .line 416
    const/high16 v2, 0x3f800000    # 1.0f

    .line 417
    .line 418
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 419
    .line 420
    .line 421
    const/high16 v0, 0x40400000    # 3.0f

    .line 422
    .line 423
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 424
    .line 425
    .line 426
    const/high16 v5, 0x40000000    # 2.0f

    .line 427
    .line 428
    const/high16 v6, 0x40000000    # 2.0f

    .line 429
    .line 430
    const/4 v1, 0x0

    .line 431
    const v2, 0x3f8ccccd    # 1.1f

    .line 432
    .line 433
    .line 434
    const v3, 0x3f666666    # 0.9f

    .line 435
    .line 436
    .line 437
    const/high16 v4, 0x40000000    # 2.0f

    .line 438
    .line 439
    move-object v0, v7

    .line 440
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 441
    .line 442
    .line 443
    const/high16 v0, 0x41600000    # 14.0f

    .line 444
    .line 445
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 446
    .line 447
    .line 448
    const/high16 v6, -0x40000000    # -2.0f

    .line 449
    .line 450
    const v1, 0x3f8ccccd    # 1.1f

    .line 451
    .line 452
    .line 453
    const/4 v2, 0x0

    .line 454
    const/high16 v3, 0x40000000    # 2.0f

    .line 455
    .line 456
    const v4, -0x4099999a    # -0.9f

    .line 457
    .line 458
    .line 459
    move-object v0, v7

    .line 460
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 461
    .line 462
    .line 463
    const/high16 v0, 0x40a00000    # 5.0f

    .line 464
    .line 465
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 466
    .line 467
    .line 468
    const/high16 v5, -0x40000000    # -2.0f

    .line 469
    .line 470
    const/4 v1, 0x0

    .line 471
    const v2, -0x40733333    # -1.1f

    .line 472
    .line 473
    .line 474
    const v3, -0x4099999a    # -0.9f

    .line 475
    .line 476
    .line 477
    const/high16 v4, -0x40000000    # -2.0f

    .line 478
    .line 479
    move-object v0, v7

    .line 480
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object v13

    .line 490
    const/16 v27, 0x3800

    .line 491
    .line 492
    const/16 v28, 0x0

    .line 493
    .line 494
    const/high16 v17, 0x3f800000    # 1.0f

    .line 495
    .line 496
    const/high16 v19, 0x3f800000    # 1.0f

    .line 497
    .line 498
    const/16 v18, 0x0

    .line 499
    .line 500
    const/high16 v20, 0x3f800000    # 1.0f

    .line 501
    .line 502
    const/high16 v23, 0x3f800000    # 1.0f

    .line 503
    .line 504
    const/16 v24, 0x0

    .line 505
    .line 506
    const/16 v25, 0x0

    .line 507
    .line 508
    const/16 v26, 0x0

    .line 509
    .line 510
    const-string v15, ""

    .line 511
    .line 512
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    sput-object v0, Landroidx/compose/material/icons/rounded/ExitToAppKt;->_exitToApp:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 521
    .line 522
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    return-object v0
.end method
