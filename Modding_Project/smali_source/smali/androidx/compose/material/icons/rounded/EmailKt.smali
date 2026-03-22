.class public final Landroidx/compose/material/icons/rounded/EmailKt;
.super Ljava/lang/Object;
.source "Email.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _email:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getEmail(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/rounded/EmailKt;->_email:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.Email"

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
    const/high16 v0, 0x41a00000    # 20.0f

    .line 80
    .line 81
    const/high16 v1, 0x40800000    # 4.0f

    .line 82
    .line 83
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .line 85
    .line 86
    const/high16 v0, 0x40800000    # 4.0f

    .line 87
    .line 88
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    .line 90
    .line 91
    const v5, -0x400147ae    # -1.99f

    .line 92
    .line 93
    .line 94
    const/high16 v6, 0x40000000    # 2.0f

    .line 95
    .line 96
    const v1, -0x40733333    # -1.1f

    .line 97
    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    const v3, -0x400147ae    # -1.99f

    .line 101
    .line 102
    .line 103
    const v4, 0x3f666666    # 0.9f

    .line 104
    .line 105
    .line 106
    move-object v0, v7

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    .line 109
    .line 110
    const/high16 v0, 0x40000000    # 2.0f

    .line 111
    .line 112
    const/high16 v1, 0x41900000    # 18.0f

    .line 113
    .line 114
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    .line 116
    .line 117
    const/high16 v5, 0x40000000    # 2.0f

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    const v2, 0x3f8ccccd    # 1.1f

    .line 121
    .line 122
    .line 123
    const v3, 0x3f666666    # 0.9f

    .line 124
    .line 125
    .line 126
    const/high16 v4, 0x40000000    # 2.0f

    .line 127
    .line 128
    move-object v0, v7

    .line 129
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    .line 131
    .line 132
    const/high16 v0, 0x41800000    # 16.0f

    .line 133
    .line 134
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    .line 136
    .line 137
    const/high16 v6, -0x40000000    # -2.0f

    .line 138
    .line 139
    const v1, 0x3f8ccccd    # 1.1f

    .line 140
    .line 141
    .line 142
    const/4 v2, 0x0

    .line 143
    const/high16 v3, 0x40000000    # 2.0f

    .line 144
    .line 145
    const v4, -0x4099999a    # -0.9f

    .line 146
    .line 147
    .line 148
    move-object v0, v7

    .line 149
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 150
    .line 151
    .line 152
    const/high16 v0, 0x41b00000    # 22.0f

    .line 153
    .line 154
    const/high16 v1, 0x40c00000    # 6.0f

    .line 155
    .line 156
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 157
    .line 158
    .line 159
    const/high16 v5, -0x40000000    # -2.0f

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    const v2, -0x40733333    # -1.1f

    .line 163
    .line 164
    .line 165
    const v3, -0x4099999a    # -0.9f

    .line 166
    .line 167
    .line 168
    const/high16 v4, -0x40000000    # -2.0f

    .line 169
    .line 170
    move-object v0, v7

    .line 171
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 175
    .line 176
    .line 177
    const v0, 0x419ccccd    # 19.6f

    .line 178
    .line 179
    .line 180
    const/high16 v1, 0x41040000    # 8.25f

    .line 181
    .line 182
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 183
    .line 184
    .line 185
    const v0, -0x3f1dc28f    # -7.07f

    .line 186
    .line 187
    .line 188
    const v1, 0x408d70a4    # 4.42f

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 192
    .line 193
    .line 194
    const v5, -0x407851ec    # -1.06f

    .line 195
    .line 196
    .line 197
    const/4 v6, 0x0

    .line 198
    const v1, -0x415c28f6    # -0.32f

    .line 199
    .line 200
    .line 201
    const v2, 0x3e4ccccd    # 0.2f

    .line 202
    .line 203
    .line 204
    const v3, -0x40c28f5c    # -0.74f

    .line 205
    .line 206
    .line 207
    const v4, 0x3e4ccccd    # 0.2f

    .line 208
    .line 209
    .line 210
    move-object v0, v7

    .line 211
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 212
    .line 213
    .line 214
    const v0, 0x408ccccd    # 4.4f

    .line 215
    .line 216
    .line 217
    const/high16 v1, 0x41040000    # 8.25f

    .line 218
    .line 219
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 220
    .line 221
    .line 222
    const v5, -0x41333333    # -0.4f

    .line 223
    .line 224
    .line 225
    const v6, -0x40c7ae14    # -0.72f

    .line 226
    .line 227
    .line 228
    const/high16 v1, -0x41800000    # -0.25f

    .line 229
    .line 230
    const v2, -0x41dc28f6    # -0.16f

    .line 231
    .line 232
    .line 233
    const v3, -0x41333333    # -0.4f

    .line 234
    .line 235
    .line 236
    const v4, -0x4123d70a    # -0.43f

    .line 237
    .line 238
    .line 239
    move-object v0, v7

    .line 240
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 241
    .line 242
    .line 243
    const v5, 0x3fa66666    # 1.3f

    .line 244
    .line 245
    .line 246
    const/4 v1, 0x0

    .line 247
    const v2, -0x40d47ae1    # -0.67f

    .line 248
    .line 249
    .line 250
    const v3, 0x3f3ae148    # 0.73f

    .line 251
    .line 252
    .line 253
    const v4, -0x40770a3d    # -1.07f

    .line 254
    .line 255
    .line 256
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 257
    .line 258
    .line 259
    const/high16 v0, 0x41400000    # 12.0f

    .line 260
    .line 261
    const/high16 v1, 0x41300000    # 11.0f

    .line 262
    .line 263
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 264
    .line 265
    .line 266
    const v0, 0x40d66666    # 6.7f

    .line 267
    .line 268
    .line 269
    const v1, -0x3f79eb85    # -4.19f

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 273
    .line 274
    .line 275
    const v6, 0x3f3851ec    # 0.72f

    .line 276
    .line 277
    .line 278
    const v1, 0x3f11eb85    # 0.57f

    .line 279
    .line 280
    .line 281
    const v2, -0x414ccccd    # -0.35f

    .line 282
    .line 283
    .line 284
    const v3, 0x3fa66666    # 1.3f

    .line 285
    .line 286
    .line 287
    const v4, 0x3d4ccccd    # 0.05f

    .line 288
    .line 289
    .line 290
    move-object v0, v7

    .line 291
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 292
    .line 293
    .line 294
    const v5, -0x41333333    # -0.4f

    .line 295
    .line 296
    .line 297
    const/4 v1, 0x0

    .line 298
    const v2, 0x3e947ae1    # 0.29f

    .line 299
    .line 300
    .line 301
    const v3, -0x41e66666    # -0.15f

    .line 302
    .line 303
    .line 304
    const v4, 0x3f0f5c29    # 0.56f

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v13

    .line 317
    const/16 v27, 0x3800

    .line 318
    .line 319
    const/16 v28, 0x0

    .line 320
    .line 321
    const/high16 v17, 0x3f800000    # 1.0f

    .line 322
    .line 323
    const/high16 v19, 0x3f800000    # 1.0f

    .line 324
    .line 325
    const/16 v18, 0x0

    .line 326
    .line 327
    const/high16 v20, 0x3f800000    # 1.0f

    .line 328
    .line 329
    const/high16 v23, 0x3f800000    # 1.0f

    .line 330
    .line 331
    const/16 v24, 0x0

    .line 332
    .line 333
    const/16 v25, 0x0

    .line 334
    .line 335
    const/16 v26, 0x0

    .line 336
    .line 337
    const-string v15, ""

    .line 338
    .line 339
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    sput-object v0, Landroidx/compose/material/icons/rounded/EmailKt;->_email:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 348
    .line 349
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    return-object v0
.end method
