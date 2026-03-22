.class public final Landroidx/compose/material/icons/rounded/PhoneKt;
.super Ljava/lang/Object;
.source "Phone.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _phone:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getPhone(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/rounded/PhoneKt;->_phone:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.Phone"

    .line 33
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
    const v0, 0x4199d70a    # 19.23f

    .line 80
    .line 81
    .line 82
    const v1, 0x417428f6    # 15.26f

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const v0, -0x3fdd70a4    # -2.54f

    .line 89
    .line 90
    .line 91
    const v8, -0x416b851f    # -0.29f

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    .line 96
    .line 97
    const v5, -0x402e147b    # -1.64f

    .line 98
    .line 99
    .line 100
    const v6, 0x3f11eb85    # 0.57f

    .line 101
    .line 102
    .line 103
    const v1, -0x40e3d70a    # -0.61f

    .line 104
    .line 105
    .line 106
    const v2, -0x4270a3d7    # -0.07f

    .line 107
    .line 108
    .line 109
    const v3, -0x40651eb8    # -1.21f

    .line 110
    .line 111
    .line 112
    const v4, 0x3e0f5c29    # 0.14f

    .line 113
    .line 114
    .line 115
    move-object v0, v7

    .line 116
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    .line 118
    .line 119
    const v0, -0x40147ae1    # -1.84f

    .line 120
    .line 121
    .line 122
    const v1, 0x3feb851f    # 1.84f

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    .line 127
    .line 128
    const v5, -0x3f2d1eb8    # -6.59f

    .line 129
    .line 130
    .line 131
    const v6, -0x3f2d1eb8    # -6.59f

    .line 132
    .line 133
    .line 134
    const v1, -0x3fcae148    # -2.83f

    .line 135
    .line 136
    .line 137
    const v2, -0x4047ae14    # -1.44f

    .line 138
    .line 139
    .line 140
    const v3, -0x3f5b3333    # -5.15f

    .line 141
    .line 142
    .line 143
    const/high16 v4, -0x3f900000    # -3.75f

    .line 144
    .line 145
    move-object v0, v7

    .line 146
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 147
    .line 148
    .line 149
    const v0, 0x3feccccd    # 1.85f

    .line 150
    .line 151
    .line 152
    const v1, -0x40133333    # -1.85f

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 156
    .line 157
    .line 158
    const v5, 0x3f11eb85    # 0.57f

    .line 159
    .line 160
    .line 161
    const v6, -0x402e147b    # -1.64f

    .line 162
    .line 163
    .line 164
    const v1, 0x3edc28f6    # 0.43f

    .line 165
    .line 166
    .line 167
    const v2, -0x4123d70a    # -0.43f

    .line 168
    .line 169
    .line 170
    const v3, 0x3f23d70a    # 0.64f

    .line 171
    .line 172
    .line 173
    const v4, -0x407c28f6    # -1.03f

    .line 174
    .line 175
    .line 176
    move-object v0, v7

    .line 177
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 178
    .line 179
    .line 180
    const v0, -0x3fdeb852    # -2.52f

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 184
    .line 185
    .line 186
    const v5, -0x400147ae    # -1.99f

    .line 187
    .line 188
    .line 189
    const v6, -0x401d70a4    # -1.77f

    .line 190
    .line 191
    .line 192
    const v1, -0x420a3d71    # -0.12f

    .line 193
    .line 194
    .line 195
    const v2, -0x407eb852    # -1.01f

    .line 196
    .line 197
    .line 198
    const v3, -0x4087ae14    # -0.97f

    .line 199
    .line 200
    .line 201
    const v4, -0x401d70a4    # -1.77f

    .line 202
    .line 203
    .line 204
    move-object v0, v7

    .line 205
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 206
    .line 207
    .line 208
    const v0, 0x40a0f5c3    # 5.03f

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 212
    .line 213
    .line 214
    const/high16 v5, -0x40000000    # -2.0f

    .line 215
    .line 216
    const v6, 0x40047ae1    # 2.07f

    .line 217
    .line 218
    .line 219
    const v1, -0x406f5c29    # -1.13f

    .line 220
    .line 221
    .line 222
    const/4 v2, 0x0

    .line 223
    const v3, -0x3ffb851f    # -2.07f

    .line 224
    .line 225
    .line 226
    const v4, 0x3f70a3d7    # 0.94f

    .line 227
    .line 228
    .line 229
    move-object v0, v7

    .line 230
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 231
    .line 232
    .line 233
    const v5, 0x417e3d71    # 15.89f

    .line 234
    .line 235
    .line 236
    const v6, 0x417e3d71    # 15.89f

    .line 237
    .line 238
    .line 239
    const v1, 0x3f07ae14    # 0.53f

    .line 240
    .line 241
    .line 242
    const v2, 0x4108a3d7    # 8.54f

    .line 243
    .line 244
    .line 245
    const v3, 0x40eb851f    # 7.36f

    .line 246
    .line 247
    .line 248
    const v4, 0x4175c28f    # 15.36f

    .line 249
    .line 250
    .line 251
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 252
    .line 253
    .line 254
    const v5, 0x40047ae1    # 2.07f

    .line 255
    .line 256
    .line 257
    const/high16 v6, -0x40000000    # -2.0f

    .line 258
    .line 259
    const v1, 0x3f90a3d7    # 1.13f

    .line 260
    .line 261
    .line 262
    const v2, 0x3d8f5c29    # 0.07f

    .line 263
    .line 264
    .line 265
    const v3, 0x40047ae1    # 2.07f

    .line 266
    .line 267
    .line 268
    const v4, -0x40a147ae    # -0.87f

    .line 269
    .line 270
    .line 271
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 272
    .line 273
    .line 274
    const v0, -0x40228f5c    # -1.73f

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 278
    .line 279
    .line 280
    const v5, -0x401eb852    # -1.76f

    .line 281
    .line 282
    .line 283
    const v6, -0x40028f5c    # -1.98f

    .line 284
    .line 285
    .line 286
    const v1, 0x3c23d70a    # 0.01f

    .line 287
    .line 288
    .line 289
    const v2, -0x407eb852    # -1.01f

    .line 290
    .line 291
    .line 292
    const/high16 v3, -0x40c00000    # -0.75f

    .line 293
    .line 294
    const v4, -0x4011eb85    # -1.86f

    .line 295
    .line 296
    .line 297
    move-object v0, v7

    .line 298
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v13

    .line 308
    const/16 v27, 0x3800

    .line 309
    .line 310
    const/16 v28, 0x0

    .line 311
    .line 312
    const-string v15, ""

    .line 313
    .line 314
    const/high16 v17, 0x3f800000    # 1.0f

    .line 315
    .line 316
    const/16 v18, 0x0

    .line 317
    .line 318
    const/high16 v19, 0x3f800000    # 1.0f

    .line 319
    .line 320
    const/high16 v20, 0x3f800000    # 1.0f

    .line 321
    .line 322
    const/high16 v23, 0x3f800000    # 1.0f

    .line 323
    .line 324
    const/16 v24, 0x0

    .line 325
    .line 326
    const/16 v25, 0x0

    .line 327
    .line 328
    const/16 v26, 0x0

    .line 329
    .line 330
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    sput-object v0, Landroidx/compose/material/icons/rounded/PhoneKt;->_phone:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 339
    .line 340
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    return-object v0
.end method
