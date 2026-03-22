.class public final Landroidx/compose/ui/text/SpanStyleKt;
.super Ljava/lang/Object;
.source "SpanStyle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final DefaultBackgroundColor:J

.field private static final DefaultColor:J

.field private static final DefaultFontSize:J

.field private static final DefaultLetterSpacing:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultFontSize:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultLetterSpacing:J

    .line 15
    .line 16
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    sput-wide v1, Landroidx/compose/ui/text/SpanStyleKt;->DefaultBackgroundColor:J

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColor:J

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic access$getDefaultColor$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColor:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final lerp(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;F)Landroidx/compose/ui/text/SpanStyle;
    .locals 30
    .param p0    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "start"

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "stop"

    .line 11
    .line 12
    move-object/from16 v3, p1

    .line 13
    .line 14
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getTextDrawStyle$ui_text_release()Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getTextDrawStyle$ui_text_release()Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/style/TextDrawStyleKt;->lerp(Landroidx/compose/ui/text/style/TextDrawStyle;Landroidx/compose/ui/text/style/TextDrawStyle;F)Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move-object v12, v1

    .line 42
    check-cast v12, Landroidx/compose/ui/text/font/FontFamily;

    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    invoke-static {v4, v5, v7, v8, v0}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-nez v4, :cond_1

    .line 73
    .line 74
    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 75
    .line 76
    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    :cond_1
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/font/FontWeightKt;->lerp(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontWeight;F)Landroidx/compose/ui/text/font/FontWeight;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    move-object v10, v1

    .line 97
    check-cast v10, Landroidx/compose/ui/text/font/FontStyle;

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    move-object v11, v1

    .line 112
    check-cast v11, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontFeatureSettings()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFeatureSettings()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    move-object v13, v1

    .line 127
    check-cast v13, Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    .line 134
    .line 135
    .line 136
    move-result-wide v14

    .line 137
    invoke-static {v4, v5, v14, v15, v0}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    .line 138
    .line 139
    .line 140
    move-result-wide v14

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getBaselineShift-5SSeXJ0()Landroidx/compose/ui/text/style/BaselineShift;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const/4 v4, 0x0

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/BaselineShift;->unbox-impl()F

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    invoke-static {v4}, Landroidx/compose/ui/text/style/BaselineShift;->constructor-impl(F)F

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getBaselineShift-5SSeXJ0()Landroidx/compose/ui/text/style/BaselineShift;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    if-eqz v5, :cond_3

    .line 162
    .line 163
    invoke-virtual {v5}, Landroidx/compose/ui/text/style/BaselineShift;->unbox-impl()F

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    goto :goto_1

    .line 168
    :cond_3
    invoke-static {v4}, Landroidx/compose/ui/text/style/BaselineShift;->constructor-impl(F)F

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    :goto_1
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/style/BaselineShiftKt;->lerp-jWV1Mfo(FFF)F

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    if-nez v4, :cond_4

    .line 181
    .line 182
    sget-object v4, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    .line 183
    .line 184
    invoke-virtual {v4}, Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;->getNone$ui_text_release()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    if-nez v5, :cond_5

    .line 193
    .line 194
    sget-object v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    .line 195
    .line 196
    invoke-virtual {v5}, Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;->getNone$ui_text_release()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    :cond_5
    invoke-static {v4, v5, v0}, Landroidx/compose/ui/text/style/TextGeometricTransformKt;->lerp(Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/style/TextGeometricTransform;F)Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 201
    .line 202
    .line 203
    move-result-object v17

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-static {v4, v5, v0}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    move-object/from16 v18, v4

    .line 217
    .line 218
    check-cast v18, Landroidx/compose/ui/text/intl/LocaleList;

    .line 219
    .line 220
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getBackground-0d7_KjU()J

    .line 221
    .line 222
    .line 223
    move-result-wide v4

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getBackground-0d7_KjU()J

    .line 225
    .line 226
    .line 227
    move-result-wide v2

    .line 228
    invoke-static {v4, v5, v2, v3, v0}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    .line 229
    .line 230
    .line 231
    move-result-wide v19

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    move-object/from16 v21, v2

    .line 245
    .line 246
    check-cast v21, Landroidx/compose/ui/text/style/TextDecoration;

    .line 247
    .line 248
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getShadow()Landroidx/compose/ui/graphics/Shadow;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    if-nez v2, :cond_6

    .line 253
    .line 254
    new-instance v2, Landroidx/compose/ui/graphics/Shadow;

    .line 255
    .line 256
    const/16 v28, 0x7

    .line 257
    .line 258
    const/16 v29, 0x0

    .line 259
    .line 260
    const-wide/16 v23, 0x0

    .line 261
    .line 262
    const-wide/16 v25, 0x0

    .line 263
    .line 264
    const/16 v27, 0x0

    .line 265
    .line 266
    move-object/from16 v22, v2

    .line 267
    .line 268
    invoke-direct/range {v22 .. v29}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 269
    .line 270
    .line 271
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getShadow()Landroidx/compose/ui/graphics/Shadow;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    if-nez v3, :cond_7

    .line 276
    .line 277
    new-instance v3, Landroidx/compose/ui/graphics/Shadow;

    .line 278
    .line 279
    const/16 v28, 0x7

    .line 280
    .line 281
    const/16 v29, 0x0

    .line 282
    .line 283
    const-wide/16 v23, 0x0

    .line 284
    .line 285
    const-wide/16 v25, 0x0

    .line 286
    .line 287
    const/16 v27, 0x0

    .line 288
    .line 289
    move-object/from16 v22, v3

    .line 290
    .line 291
    invoke-direct/range {v22 .. v29}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 292
    .line 293
    .line 294
    :cond_7
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/graphics/ShadowKt;->lerp(Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/Shadow;F)Landroidx/compose/ui/graphics/Shadow;

    .line 295
    .line 296
    .line 297
    move-result-object v22

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getPlatformStyle()Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getPlatformStyle()Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SpanStyleKt;->lerpPlatformStyle(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformSpanStyle;F)Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 307
    .line 308
    .line 309
    move-result-object v23

    .line 310
    new-instance v0, Landroidx/compose/ui/text/SpanStyle;

    .line 311
    .line 312
    move-object v5, v0

    .line 313
    invoke-static {v1}, Landroidx/compose/ui/text/style/BaselineShift;->box-impl(F)Landroidx/compose/ui/text/style/BaselineShift;

    .line 314
    .line 315
    .line 316
    move-result-object v16

    .line 317
    const/16 v24, 0x0

    .line 318
    .line 319
    invoke-direct/range {v5 .. v24}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextDrawStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 320
    .line 321
    .line 322
    return-object v0
