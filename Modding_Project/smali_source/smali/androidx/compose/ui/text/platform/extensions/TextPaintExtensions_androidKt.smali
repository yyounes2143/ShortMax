.class public final Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;
.super Ljava/lang/Object;
.source "TextPaintExtensions.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final applySpanStyle(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/SpanStyle;Lat/o;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/text/SpanStyle;
    .locals 23
    .param p0    # Landroidx/compose/ui/text/platform/AndroidTextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lat/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/platform/AndroidTextPaint;",
            "Landroidx/compose/ui/text/SpanStyle;",
            "Lat/o<",
            "-",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "-",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "-",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "-",
            "Landroidx/compose/ui/text/font/FontSynthesis;",
            "+",
            "Landroid/graphics/Typeface;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Landroidx/compose/ui/text/SpanStyle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "<this>"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "style"

    .line 13
    .line 14
    move-object/from16 v4, p1

    .line 15
    .line 16
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "resolveTypeface"

    .line 20
    .line 21
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "density"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    sget-object v3, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    invoke-interface {v2, v5, v6}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    mul-float/2addr v2, v5

    .line 84
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->hasFontAttributes(Landroidx/compose/ui/text/SpanStyle;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-nez v5, :cond_2

    .line 102
    .line 103
    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 104
    .line 105
    invoke-virtual {v5}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    if-eqz v6, :cond_3

    .line 114
    .line 115
    invoke-virtual {v6}, Landroidx/compose/ui/text/font/FontStyle;->unbox-impl()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    sget-object v6, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 121
    .line 122
    invoke-virtual {v6}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    :goto_1
    invoke-static {v6}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    if-eqz v7, :cond_4

    .line 135
    .line 136
    invoke-virtual {v7}, Landroidx/compose/ui/text/font/FontSynthesis;->unbox-impl()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    goto :goto_2

    .line 141
    :cond_4
    sget-object v7, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 142
    .line 143
    invoke-virtual {v7}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getAll-GVVA2EU()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    :goto_2
    invoke-static {v7}, Landroidx/compose/ui/text/font/FontSynthesis;->box-impl(I)Landroidx/compose/ui/text/font/FontSynthesis;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-interface {v1, v2, v5, v6, v7}, Lat/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Landroid/graphics/Typeface;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    sget-object v2, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroidx/compose/ui/text/intl/LocaleList$Companion;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_6

    .line 181
    .line 182
    sget-object v1, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    .line 183
    .line 184
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v1, v0, v2}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->setTextLocales(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/intl/LocaleList;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    .line 192
    .line 193
    .line 194
    move-result-wide v1

    .line 195
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 196
    .line 197
    .line 198
    move-result-wide v1

    .line 199
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    .line 200
    .line 201
    .line 202
    move-result-wide v5

    .line 203
    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_7

    .line 208
    .line 209
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    .line 210
    .line 211
    .line 212
    move-result-wide v1

    .line 213
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_7
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    .line 222
    .line 223
    .line 224
    move-result-wide v5

    .line 225
    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 226
    .line 227
    .line 228
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFeatureSettings()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    if-eqz v1, :cond_8

    .line 233
    .line 234
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFeatureSettings()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const-string v2, ""

    .line 239
    .line 240
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-nez v1, :cond_8

    .line 245
    .line 246
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFeatureSettings()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    if-eqz v1, :cond_9

    .line 258
    .line 259
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    sget-object v2, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    .line 264
    .line 265
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;->getNone$ui_text_release()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-nez v1, :cond_9

    .line 274
    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getScaleX()F

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    mul-float/2addr v1, v2

    .line 288
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 289
    .line 290
    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getSkewX()F

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    add-float/2addr v1, v2

    .line 304
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 305
    .line 306
    .line 307
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getColor-0d7_KjU()J

    .line 308
    .line 309
    .line 310
    move-result-wide v1

    .line 311
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    .line 312
    .line 313
    .line 314
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    sget-object v2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 319
    .line 320
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    .line 321
    .line 322
    .line 323
    move-result-wide v5

    .line 324
    invoke-virtual {v0, v1, v5, v6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-d16Qtg0(Landroidx/compose/ui/graphics/Brush;J)V

    .line 325
    .line 326
    .line 327
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getShadow()Landroidx/compose/ui/graphics/Shadow;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    .line 342
    .line 343
    .line 344
    move-result-wide v0

    .line 345
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 346
    .line 347
    .line 348
    move-result-wide v0

    .line 349
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    .line 350
    .line 351
    .line 352
    move-result-wide v2

    .line 353
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_b

    .line 358
    .line 359
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    .line 360
    .line 361
    .line 362
    move-result-wide v0

    .line 363
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    const/4 v1, 0x0

    .line 368
    cmpg-float v0, v0, v1

    .line 369
    .line 370
    if-nez v0, :cond_a

    .line 371
    .line 372
    goto :goto_5

    .line 373
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    .line 374
    .line 375
    .line 376
    move-result-wide v0

    .line 377
    :goto_4
    move-wide v12, v0

    .line 378
    goto :goto_6

    .line 379
    :cond_b
    :goto_5
    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    .line 380
    .line 381
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    .line 382
    .line 383
    .line 384
    move-result-wide v0

    .line 385
    goto :goto_4

    .line 386
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getBackground-0d7_KjU()J

    .line 387
    .line 388
    .line 389
    move-result-wide v0

    .line 390
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 391
    .line 392
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    .line 393
    .line 394
    .line 395
    move-result-wide v5

    .line 396
    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-eqz v0, :cond_c

    .line 401
    .line 402
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 403
    .line 404
    .line 405
    move-result-wide v0

    .line 406
    :goto_7
    move-wide/from16 v17, v0

    .line 407
    .line 408
    goto :goto_8

    .line 409
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getBackground-0d7_KjU()J

    .line 410
    .line 411
    .line 412
    move-result-wide v0

    .line 413
    goto :goto_7

    .line 414
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getBaselineShift-5SSeXJ0()Landroidx/compose/ui/text/style/BaselineShift;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    sget-object v1, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    .line 419
    .line 420
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/BaselineShift$Companion;->getNone-y9eOQZs()F

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-nez v0, :cond_d

    .line 425
    .line 426
    const/4 v0, 0x0

    .line 427
    goto :goto_9

    .line 428
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/BaselineShift;->unbox-impl()F

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/BaselineShift;->equals-impl0(FF)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    :goto_9
    if-eqz v0, :cond_e

    .line 437
    .line 438
    const/4 v0, 0x0

    .line 439
    :goto_a
    move-object v14, v0

    .line 440
    goto :goto_b

    .line 441
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->getBaselineShift-5SSeXJ0()Landroidx/compose/ui/text/style/BaselineShift;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    goto :goto_a

    .line 446
    :goto_b
    new-instance v0, Landroidx/compose/ui/text/SpanStyle;

    .line 447
    .line 448
    move-object v2, v0

    .line 449
    const/16 v21, 0x367f

    .line 450
    .line 451
    const/16 v22, 0x0

    .line 452
    .line 453
    const-wide/16 v3, 0x0

    .line 454
    .line 455
    const-wide/16 v5, 0x0

    .line 456
    .line 457
    const/4 v7, 0x0

    .line 458
    const/4 v8, 0x0

    .line 459
    const/4 v9, 0x0

    .line 460
    const/4 v10, 0x0

    .line 461
    const/4 v11, 0x0

    .line 462
    const/4 v15, 0x0

    .line 463
    const/16 v16, 0x0

    .line 464
    .line 465
    const/16 v19, 0x0

    .line 466
    .line 467
    const/16 v20, 0x0

    .line 468
    .line 469
    invoke-direct/range {v2 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 470
    .line 471
    .line 472
    return-object v0
.end method

.method public static final hasFontAttributes(Landroidx/compose/ui/text/SpanStyle;)Z
    .locals 1
    .param p0    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/text/SpanStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/text/SpanStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 28
    :goto_1
    return p0
.end method
