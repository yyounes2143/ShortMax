.class public final Landroidx/compose/material/icons/outlined/LocationOnKt;
.super Ljava/lang/Object;
.source "LocationOn.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _locationOn:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getLocationOn(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46
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
    sget-object v0, Landroidx/compose/material/icons/outlined/LocationOnKt;->_locationOn:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Outlined.LocationOn"

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
    const/high16 v3, 0x40000000    # 2.0f

    .line 82
    .line 83
    const/high16 v4, 0x41400000    # 12.0f

    .line 84
    .line 85
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const/high16 v8, 0x40a00000    # 5.0f

    .line 89
    .line 90
    const/high16 v9, 0x41100000    # 9.0f

    .line 91
    .line 92
    const v4, 0x4102147b    # 8.13f

    .line 93
    .line 94
    .line 95
    const/high16 v5, 0x40000000    # 2.0f

    .line 96
    .line 97
    const/high16 v6, 0x40a00000    # 5.0f

    .line 98
    .line 99
    const v7, 0x40a428f6    # 5.13f

    .line 100
    .line 101
    .line 102
    move-object v3, v10

    .line 103
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    .line 105
    .line 106
    const/high16 v8, 0x40e00000    # 7.0f

    .line 107
    .line 108
    const/high16 v9, 0x41500000    # 13.0f

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    const/high16 v5, 0x40a80000    # 5.25f

    .line 112
    .line 113
    const/high16 v6, 0x40e00000    # 7.0f

    .line 114
    .line 115
    const/high16 v7, 0x41500000    # 13.0f

    .line 116
    .line 117
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    .line 119
    .line 120
    const/high16 v3, -0x3f080000    # -7.75f

    .line 121
    .line 122
    const/high16 v4, -0x3eb00000    # -13.0f

    .line 123
    .line 124
    const/high16 v5, 0x40e00000    # 7.0f

    .line 125
    .line 126
    invoke-virtual {v10, v5, v3, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    .line 128
    .line 129
    const/high16 v8, -0x3f200000    # -7.0f

    .line 130
    .line 131
    const/high16 v9, -0x3f200000    # -7.0f

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    const v5, -0x3f8851ec    # -3.87f

    .line 135
    .line 136
    .line 137
    const v6, -0x3fb7ae14    # -3.13f

    .line 138
    .line 139
    .line 140
    const/high16 v7, -0x3f200000    # -7.0f

    .line 141
    .line 142
    move-object v3, v10

    .line 143
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 147
    .line 148
    .line 149
    const/high16 v3, 0x41100000    # 9.0f

    .line 150
    .line 151
    const/high16 v4, 0x40e00000    # 7.0f

    .line 152
    .line 153
    invoke-virtual {v10, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 154
    .line 155
    .line 156
    const/high16 v8, 0x40a00000    # 5.0f

    .line 157
    .line 158
    const/high16 v9, -0x3f600000    # -5.0f

    .line 159
    .line 160
    const/4 v4, 0x0

    .line 161
    const v5, -0x3fcf5c29    # -2.76f

    .line 162
    .line 163
    .line 164
    const v6, 0x400f5c29    # 2.24f

    .line 165
    .line 166
    .line 167
    const/high16 v7, -0x3f600000    # -5.0f

    .line 168
    .line 169
    move-object v3, v10

    .line 170
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 171
    .line 172
    .line 173
    const v3, 0x400f5c29    # 2.24f

    .line 174
    .line 175
    .line 176
    const/high16 v4, 0x40a00000    # 5.0f

    .line 177
    .line 178
    invoke-virtual {v10, v4, v3, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 179
    .line 180
    .line 181
    const/high16 v8, -0x3f600000    # -5.0f

    .line 182
    .line 183
    const v9, 0x411e147b    # 9.88f

    .line 184
    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    const v5, 0x403851ec    # 2.88f

    .line 188
    .line 189
    .line 190
    const v6, -0x3fc7ae14    # -2.88f

    .line 191
    .line 192
    .line 193
    const v7, 0x40e6147b    # 7.19f

    .line 194
    .line 195
    .line 196
    move-object v3, v10

    .line 197
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 198
    .line 199
    .line 200
    const/high16 v8, 0x40e00000    # 7.0f

    .line 201
    .line 202
    const/high16 v9, 0x41100000    # 9.0f

    .line 203
    .line 204
    const v4, 0x411eb852    # 9.92f

    .line 205
    .line 206
    .line 207
    const v5, 0x4181ae14    # 16.21f

    .line 208
    .line 209
    .line 210
    const/high16 v6, 0x40e00000    # 7.0f

    .line 211
    .line 212
    const v7, 0x413d999a    # 11.85f

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v13

    .line 225
    const/16 v27, 0x3800

    .line 226
    .line 227
    const/16 v28, 0x0

    .line 228
    .line 229
    const/high16 v17, 0x3f800000    # 1.0f

    .line 230
    .line 231
    const/high16 v19, 0x3f800000    # 1.0f

    .line 232
    .line 233
    const/16 v18, 0x0

    .line 234
    .line 235
    const/high16 v20, 0x3f800000    # 1.0f

    .line 236
    .line 237
    const/high16 v23, 0x3f800000    # 1.0f

    .line 238
    .line 239
    const/16 v24, 0x0

    .line 240
    .line 241
    const/16 v25, 0x0

    .line 242
    .line 243
    const/16 v26, 0x0

    .line 244
    .line 245
    const-string v15, ""

    .line 246
    .line 247
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 248
    .line 249
    .line 250
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 251
    .line 252
    .line 253
    move-result v31

    .line 254
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 255
    .line 256
    move-object/from16 v33, v3

    .line 257
    .line 258
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 259
    .line 260
    .line 261
    move-result-wide v4

    .line 262
    const/4 v1, 0x0

    .line 263
    invoke-direct {v3, v4, v5, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 267
    .line 268
    .line 269
    move-result v38

    .line 270
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 271
    .line 272
    .line 273
    move-result v39

    .line 274
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 275
    .line 276
    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const/high16 v0, 0x41100000    # 9.0f

    .line 280
    .line 281
    const/high16 v1, 0x41400000    # 12.0f

    .line 282
    .line 283
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 284
    .line 285
    .line 286
    const/high16 v0, -0x3fe00000    # -2.5f

    .line 287
    .line 288
    const/4 v1, 0x0

    .line 289
    invoke-virtual {v8, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 290
    .line 291
    .line 292
    const/high16 v6, 0x40a00000    # 5.0f

    .line 293
    .line 294
    const/4 v7, 0x0

    .line 295
    const/high16 v1, 0x40200000    # 2.5f

    .line 296
    .line 297
    const/high16 v2, 0x40200000    # 2.5f

    .line 298
    .line 299
    const/4 v3, 0x0

    .line 300
    const/4 v4, 0x1

    .line 301
    const/4 v5, 0x1

    .line 302
    move-object v0, v8

    .line 303
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 304
    .line 305
    .line 306
    const/high16 v6, -0x3f600000    # -5.0f

    .line 307
    .line 308
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v30

    .line 315
    const/16 v44, 0x3800

    .line 316
    .line 317
    const/16 v45, 0x0

    .line 318
    .line 319
    const/high16 v34, 0x3f800000    # 1.0f

    .line 320
    .line 321
    const/high16 v36, 0x3f800000    # 1.0f

    .line 322
    .line 323
    const/16 v35, 0x0

    .line 324
    .line 325
    const/high16 v37, 0x3f800000    # 1.0f

    .line 326
    .line 327
    const/high16 v40, 0x3f800000    # 1.0f

    .line 328
    .line 329
    const/16 v41, 0x0

    .line 330
    .line 331
    const/16 v42, 0x0

    .line 332
    .line 333
    const/16 v43, 0x0

    .line 334
    .line 335
    const-string v32, ""

    .line 336
    .line 337
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    sput-object v0, Landroidx/compose/material/icons/outlined/LocationOnKt;->_locationOn:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 346
    .line 347
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    return-object v0
.end method
