.class public final Landroidx/compose/material/icons/twotone/CreateKt;
.super Ljava/lang/Object;
.source "Create.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _create:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getCreate(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/twotone/CreateKt;->_create:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "TwoTone.Create"

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
    const v5, 0x4190a3d7    # 18.08f

    .line 82
    .line 83
    .line 84
    const/high16 v6, 0x40a00000    # 5.0f

    .line 85
    .line 86
    invoke-virtual {v3, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    .line 88
    .line 89
    const/high16 v5, 0x41980000    # 19.0f

    .line 90
    .line 91
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    .line 93
    .line 94
    const v7, 0x3f6b851f    # 0.92f

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    .line 99
    .line 100
    const v8, 0x4110f5c3    # 9.06f

    .line 101
    .line 102
    .line 103
    const v9, -0x3eef0a3d    # -9.06f

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    .line 108
    .line 109
    const v10, -0x40947ae1    # -0.92f

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    const/16 v27, 0x3800

    .line 123
    .line 124
    const/16 v28, 0x0

    .line 125
    .line 126
    const-string v15, ""

    .line 127
    .line 128
    const v17, 0x3e99999a    # 0.3f

    .line 129
    .line 130
    .line 131
    const/16 v18, 0x0

    .line 132
    .line 133
    const v19, 0x3e99999a    # 0.3f

    .line 134
    .line 135
    .line 136
    const/high16 v20, 0x3f800000    # 1.0f

    .line 137
    .line 138
    const/high16 v23, 0x3f800000    # 1.0f

    .line 139
    .line 140
    const/16 v24, 0x0

    .line 141
    .line 142
    const/16 v25, 0x0

    .line 143
    .line 144
    const/16 v26, 0x0

    .line 145
    .line 146
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 147
    .line 148
    .line 149
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 150
    .line 151
    .line 152
    move-result v31

    .line 153
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 154
    .line 155
    move-object/from16 v33, v3

    .line 156
    .line 157
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 158
    .line 159
    .line 160
    move-result-wide v11

    .line 161
    invoke-direct {v3, v11, v12, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 165
    .line 166
    .line 167
    move-result v38

    .line 168
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 169
    .line 170
    .line 171
    move-result v39

    .line 172
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 173
    .line 174
    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const/high16 v1, 0x40400000    # 3.0f

    .line 178
    .line 179
    const/high16 v2, 0x418a0000    # 17.25f

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 182
    .line 183
    .line 184
    const/high16 v3, 0x41a80000    # 21.0f

    .line 185
    .line 186
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 187
    .line 188
    .line 189
    const/high16 v3, 0x40700000    # 3.75f

    .line 190
    .line 191
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 192
    .line 193
    .line 194
    const v4, 0x418e7ae1    # 17.81f

    .line 195
    .line 196
    .line 197
    const v11, 0x411f0a3d    # 9.94f

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v4, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 201
    .line 202
    .line 203
    const/high16 v4, -0x3f900000    # -3.75f

    .line 204
    .line 205
    invoke-virtual {v0, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 212
    .line 213
    .line 214
    const v1, 0x40bd70a4    # 5.92f

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v7, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 236
    .line 237
    .line 238
    const v1, 0x41a5ae14    # 20.71f

    .line 239
    .line 240
    .line 241
    const v2, 0x40b428f6    # 5.63f

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 245
    .line 246
    .line 247
    const v1, -0x3fea3d71    # -2.34f

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 251
    .line 252
    .line 253
    const v16, -0x40ca3d71    # -0.71f

    .line 254
    .line 255
    .line 256
    const v17, -0x416b851f    # -0.29f

    .line 257
    .line 258
    .line 259
    const v12, -0x41b33333    # -0.2f

    .line 260
    .line 261
    .line 262
    const v13, -0x41b33333    # -0.2f

    .line 263
    .line 264
    .line 265
    const v14, -0x4119999a    # -0.45f

    .line 266
    .line 267
    .line 268
    const v15, -0x416b851f    # -0.29f

    .line 269
    .line 270
    .line 271
    move-object v11, v0

    .line 272
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 273
    .line 274
    .line 275
    const v1, -0x40cccccd    # -0.7f

    .line 276
    .line 277
    .line 278
    const v2, 0x3e947ae1    # 0.29f

    .line 279
    .line 280
    .line 281
    const v4, -0x40fd70a4    # -0.51f

    .line 282
    .line 283
    .line 284
    const v5, 0x3dcccccd    # 0.1f

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v4, v5, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 288
    .line 289
    .line 290
    const v1, -0x4015c28f    # -1.83f

    .line 291
    .line 292
    .line 293
    const v2, 0x3fea3d71    # 1.83f

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 303
    .line 304
    .line 305
    const/16 v16, 0x0

    .line 306
    .line 307
    const v17, -0x404b851f    # -1.41f

    .line 308
    .line 309
    .line 310
    const v12, 0x3ec7ae14    # 0.39f

    .line 311
    .line 312
    .line 313
    const v13, -0x413851ec    # -0.39f

    .line 314
    .line 315
    .line 316
    const v14, 0x3ec7ae14    # 0.39f

    .line 317
    .line 318
    .line 319
    const v15, -0x407d70a4    # -1.02f

    .line 320
    .line 321
    .line 322
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 329
    .line 330
    .line 331
    move-result-object v30

    .line 332
    const/16 v44, 0x3800

    .line 333
    .line 334
    const/16 v45, 0x0

    .line 335
    .line 336
    const-string v32, ""

    .line 337
    .line 338
    const/high16 v34, 0x3f800000    # 1.0f

    .line 339
    .line 340
    const/16 v35, 0x0

    .line 341
    .line 342
    const/high16 v36, 0x3f800000    # 1.0f

    .line 343
    .line 344
    const/high16 v37, 0x3f800000    # 1.0f

    .line 345
    .line 346
    const/high16 v40, 0x3f800000    # 1.0f

    .line 347
    .line 348
    const/16 v41, 0x0

    .line 349
    .line 350
    const/16 v42, 0x0

    .line 351
    .line 352
    const/16 v43, 0x0

    .line 353
    .line 354
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    sput-object v0, Landroidx/compose/material/icons/twotone/CreateKt;->_create:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 363
    .line 364
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    return-object v0
.end method
