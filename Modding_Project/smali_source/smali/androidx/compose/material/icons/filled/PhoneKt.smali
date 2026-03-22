.class public final Landroidx/compose/material/icons/filled/PhoneKt;
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

.method public static final getPhone(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/filled/PhoneKt;->_phone:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Filled.Phone"

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
    const v0, 0x40d3d70a    # 6.62f

    .line 80
    .line 81
    .line 82
    const v1, 0x412ca3d7    # 10.79f

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const v5, 0x40d2e148    # 6.59f

    .line 89
    .line 90
    .line 91
    const v6, 0x40d2e148    # 6.59f

    .line 92
    .line 93
    .line 94
    const v1, 0x3fb851ec    # 1.44f

    .line 95
    .line 96
    .line 97
    const v2, 0x40351eb8    # 2.83f

    .line 98
    .line 99
    .line 100
    const v3, 0x4070a3d7    # 3.76f

    .line 101
    .line 102
    .line 103
    const v4, 0x40a47ae1    # 5.14f

    .line 104
    .line 105
    .line 106
    move-object v0, v7

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    .line 109
    .line 110
    const v0, -0x3ff33333    # -2.2f

    .line 111
    .line 112
    .line 113
    const v1, 0x400ccccd    # 2.2f

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    .line 118
    .line 119
    const v5, 0x3f828f5c    # 1.02f

    .line 120
    .line 121
    .line 122
    const v6, -0x418a3d71    # -0.24f

    .line 123
    .line 124
    .line 125
    const v1, 0x3e8a3d71    # 0.27f

    .line 126
    .line 127
    .line 128
    const v2, -0x4175c28f    # -0.27f

    .line 129
    .line 130
    .line 131
    const v3, 0x3f2b851f    # 0.67f

    .line 132
    .line 133
    .line 134
    const v4, -0x4147ae14    # -0.36f

    .line 135
    .line 136
    .line 137
    move-object v0, v7

    .line 138
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 139
    .line 140
    .line 141
    const v5, 0x40647ae1    # 3.57f

    .line 142
    .line 143
    .line 144
    const v6, 0x3f11eb85    # 0.57f

    .line 145
    .line 146
    .line 147
    const v1, 0x3f8f5c29    # 1.12f

    .line 148
    .line 149
    .line 150
    const v2, 0x3ebd70a4    # 0.37f

    .line 151
    .line 152
    .line 153
    const v3, 0x40151eb8    # 2.33f

    .line 154
    .line 155
    .line 156
    const v4, 0x3f11eb85    # 0.57f

    .line 157
    .line 158
    .line 159
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 160
    .line 161
    .line 162
    const/high16 v5, 0x3f800000    # 1.0f

    .line 163
    .line 164
    const/high16 v6, 0x3f800000    # 1.0f

    .line 165
    .line 166
    const v1, 0x3f0ccccd    # 0.55f

    .line 167
    .line 168
    .line 169
    const/4 v2, 0x0

    .line 170
    const/high16 v3, 0x3f800000    # 1.0f

    .line 171
    .line 172
    const v4, 0x3ee66666    # 0.45f

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 176
    .line 177
    .line 178
    const/high16 v0, 0x41a00000    # 20.0f

    .line 179
    .line 180
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 181
    .line 182
    .line 183
    const/high16 v5, -0x40800000    # -1.0f

    .line 184
    .line 185
    const/4 v1, 0x0

    .line 186
    const v2, 0x3f0ccccd    # 0.55f

    .line 187
    .line 188
    .line 189
    const v3, -0x4119999a    # -0.45f

    .line 190
    .line 191
    .line 192
    const/high16 v4, 0x3f800000    # 1.0f

    .line 193
    .line 194
    move-object v0, v7

    .line 195
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 196
    .line 197
    .line 198
    const/high16 v5, -0x3e780000    # -17.0f

    .line 199
    .line 200
    const/high16 v6, -0x3e780000    # -17.0f

    .line 201
    .line 202
    const v1, -0x3ee9c28f    # -9.39f

    .line 203
    .line 204
    .line 205
    const/4 v2, 0x0

    .line 206
    const/high16 v3, -0x3e780000    # -17.0f

    .line 207
    .line 208
    const v4, -0x3f0c7ae1    # -7.61f

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 212
    .line 213
    .line 214
    const/high16 v5, 0x3f800000    # 1.0f

    .line 215
    .line 216
    const/high16 v6, -0x40800000    # -1.0f

    .line 217
    .line 218
    const/4 v1, 0x0

    .line 219
    const v2, -0x40f33333    # -0.55f

    .line 220
    .line 221
    .line 222
    const v3, 0x3ee66666    # 0.45f

    .line 223
    .line 224
    .line 225
    const/high16 v4, -0x40800000    # -1.0f

    .line 226
    .line 227
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 228
    .line 229
    .line 230
    const/high16 v0, 0x40600000    # 3.5f

    .line 231
    .line 232
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 233
    .line 234
    .line 235
    const/high16 v6, 0x3f800000    # 1.0f

    .line 236
    .line 237
    const v1, 0x3f0ccccd    # 0.55f

    .line 238
    .line 239
    .line 240
    const/4 v2, 0x0

    .line 241
    const/high16 v3, 0x3f800000    # 1.0f

    .line 242
    .line 243
    const v4, 0x3ee66666    # 0.45f

    .line 244
    .line 245
    .line 246
    move-object v0, v7

    .line 247
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 248
    .line 249
    .line 250
    const v5, 0x3f11eb85    # 0.57f

    .line 251
    .line 252
    .line 253
    const v6, 0x40647ae1    # 3.57f

    .line 254
    .line 255
    .line 256
    const/4 v1, 0x0

    .line 257
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 258
    .line 259
    const v3, 0x3e4ccccd    # 0.2f

    .line 260
    .line 261
    .line 262
    const v4, 0x401ccccd    # 2.45f

    .line 263
    .line 264
    .line 265
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 266
    .line 267
    .line 268
    const/high16 v5, -0x41800000    # -0.25f

    .line 269
    .line 270
    const v6, 0x3f828f5c    # 1.02f

    .line 271
    .line 272
    .line 273
    const v1, 0x3de147ae    # 0.11f

    .line 274
    .line 275
    .line 276
    const v2, 0x3eb33333    # 0.35f

    .line 277
    .line 278
    .line 279
    const v3, 0x3cf5c28f    # 0.03f

    .line 280
    .line 281
    .line 282
    const v4, 0x3f3d70a4    # 0.74f

    .line 283
    .line 284
    .line 285
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 286
    .line 287
    .line 288
    const v0, -0x3ff33333    # -2.2f

    .line 289
    .line 290
    .line 291
    const v1, 0x400ccccd    # 2.2f

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v13

    .line 304
    const/16 v27, 0x3800

    .line 305
    .line 306
    const/16 v28, 0x0

    .line 307
    .line 308
    const/high16 v17, 0x3f800000    # 1.0f

    .line 309
    .line 310
    const/high16 v19, 0x3f800000    # 1.0f

    .line 311
    .line 312
    const/16 v18, 0x0

    .line 313
    .line 314
    const/high16 v20, 0x3f800000    # 1.0f

    .line 315
    .line 316
    const/high16 v23, 0x3f800000    # 1.0f

    .line 317
    .line 318
    const/16 v24, 0x0

    .line 319
    .line 320
    const/16 v25, 0x0

    .line 321
    .line 322
    const/16 v26, 0x0

    .line 323
    .line 324
    const-string v15, ""

    .line 325
    .line 326
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    sput-object v0, Landroidx/compose/material/icons/filled/PhoneKt;->_phone:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 335
    .line 336
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    return-object v0
.end method