.end method

.method public static final lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;F)TT;"
        }
    .end annotation

    .line 1
    float-to-double v0, p2

    .line 2
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 3
    .line 4
    cmpg-double p2, v0, v2

    .line 5
    .line 6
    if-gez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p0, p1

    .line 10
    :goto_0
    return-object p0
.end method

.method private static final lerpPlatformStyle(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformSpanStyle;F)Landroidx/compose/ui/text/PlatformSpanStyle;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    if-nez p0, :cond_1

    .line 8
    .line 9
    sget-object p0, Landroidx/compose/ui/text/PlatformSpanStyle;->Companion:Landroidx/compose/ui/text/PlatformSpanStyle$Companion;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/text/PlatformSpanStyle$Companion;->getDefault()Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    if-nez p1, :cond_2

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/ui/text/PlatformSpanStyle;->Companion:Landroidx/compose/ui/text/PlatformSpanStyle$Companion;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/text/PlatformSpanStyle$Companion;->getDefault()Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AndroidTextStyle_androidKt;->lerp(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformSpanStyle;F)Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static final lerpTextUnitInheritable-C3pnCVY(JJF)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/unit/TextUnitKt;->lerp-C3pnCVY(JJF)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0

    .line 19
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->box-impl(J)Landroidx/compose/ui/unit/TextUnit;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->box-impl(J)Landroidx/compose/ui/unit/TextUnit;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1, p4}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/compose/ui/unit/TextUnit;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/unit/TextUnit;->unbox-impl()J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    return-wide p0
.end method

