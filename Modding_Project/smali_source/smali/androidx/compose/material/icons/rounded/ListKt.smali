.class public final Landroidx/compose/material/icons/rounded/ListKt;
.super Ljava/lang/Object;
.source "List.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _list:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getList(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/rounded/ListKt;->_list:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.List"

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
    const/high16 v1, 0x40800000    # 4.0f

    .line 82
    .line 83
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .line 85
    .line 86
    const/high16 v5, 0x3f800000    # 1.0f

    .line 87
    .line 88
    const/high16 v6, -0x40800000    # -1.0f

    .line 89
    .line 90
    const v1, 0x3f0ccccd    # 0.55f

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    const/high16 v3, 0x3f800000    # 1.0f

    .line 95
    .line 96
    const v4, -0x4119999a    # -0.45f

    .line 97
    .line 98
    .line 99
    move-object v0, v7

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    .line 102
    .line 103
    const v0, -0x4119999a    # -0.45f

    .line 104
    .line 105
    .line 106
    const/high16 v1, -0x40800000    # -1.0f

    .line 107
    .line 108
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    .line 110
    .line 111
    const v0, 0x3ee66666    # 0.45f

    .line 112
    .line 113
    .line 114
    const/high16 v1, 0x3f800000    # 1.0f

    .line 115
    .line 116
    const/high16 v2, -0x40800000    # -1.0f

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
    const/high16 v0, 0x41880000    # 17.0f

    .line 128
    .line 129
    const/high16 v1, 0x40800000    # 4.0f

    .line 130
    .line 131
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    .line 133
    .line 134
    const v1, 0x3f0ccccd    # 0.55f

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
    const v0, -0x4119999a    # -0.45f

    .line 143
    .line 144
    .line 145
    const/high16 v1, -0x40800000    # -1.0f

    .line 146
    .line 147
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 148
    .line 149
    .line 150
    const v0, 0x3ee66666    # 0.45f

    .line 151
    .line 152
    .line 153
    const/high16 v1, 0x3f800000    # 1.0f

    .line 154
    .line 155
    const/high16 v2, -0x40800000    # -1.0f

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
    const/high16 v0, 0x41100000    # 9.0f

    .line 167
    .line 168
    const/high16 v1, 0x40800000    # 4.0f

    .line 169
    .line 170
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 171
    .line 172
    .line 173
    const v1, 0x3f0ccccd    # 0.55f

    .line 174
    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    move-object v0, v7

    .line 178
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 179
    .line 180
    .line 181
    const v0, -0x4119999a    # -0.45f

    .line 182
    .line 183
    .line 184
    const/high16 v1, -0x40800000    # -1.0f

    .line 185
    .line 186
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 187
    .line 188
    .line 189
    const v0, 0x3ee66666    # 0.45f

    .line 190
    .line 191
    .line 192
    const/high16 v1, 0x3f800000    # 1.0f

    .line 193
    .line 194
    const/high16 v2, -0x40800000    # -1.0f

    .line 195
    .line 196
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 203
    .line 204
    .line 205
    const/high16 v0, 0x41500000    # 13.0f

    .line 206
    .line 207
    const/high16 v1, 0x41000000    # 8.0f

    .line 208
    .line 209
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 210
    .line 211
    .line 212
    const/high16 v0, 0x41400000    # 12.0f

    .line 213
    .line 214
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 215
    .line 216
    .line 217
    const v1, 0x3f0ccccd    # 0.55f

    .line 218
    .line 219
    .line 220
    const/4 v2, 0x0

    .line 221
    move-object v0, v7

    .line 222
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 223
    .line 224
    .line 225
    const v0, -0x4119999a    # -0.45f

    .line 226
    .line 227
    .line 228
    const/high16 v1, -0x40800000    # -1.0f

    .line 229
    .line 230
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 231
    .line 232
    .line 233
    const/high16 v0, 0x41300000    # 11.0f

    .line 234
    .line 235
    const/high16 v1, 0x41000000    # 8.0f

    .line 236
    .line 237
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 238
    .line 239
    .line 240
    const/high16 v5, -0x40800000    # -1.0f

    .line 241
    .line 242
    const/high16 v6, 0x3f800000    # 1.0f

    .line 243
    .line 244
    const v1, -0x40f33333    # -0.55f

    .line 245
    .line 246
    .line 247
    const/high16 v3, -0x40800000    # -1.0f

    .line 248
    .line 249
    const v4, 0x3ee66666    # 0.45f

    .line 250
    .line 251
    .line 252
    move-object v0, v7

    .line 253
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 254
    .line 255
    .line 256
    const v0, 0x3ee66666    # 0.45f

    .line 257
    .line 258
    .line 259
    const/high16 v1, 0x3f800000    # 1.0f

    .line 260
    .line 261
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 265
    .line 266
    .line 267
    const/high16 v0, 0x41880000    # 17.0f

    .line 268
    .line 269
    const/high16 v1, 0x41000000    # 8.0f

    .line 270
    .line 271
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 272
    .line 273
    .line 274
    const/high16 v0, 0x41400000    # 12.0f

    .line 275
    .line 276
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 277
    .line 278
    .line 279
    const/high16 v5, 0x3f800000    # 1.0f

    .line 280
    .line 281
    const/high16 v6, -0x40800000    # -1.0f

    .line 282
    .line 283
    const v1, 0x3f0ccccd    # 0.55f

    .line 284
    .line 285
    .line 286
    const/high16 v3, 0x3f800000    # 1.0f

    .line 287
    .line 288
    const v4, -0x4119999a    # -0.45f

    .line 289
    .line 290
    .line 291
    move-object v0, v7

    .line 292
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 293
    .line 294
    .line 295
    const v0, -0x4119999a    # -0.45f

    .line 296
    .line 297
    .line 298
    const/high16 v1, -0x40800000    # -1.0f

    .line 299
    .line 300
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 301
    .line 302
    .line 303
    const/high16 v0, 0x41700000    # 15.0f

    .line 304
    .line 305
    const/high16 v1, 0x41000000    # 8.0f

    .line 306
    .line 307
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 308
    .line 309
    .line 310
    const/high16 v5, -0x40800000    # -1.0f

    .line 311
    .line 312
    const/high16 v6, 0x3f800000    # 1.0f

    .line 313
    .line 314
    const v1, -0x40f33333    # -0.55f

    .line 315
    .line 316
    .line 317
    const/high16 v3, -0x40800000    # -1.0f

    .line 318
    .line 319
    const v4, 0x3ee66666    # 0.45f

    .line 320
    .line 321
    .line 322
    move-object v0, v7

    .line 323
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 324
    .line 325
    .line 326
    const v0, 0x3ee66666    # 0.45f

    .line 327
    .line 328
    .line 329
    const/high16 v1, 0x3f800000    # 1.0f

    .line 330
    .line 331
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 335
    .line 336
    .line 337
    const/high16 v0, 0x40e00000    # 7.0f

    .line 338
    .line 339
    const/high16 v1, 0x41000000    # 8.0f

    .line 340
    .line 341
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 342
    .line 343
    .line 344
    const/high16 v5, 0x3f800000    # 1.0f

    .line 345
    .line 346
    const/4 v1, 0x0

    .line 347
    const v2, 0x3f0ccccd    # 0.55f

    .line 348
    .line 349
    .line 350
    const v3, 0x3ee66666    # 0.45f

    .line 351
    .line 352
    .line 353
    const/high16 v4, 0x3f800000    # 1.0f

    .line 354
    .line 355
    move-object v0, v7

    .line 356
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 357
    .line 358
    .line 359
    const/high16 v0, 0x41400000    # 12.0f

    .line 360
    .line 361
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 362
    .line 363
    .line 364
    const/high16 v6, -0x40800000    # -1.0f

    .line 365
    .line 366
    const v1, 0x3f0ccccd    # 0.55f

    .line 367
    .line 368
    .line 369
    const/4 v2, 0x0

    .line 370
    const/high16 v3, 0x3f800000    # 1.0f

    .line 371
    .line 372
    const v4, -0x4119999a    # -0.45f

    .line 373
    .line 374
    .line 375
    move-object v0, v7

    .line 376
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 377
    .line 378
    .line 379
    const v0, -0x4119999a    # -0.45f

    .line 380
    .line 381
    .line 382
    const/high16 v1, -0x40800000    # -1.0f

    .line 383
    .line 384
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 385
    .line 386
    .line 387
    const/high16 v0, 0x40e00000    # 7.0f

    .line 388
    .line 389
    const/high16 v1, 0x41000000    # 8.0f

    .line 390
    .line 391
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 392
    .line 393
    .line 394
    const/high16 v5, -0x40800000    # -1.0f

    .line 395
    .line 396
    const/high16 v6, 0x3f800000    # 1.0f

    .line 397
    .line 398
    const v1, -0x40f33333    # -0.55f

    .line 399
    .line 400
    .line 401
    const/high16 v3, -0x40800000    # -1.0f

    .line 402
    .line 403
    const v4, 0x3ee66666    # 0.45f

    .line 404
    .line 405
    .line 406
    move-object v0, v7

    .line 407
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 411
    .line 412
    .line 413
    const/high16 v0, 0x41500000    # 13.0f

    .line 414
    .line 415
    const/high16 v1, 0x40800000    # 4.0f

    .line 416
    .line 417
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 418
    .line 419
    .line 420
    const/high16 v5, 0x3f800000    # 1.0f

    .line 421
    .line 422
    const/high16 v6, -0x40800000    # -1.0f

    .line 423
    .line 424
    const v1, 0x3f0ccccd    # 0.55f

    .line 425
    .line 426
    .line 427
    const/high16 v3, 0x3f800000    # 1.0f

    .line 428
    .line 429
    const v4, -0x4119999a    # -0.45f

    .line 430
    .line 431
    .line 432
    move-object v0, v7

    .line 433
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 434
    .line 435
    .line 436
    const v0, -0x4119999a    # -0.45f

    .line 437
    .line 438
    .line 439
    const/high16 v1, -0x40800000    # -1.0f

    .line 440
    .line 441
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 442
    .line 443
    .line 444
    const v0, 0x3ee66666    # 0.45f

    .line 445
    .line 446
    .line 447
    const/high16 v1, 0x3f800000    # 1.0f

    .line 448
    .line 449
    const/high16 v2, -0x40800000    # -1.0f

    .line 450
    .line 451
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 458
    .line 459
    .line 460
    const/high16 v0, 0x41880000    # 17.0f

    .line 461
    .line 462
    const/high16 v1, 0x40800000    # 4.0f

    .line 463
    .line 464
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 465
    .line 466
    .line 467
    const v1, 0x3f0ccccd    # 0.55f

    .line 468
    .line 469
    .line 470
    const/4 v2, 0x0

    .line 471
    move-object v0, v7

    .line 472
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 473
    .line 474
    .line 475
    const v0, -0x4119999a    # -0.45f

    .line 476
    .line 477
    .line 478
    const/high16 v1, -0x40800000    # -1.0f

    .line 479
    .line 480
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 481
    .line 482
    .line 483
    const v0, 0x3ee66666    # 0.45f

    .line 484
    .line 485
    .line 486
    const/high16 v1, 0x3f800000    # 1.0f

    .line 487
    .line 488
    const/high16 v2, -0x40800000    # -1.0f

    .line 489
    .line 490
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 497
    .line 498
    .line 499
    const/high16 v0, 0x41100000    # 9.0f

    .line 500
    .line 501
    const/high16 v1, 0x40800000    # 4.0f

    .line 502
    .line 503
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 504
    .line 505
    .line 506
    const v1, 0x3f0ccccd    # 0.55f

    .line 507
    .line 508
    .line 509
    const/4 v2, 0x0

    .line 510
    move-object v0, v7

    .line 511
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 512
    .line 513
    .line 514
    const v0, -0x4119999a    # -0.45f

    .line 515
    .line 516
    .line 517
    const/high16 v1, -0x40800000    # -1.0f

    .line 518
    .line 519
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 520
    .line 521
    .line 522
    const v0, 0x3ee66666    # 0.45f

    .line 523
    .line 524
    .line 525
    const/high16 v1, 0x3f800000    # 1.0f

    .line 526
    .line 527
    const/high16 v2, -0x40800000    # -1.0f

    .line 528
    .line 529
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 536
    .line 537
    .line 538
    const/high16 v0, 0x41500000    # 13.0f

    .line 539
    .line 540
    const/high16 v1, 0x41000000    # 8.0f

    .line 541
    .line 542
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 543
    .line 544
    .line 545
    const/high16 v0, 0x41400000    # 12.0f

    .line 546
    .line 547
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 548
    .line 549
    .line 550
    const v1, 0x3f0ccccd    # 0.55f

    .line 551
    .line 552
    .line 553
    const/4 v2, 0x0

    .line 554
    move-object v0, v7

    .line 555
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 556
    .line 557
    .line 558
    const v0, -0x4119999a    # -0.45f

    .line 559
    .line 560
    .line 561
    const/high16 v1, -0x40800000    # -1.0f

    .line 562
    .line 563
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 564
    .line 565
    .line 566
    const/high16 v0, 0x41300000    # 11.0f

    .line 567
    .line 568
    const/high16 v1, 0x41000000    # 8.0f

    .line 569
    .line 570
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 571
    .line 572
    .line 573
    const/high16 v5, -0x40800000    # -1.0f

    .line 574
    .line 575
    const/high16 v6, 0x3f800000    # 1.0f

    .line 576
    .line 577
    const v1, -0x40f33333    # -0.55f

    .line 578
    .line 579
    .line 580
    const/high16 v3, -0x40800000    # -1.0f

    .line 581
    .line 582
    const v4, 0x3ee66666    # 0.45f

    .line 583
    .line 584
    .line 585
    move-object v0, v7

    .line 586
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 587
    .line 588
    .line 589
    const v0, 0x3ee66666    # 0.45f

    .line 590
    .line 591
    .line 592
    const/high16 v1, 0x3f800000    # 1.0f

    .line 593
    .line 594
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 598
    .line 599
    .line 600
    const/high16 v0, 0x41880000    # 17.0f

    .line 601
    .line 602
    const/high16 v1, 0x41000000    # 8.0f

    .line 603
    .line 604
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 605
    .line 606
    .line 607
    const/high16 v0, 0x41400000    # 12.0f

    .line 608
    .line 609
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 610
    .line 611
    .line 612
    const/high16 v5, 0x3f800000    # 1.0f

    .line 613
    .line 614
    const/high16 v6, -0x40800000    # -1.0f

    .line 615
    .line 616
    const v1, 0x3f0ccccd    # 0.55f

    .line 617
    .line 618
    .line 619
    const/high16 v3, 0x3f800000    # 1.0f

    .line 620
    .line 621
    const v4, -0x4119999a    # -0.45f

    .line 622
    .line 623
    .line 624
    move-object v0, v7

    .line 625
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 626
    .line 627
    .line 628
    const v0, -0x4119999a    # -0.45f

    .line 629
    .line 630
    .line 631
    const/high16 v1, -0x40800000    # -1.0f

    .line 632
    .line 633
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 634
    .line 635
    .line 636
    const/high16 v0, 0x41700000    # 15.0f

    .line 637
    .line 638
    const/high16 v1, 0x41000000    # 8.0f

    .line 639
    .line 640
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 641
    .line 642
    .line 643
    const/high16 v5, -0x40800000    # -1.0f

    .line 644
    .line 645
    const/high16 v6, 0x3f800000    # 1.0f

    .line 646
    .line 647
    const v1, -0x40f33333    # -0.55f

    .line 648
    .line 649
    .line 650
    const/high16 v3, -0x40800000    # -1.0f

    .line 651
    .line 652
    const v4, 0x3ee66666    # 0.45f

    .line 653
    .line 654
    .line 655
    move-object v0, v7

    .line 656
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 657
    .line 658
    .line 659
    const v0, 0x3ee66666    # 0.45f

    .line 660
    .line 661
    .line 662
    const/high16 v1, 0x3f800000    # 1.0f

    .line 663
    .line 664
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 668
    .line 669
    .line 670
    const/high16 v0, 0x40e00000    # 7.0f

    .line 671
    .line 672
    const/high16 v1, 0x41000000    # 8.0f

    .line 673
    .line 674
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 675
    .line 676
    .line 677
    const/high16 v5, 0x3f800000    # 1.0f

    .line 678
    .line 679
    const/4 v1, 0x0

    .line 680
    const v2, 0x3f0ccccd    # 0.55f

    .line 681
    .line 682
    .line 683
    const v3, 0x3ee66666    # 0.45f

    .line 684
    .line 685
    .line 686
    const/high16 v4, 0x3f800000    # 1.0f

    .line 687
    .line 688
    move-object v0, v7

    .line 689
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 690
    .line 691
    .line 692
    const/high16 v0, 0x41400000    # 12.0f

    .line 693
    .line 694
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 695
    .line 696
    .line 697
    const/high16 v6, -0x40800000    # -1.0f

    .line 698
    .line 699
    const v1, 0x3f0ccccd    # 0.55f

    .line 700
    .line 701
    .line 702
    const/4 v2, 0x0

    .line 703
    const/high16 v3, 0x3f800000    # 1.0f

    .line 704
    .line 705
    const v4, -0x4119999a    # -0.45f

    .line 706
    .line 707
    .line 708
    move-object v0, v7

    .line 709
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 710
    .line 711
    .line 712
    const v0, -0x4119999a    # -0.45f

    .line 713
    .line 714
    .line 715
    const/high16 v1, -0x40800000    # -1.0f

    .line 716
    .line 717
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 718
    .line 719
    .line 720
    const/high16 v0, 0x40e00000    # 7.0f

    .line 721
    .line 722
    const/high16 v1, 0x41000000    # 8.0f

    .line 723
    .line 724
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 725
    .line 726
    .line 727
    const/high16 v5, -0x40800000    # -1.0f

    .line 728
    .line 729
    const/high16 v6, 0x3f800000    # 1.0f

    .line 730
    .line 731
    const v1, -0x40f33333    # -0.55f

    .line 732
    .line 733
    .line 734
    const/high16 v3, -0x40800000    # -1.0f

    .line 735
    .line 736
    const v4, 0x3ee66666    # 0.45f

    .line 737
    .line 738
    .line 739
    move-object v0, v7

    .line 740
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 747
    .line 748
    .line 749
    move-result-object v13

    .line 750
    const/16 v27, 0x3800

    .line 751
    .line 752
    const/16 v28, 0x0

    .line 753
    .line 754
    const/high16 v17, 0x3f800000    # 1.0f

    .line 755
    .line 756
    const/high16 v19, 0x3f800000    # 1.0f

    .line 757
    .line 758
    const/16 v18, 0x0

    .line 759
    .line 760
    const/high16 v20, 0x3f800000    # 1.0f

    .line 761
    .line 762
    const/high16 v23, 0x3f800000    # 1.0f

    .line 763
    .line 764
    const/16 v24, 0x0

    .line 765
    .line 766
    const/16 v25, 0x0

    .line 767
    .line 768
    const/16 v26, 0x0

    .line 769
    .line 770
    const-string v15, ""

    .line 771
    .line 772
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    sput-object v0, Landroidx/compose/material/icons/rounded/ListKt;->_list:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 781
    .line 782
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 783
    .line 784
    .line 785
    return-object v0
.end method
