.class public final Landroidx/compose/material/icons/filled/CallKt;
.super Ljava/lang/Object;
.source "Call.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _call:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getCall(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/filled/CallKt;->_call:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Filled.Call"

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
    const v0, 0x41a0147b    # 20.01f

    .line 80
    .line 81
    .line 82
    const v1, 0x4176147b    # 15.38f

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const v5, -0x3f9e147b    # -3.53f

    .line 89
    .line 90
    .line 91
    const v6, -0x40f0a3d7    # -0.56f

    .line 92
    .line 93
    .line 94
    const v1, -0x40628f5c    # -1.23f

    .line 95
    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    const v3, -0x3fe51eb8    # -2.42f

    .line 99
    .line 100
    .line 101
    const v4, -0x41b33333    # -0.2f

    .line 102
    .line 103
    .line 104
    move-object v0, v7

    .line 105
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    .line 107
    .line 108
    const v5, -0x407eb852    # -1.01f

    .line 109
    .line 110
    .line 111
    const v6, 0x3e75c28f    # 0.24f

    .line 112
    .line 113
    .line 114
    const v1, -0x414ccccd    # -0.35f

    .line 115
    .line 116
    .line 117
    const v2, -0x420a3d71    # -0.12f

    .line 118
    .line 119
    .line 120
    const v3, -0x40c28f5c    # -0.74f

    .line 121
    .line 122
    .line 123
    const v4, -0x430a3d71    # -0.03f

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    .line 128
    .line 129
    const v0, -0x40370a3d    # -1.57f

    .line 130
    .line 131
    .line 132
    const v1, 0x3ffc28f6    # 1.97f

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    .line 137
    .line 138
    const v5, -0x3f23851f    # -6.89f

    .line 139
    .line 140
    .line 141
    const v6, -0x3f2570a4    # -6.83f

    .line 142
    .line 143
    .line 144
    const v1, -0x3fcae148    # -2.83f

    .line 145
    .line 146
    .line 147
    const v2, -0x40533333    # -1.35f

    .line 148
    .line 149
    .line 150
    const v3, -0x3f50a3d7    # -5.48f

    .line 151
    .line 152
    .line 153
    const v4, -0x3f866666    # -3.9f

    .line 154
    .line 155
    .line 156
    move-object v0, v7

    .line 157
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 158
    .line 159
    .line 160
    const v0, 0x3ff9999a    # 1.95f

    .line 161
    .line 162
    .line 163
    const v1, -0x402b851f    # -1.66f

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 167
    .line 168
    .line 169
    const v5, 0x3e75c28f    # 0.24f

    .line 170
    .line 171
    .line 172
    const v6, -0x407d70a4    # -1.02f

    .line 173
    .line 174
    .line 175
    const v1, 0x3e8a3d71    # 0.27f

    .line 176
    .line 177
    .line 178
    const v2, -0x4170a3d7    # -0.28f

    .line 179
    .line 180
    .line 181
    const v3, 0x3eb33333    # 0.35f

    .line 182
    .line 183
    .line 184
    const v4, -0x40d47ae1    # -0.67f

    .line 185
    .line 186
    .line 187
    move-object v0, v7

    .line 188
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 189
    .line 190
    .line 191
    const v5, -0x40f0a3d7    # -0.56f

    .line 192
    .line 193
    .line 194
    const v6, -0x3f9e147b    # -3.53f

    .line 195
    .line 196
    .line 197
    const v1, -0x41428f5c    # -0.37f

    .line 198
    .line 199
    .line 200
    const v2, -0x4071eb85    # -1.11f

    .line 201
    .line 202
    .line 203
    const v3, -0x40f0a3d7    # -0.56f

    .line 204
    .line 205
    .line 206
    const v4, -0x3feccccd    # -2.3f

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 210
    .line 211
    .line 212
    const v5, -0x40828f5c    # -0.99f

    .line 213
    .line 214
    .line 215
    const v6, -0x40828f5c    # -0.99f

    .line 216
    .line 217
    .line 218
    const/4 v1, 0x0

    .line 219
    const v2, -0x40f5c28f    # -0.54f

    .line 220
    .line 221
    .line 222
    const v3, -0x4119999a    # -0.45f

    .line 223
    .line 224
    .line 225
    const v4, -0x40828f5c    # -0.99f

    .line 226
    .line 227
    .line 228
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 229
    .line 230
    .line 231
    const v0, 0x4086147b    # 4.19f

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 235
    .line 236
    .line 237
    const/high16 v5, 0x40400000    # 3.0f

    .line 238
    .line 239
    const v6, 0x407f5c29    # 3.99f

    .line 240
    .line 241
    .line 242
    const v1, 0x4069999a    # 3.65f

    .line 243
    .line 244
    .line 245
    const/high16 v2, 0x40400000    # 3.0f

    .line 246
    .line 247
    const/high16 v3, 0x40400000    # 3.0f

    .line 248
    .line 249
    const v4, 0x404f5c29    # 3.24f

    .line 250
    .line 251
    .line 252
    move-object v0, v7

    .line 253
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 254
    .line 255
    .line 256
    const v5, 0x41a0147b    # 20.01f

    .line 257
    .line 258
    .line 259
    const/high16 v6, 0x41a80000    # 21.0f

    .line 260
    .line 261
    const/high16 v1, 0x40400000    # 3.0f

    .line 262
    .line 263
    const v2, 0x41547ae1    # 13.28f

    .line 264
    .line 265
    .line 266
    const v3, 0x412bae14    # 10.73f

    .line 267
    .line 268
    .line 269
    const/high16 v4, 0x41a80000    # 21.0f

    .line 270
    .line 271
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 272
    .line 273
    .line 274
    const v5, 0x3f7d70a4    # 0.99f

    .line 275
    .line 276
    .line 277
    const v6, -0x4068f5c3    # -1.18f

    .line 278
    .line 279
    .line 280
    const v1, 0x3f35c28f    # 0.71f

    .line 281
    .line 282
    .line 283
    const/4 v2, 0x0

    .line 284
    const v3, 0x3f7d70a4    # 0.99f

    .line 285
    .line 286
    .line 287
    const v4, -0x40deb852    # -0.63f

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 291
    .line 292
    .line 293
    const v0, -0x3fa33333    # -3.45f

    .line 294
    .line 295
    .line 296
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 297
    .line 298
    .line 299
    const v5, -0x40828f5c    # -0.99f

    .line 300
    .line 301
    .line 302
    const v6, -0x40828f5c    # -0.99f

    .line 303
    .line 304
    .line 305
    const/4 v1, 0x0

    .line 306
    const v2, -0x40f5c28f    # -0.54f

    .line 307
    .line 308
    .line 309
    const v3, -0x4119999a    # -0.45f

    .line 310
    .line 311
    .line 312
    const v4, -0x40828f5c    # -0.99f

    .line 313
    .line 314
    .line 315
    move-object v0, v7

    .line 316
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v13

    .line 326
    const/16 v27, 0x3800

    .line 327
    .line 328
    const/16 v28, 0x0

    .line 329
    .line 330
    const/high16 v17, 0x3f800000    # 1.0f

    .line 331
    .line 332
    const/high16 v19, 0x3f800000    # 1.0f

    .line 333
    .line 334
    const/16 v18, 0x0

    .line 335
    .line 336
    const/high16 v20, 0x3f800000    # 1.0f

    .line 337
    .line 338
    const/high16 v23, 0x3f800000    # 1.0f

    .line 339
    .line 340
    const/16 v24, 0x0

    .line 341
    .line 342
    const/16 v25, 0x0

    .line 343
    .line 344
    const/16 v26, 0x0

    .line 345
    .line 346
    const-string v15, ""

    .line 347
    .line 348
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    sput-object v0, Landroidx/compose/material/icons/filled/CallKt;->_call:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 357
    .line 358
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    return-object v0
.end method