.method public static final resolveSpanStyleDefaults(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;
    .locals 23
    .param p0    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "style"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getTextDrawStyle$ui_text_release()Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v2, Landroidx/compose/ui/text/SpanStyleKt$resolveSpanStyleDefaults$1;->INSTANCE:Landroidx/compose/ui/text/SpanStyleKt$resolveSpanStyleDefaults$1;

    .line 13
    .line 14
    invoke-interface {v0, v2}, Landroidx/compose/ui/text/style/TextDrawStyle;->takeOrElse(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    sget-wide v2, Landroidx/compose/ui/text/SpanStyleKt;->DefaultFontSize:J

    .line 29
    .line 30
    :goto_0
    move-wide v5, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    goto :goto_0

    .line 37
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_1
    move-object v7, v0

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle;->unbox-impl()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    :goto_2
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->unbox-impl()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getAll-GVVA2EU()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    :goto_3
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->box-impl(I)Landroidx/compose/ui/text/font/FontSynthesis;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getDefault()Landroidx/compose/ui/text/font/SystemFontFamily;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_4
    move-object v10, v0

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getFontFeatureSettings()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    const-string v0, ""

    .line 112
    .line 113
    :cond_5
    move-object v11, v0

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    sget-wide v2, Landroidx/compose/ui/text/SpanStyleKt;->DefaultLetterSpacing:J

    .line 125
    .line 126
    :goto_4
    move-wide v12, v2

    .line 127
    goto :goto_5

    .line 128
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    goto :goto_4

    .line 133
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getBaselineShift-5SSeXJ0()Landroidx/compose/ui/text/style/BaselineShift;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/BaselineShift;->unbox-impl()F

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    goto :goto_6

    .line 144
    :cond_7
    sget-object v0, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/BaselineShift$Companion;->getNone-y9eOQZs()F

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    :goto_6
    invoke-static {v0}, Landroidx/compose/ui/text/style/BaselineShift;->box-impl(F)Landroidx/compose/ui/text/style/BaselineShift;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-nez v0, :cond_8

    .line 159
    .line 160
    sget-object v0, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;->getNone$ui_text_release()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :cond_8
    move-object v15, v0

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-nez v0, :cond_9

    .line 172
    .line 173
    sget-object v0, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/compose/ui/text/intl/LocaleList$Companion;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :cond_9
    move-object/from16 v16, v0

    .line 180
    .line 181
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getBackground-0d7_KjU()J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 188
    .line 189
    .line 190
    move-result-wide v17

    .line 191
    cmp-long v0, v2, v17

    .line 192
    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    :goto_7
    move-wide/from16 v17, v2

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_a
    sget-wide v2, Landroidx/compose/ui/text/SpanStyleKt;->DefaultBackgroundColor:J

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-nez v0, :cond_b

    .line 206
    .line 207
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 208
    .line 209
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :cond_b
    move-object/from16 v19, v0

    .line 214
    .line 215
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getShadow()Landroidx/compose/ui/graphics/Shadow;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-nez v0, :cond_c

    .line 220
    .line 221
    sget-object v0, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow$Companion;->getNone()Landroidx/compose/ui/graphics/Shadow;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    :cond_c
    move-object/from16 v20, v0

    .line 228
    .line 229
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->getPlatformStyle()Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 230
    .line 231
    .line 232
    move-result-object v21

    .line 233
    new-instance v0, Landroidx/compose/ui/text/SpanStyle;

    .line 234
    .line 235
    move-object v3, v0

    .line 236
    const/16 v22, 0x0

    .line 237
    .line 238
    invoke-direct/range {v3 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextDrawStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 239
    .line 240
    .line 241
    return-object v0
.end method
