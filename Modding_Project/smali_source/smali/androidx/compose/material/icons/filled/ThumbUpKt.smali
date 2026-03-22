.class public final Landroidx/compose/material/icons/filled/ThumbUpKt;
.super Ljava/lang/Object;
.source "ThumbUp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _thumbUp:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getThumbUp(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/filled/ThumbUpKt;->_thumbUp:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Filled.ThumbUp"

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
    const/high16 v0, 0x41a80000    # 21.0f

    .line 80
    .line 81
    const/high16 v8, 0x3f800000    # 1.0f

    .line 82
    .line 83
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .line 85
    .line 86
    const/high16 v0, 0x40800000    # 4.0f

    .line 87
    .line 88
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    .line 90
    .line 91
    const/high16 v0, 0x40a00000    # 5.0f

    .line 92
    .line 93
    const/high16 v9, 0x41100000    # 9.0f

    .line 94
    .line 95
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    .line 100
    .line 101
    const/high16 v0, 0x41400000    # 12.0f

    .line 102
    .line 103
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    .line 108
    .line 109
    const/high16 v0, 0x41b80000    # 23.0f

    .line 110
    .line 111
    const/high16 v10, 0x41200000    # 10.0f

    .line 112
    .line 113
    invoke-virtual {v7, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    .line 115
    .line 116
    const/high16 v5, -0x40000000    # -2.0f

    .line 117
    .line 118
    const/high16 v6, -0x40000000    # -2.0f

    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    const v2, -0x40733333    # -1.1f

    .line 122
    .line 123
    .line 124
    const v3, -0x4099999a    # -0.9f

    .line 125
    .line 126
    .line 127
    const/high16 v4, -0x40000000    # -2.0f

    .line 128
    .line 129
    move-object v0, v7

    .line 130
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    .line 132
    .line 133
    const v0, -0x3f36147b    # -6.31f

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    .line 138
    .line 139
    const v0, 0x3f733333    # 0.95f

    .line 140
    .line 141
    .line 142
    const v1, -0x3f6dc28f    # -4.57f

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 146
    .line 147
    .line 148
    const v0, 0x3cf5c28f    # 0.03f

    .line 149
    .line 150
    .line 151
    const v1, -0x415c28f6    # -0.32f

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 155
    .line 156
    .line 157
    const v5, -0x411eb852    # -0.44f

    .line 158
    .line 159
    .line 160
    const v6, -0x407851ec    # -1.06f

    .line 161
    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    const v2, -0x412e147b    # -0.41f

    .line 165
    .line 166
    .line 167
    const v3, -0x41d1eb85    # -0.17f

    .line 168
    .line 169
    .line 170
    const v4, -0x40b5c28f    # -0.79f

    .line 171
    .line 172
    .line 173
    move-object v0, v7

    .line 174
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 175
    .line 176
    .line 177
    const v0, 0x4162b852    # 14.17f

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 181
    .line 182
    .line 183
    const v0, 0x40f2e148    # 7.59f

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 187
    .line 188
    .line 189
    const/high16 v5, 0x40e00000    # 7.0f

    .line 190
    .line 191
    const/high16 v6, 0x41100000    # 9.0f

    .line 192
    .line 193
    const v1, 0x40e70a3d    # 7.22f

    .line 194
    .line 195
    .line 196
    const v2, 0x40fe6666    # 7.95f

    .line 197
    .line 198
    .line 199
    const/high16 v3, 0x40e00000    # 7.0f

    .line 200
    .line 201
    const v4, 0x41073333    # 8.45f

    .line 202
    .line 203
    .line 204
    move-object v0, v7

    .line 205
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 209
    .line 210
    .line 211
    const/high16 v5, 0x40000000    # 2.0f

    .line 212
    .line 213
    const/high16 v6, 0x40000000    # 2.0f

    .line 214
    .line 215
    const/4 v1, 0x0

    .line 216
    const v2, 0x3f8ccccd    # 1.1f

    .line 217
    .line 218
    .line 219
    const v3, 0x3f666666    # 0.9f

    .line 220
    .line 221
    .line 222
    const/high16 v4, 0x40000000    # 2.0f

    .line 223
    .line 224
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 228
    .line 229
    .line 230
    const v5, 0x3feb851f    # 1.84f

    .line 231
    .line 232
    .line 233
    const v6, -0x4063d70a    # -1.22f

    .line 234
    .line 235
    .line 236
    const v1, 0x3f547ae1    # 0.83f

    .line 237
    .line 238
    .line 239
    const/4 v2, 0x0

    .line 240
    const v3, 0x3fc51eb8    # 1.54f

    .line 241
    .line 242
    .line 243
    const/high16 v4, -0x41000000    # -0.5f

    .line 244
    .line 245
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 246
    .line 247
    .line 248
    const v0, 0x404147ae    # 3.02f

    .line 249
    .line 250
    .line 251
    const v1, -0x3f1e6666    # -7.05f

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 255
    .line 256
    .line 257
    const v5, 0x3e0f5c29    # 0.14f

    .line 258
    .line 259
    .line 260
    const v6, -0x40c51eb8    # -0.73f

    .line 261
    .line 262
    .line 263
    const v1, 0x3db851ec    # 0.09f

    .line 264
    .line 265
    .line 266
    const v2, -0x41947ae1    # -0.23f

    .line 267
    .line 268
    .line 269
    const v3, 0x3e0f5c29    # 0.14f

    .line 270
    .line 271
    .line 272
    const v4, -0x410f5c29    # -0.47f

    .line 273
    .line 274
    .line 275
    move-object v0, v7

    .line 276
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 277
    .line 278
    .line 279
    const/high16 v0, -0x40000000    # -2.0f

    .line 280
    .line 281
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object v13

    .line 291
    const/16 v27, 0x3800

    .line 292
    .line 293
    const/16 v28, 0x0

    .line 294
    .line 295
    const-string v15, ""

    .line 296
    .line 297
    const/high16 v17, 0x3f800000    # 1.0f

    .line 298
    .line 299
    const/16 v18, 0x0

    .line 300
    .line 301
    const/high16 v19, 0x3f800000    # 1.0f

    .line 302
    .line 303
    const/high16 v20, 0x3f800000    # 1.0f

    .line 304
    .line 305
    const/high16 v23, 0x3f800000    # 1.0f

    .line 306
    .line 307
    const/16 v24, 0x0

    .line 308
    .line 309
    const/16 v25, 0x0

    .line 310
    .line 311
    const/16 v26, 0x0

    .line 312
    .line 313
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    sput-object v0, Landroidx/compose/material/icons/filled/ThumbUpKt;->_thumbUp:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 322
    .line 323
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    return-object v0
.end method
