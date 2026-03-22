.class public final Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;
.super Ljava/lang/Object;
.source "SpannableExtensions.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private static final createLetterSpacingSpan-eAf_CNQ(JLandroidx/compose/ui/unit/Density;)Landroid/text/style/MetricAffectingSpan;
    .locals 5

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;

    .line 18
    .line 19
    invoke-interface {p2, p0, p1}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-direct {v0, p0}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;-><init>(F)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    new-instance v0, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;

    .line 38
    .line 39
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-direct {v0, p0}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;-><init>(F)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0
.end method

.method public static final flattenFontStylesAndApply(Landroidx/compose/ui/text/SpanStyle;Ljava/util/List;Lat/n;)V
    .locals 13
    .param p0    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/SpanStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Lat/n<",
            "-",
            "Landroidx/compose/ui/text/SpanStyle;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "spanStyles"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-gt v0, v1, :cond_1

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    check-cast v0, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/compose/ui/text/SpanStyle;

    .line 39
    .line 40
    invoke-static {p0, v0}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->merge(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p2, p0, v0, p1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void

    .line 76
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    mul-int/lit8 v1, v0, 0x2

    .line 81
    .line 82
    new-array v3, v1, [Ljava/lang/Integer;

    .line 83
    .line 84
    move v4, v2

    .line 85
    :goto_0
    if-ge v4, v1, :cond_2

    .line 86
    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    aput-object v5, v3, v4

    .line 92
    .line 93
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    move v5, v2

    .line 101
    :goto_1
    if-ge v5, v4, :cond_3

    .line 102
    .line 103
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 108
    .line 109
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    aput-object v7, v3, v5

    .line 118
    .line 119
    add-int v7, v5, v0

    .line 120
    .line 121
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    aput-object v6, v3, v7

    .line 130
    .line 131
    add-int/lit8 v5, v5, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    move-object v0, v3

    .line 135
    check-cast v0, [Ljava/lang/Comparable;

    .line 136
    .line 137
    invoke-static {v0}, Lkotlin/collections/n;->R([Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v3}, Lkotlin/collections/n;->k0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/lang/Number;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    move v4, v2

    .line 151
    :goto_2
    if-ge v4, v1, :cond_8

    .line 152
    .line 153
    aget-object v5, v3, v4

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-ne v6, v0, :cond_4

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    move-object v9, p0

    .line 167
    move v8, v2

    .line 168
    :goto_3
    if-ge v8, v7, :cond_6

    .line 169
    .line 170
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 175
    .line 176
    invoke-virtual {v10}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    invoke-virtual {v10}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 181
    .line 182
    .line 183
    move-result v12

    .line 184
    if-eq v11, v12, :cond_5

    .line 185
    .line 186
    invoke-virtual {v10}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    invoke-virtual {v10}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    invoke-static {v0, v6, v11, v12}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-eqz v11, :cond_5

    .line 199
    .line 200
    invoke-virtual {v10}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    check-cast v10, Landroidx/compose/ui/text/SpanStyle;

    .line 205
    .line 206
    invoke-static {v9, v10}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->merge(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    if-eqz v9, :cond_7

    .line 214
    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {p2, v9, v0, v5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    :cond_7
    move v0, v6

    .line 223
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_8
    return-void
.end method

.method private static final hasFontAttributes(Landroidx/compose/ui/text/TextStyle;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->toSpanStyle()Landroidx/compose/ui/text/SpanStyle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->hasFontAttributes(Landroidx/compose/ui/text/SpanStyle;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method private static final merge(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static final resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F
    .locals 5

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-interface {p3, p0, p1}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    mul-float/2addr p0, p2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 39
    .line 40
    :goto_0
    return p0
.end method

.method public static final setBackground-RPmYEkk(Landroid/text/Spannable;JII)V
    .locals 2
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setBackground"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    cmp-long v0, p1, v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-direct {v0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0, p3, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private static final setBaselineShift-0ocSgnM(Landroid/text/Spannable;Landroidx/compose/ui/text/style/BaselineShift;II)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/BaselineShift;->unbox-impl()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    new-instance v0, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;-><init>(F)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private static final setBrush(Landroid/text/Spannable;Landroidx/compose/ui/graphics/Brush;II)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Landroidx/compose/ui/graphics/SolidColor;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/ui/graphics/SolidColor;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/SolidColor;->getValue-0d7_KjU()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {p0, v0, v1, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 22
    .line 23
    check-cast p1, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;-><init>(Landroidx/compose/ui/graphics/ShaderBrush;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public static final setColor-RPmYEkk(Landroid/text/Spannable;JII)V
    .locals 2
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setColor"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    cmp-long v0, p1, v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0, p3, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private static final setFontAttributes(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Lat/o;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
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
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    move-object/from16 v3, p2

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    move-object v5, v4

    .line 24
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 25
    .line 26
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Landroidx/compose/ui/text/SpanStyle;

    .line 31
    .line 32
    invoke-static {v6}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->hasFontAttributes(Landroidx/compose/ui/text/SpanStyle;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroidx/compose/ui/text/SpanStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->hasFontAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    new-instance v1, Landroidx/compose/ui/text/SpanStyle;

    .line 79
    .line 80
    move-object v2, v1

    .line 81
    const/16 v21, 0x3fc3

    .line 82
    .line 83
    const/16 v22, 0x0

    .line 84
    .line 85
    const-wide/16 v3, 0x0

    .line 86
    .line 87
    const-wide/16 v5, 0x0

    .line 88
    .line 89
    const/4 v11, 0x0

    .line 90
    const-wide/16 v12, 0x0

    .line 91
    .line 92
    const/4 v14, 0x0

    .line 93
    const/4 v15, 0x0

    .line 94
    const/16 v16, 0x0

    .line 95
    .line 96
    const-wide/16 v17, 0x0

    .line 97
    .line 98
    const/16 v19, 0x0

    .line 99
    .line 100
    const/16 v20, 0x0

    .line 101
    .line 102
    invoke-direct/range {v2 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const/4 v1, 0x0

    .line 107
    :goto_1
    new-instance v2, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;

    .line 108
    .line 109
    move-object/from16 v3, p0

    .line 110
    .line 111
    move-object/from16 v4, p3

    .line 112
    .line 113
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;-><init>(Landroid/text/Spannable;Lat/o;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->flattenFontStylesAndApply(Landroidx/compose/ui/text/SpanStyle;Ljava/util/List;Lat/n;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private static final setFontFeatureSettings(Landroid/text/Spannable;Ljava/lang/String;II)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/ui/text/android/style/FontFeatureSpan;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/android/style/FontFeatureSpan;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static final setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V
    .locals 5
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setFontSize"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "density"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 28
    .line 29
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-direct {v0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, p4, p5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_1

    .line 54
    .line 55
    new-instance p3, Landroid/text/style/RelativeSizeSpan;

    .line 56
    .line 57
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-direct {p3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p3, p4, p5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method private static final setGeometricTransform(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextGeometricTransform;II)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/text/style/ScaleXSpan;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getScaleX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroidx/compose/ui/text/android/style/SkewXSpan;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getSkewX()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/android/style/SkewXSpan;-><init>(F)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public static final setLineHeight-KmRG4DE(Landroid/text/Spannable;JFLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/style/LineHeightStyle;)V
    .locals 8
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/style/LineHeightStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setLineHeight"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "density"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "lineHeightStyle"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p5}, Landroidx/compose/ui/text/style/LineHeightStyle;->getTrim-EVpEnUU()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-static {p2}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->isTrimFirstLineTop-impl$ui_text_release(I)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {p5}, Landroidx/compose/ui/text/style/LineHeightStyle;->getTrim-EVpEnUU()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-static {p2}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->isTrimLastLineBottom-impl$ui_text_release(I)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-virtual {p5}, Landroidx/compose/ui/text/style/LineHeightStyle;->getAlignment-PIaL0Z0()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    const/4 v3, 0x0

    .line 53
    move-object v1, p1

    .line 54
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIIZZI)V

    .line 55
    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public static final setLineHeight-r9BaKPg(Landroid/text/Spannable;JFLandroidx/compose/ui/unit/Density;)V
    .locals 1
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setLineHeight"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "density"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    new-instance p2, Landroidx/compose/ui/text/android/style/LineHeightSpan;

    .line 22
    .line 23
    invoke-direct {p2, p1}, Landroidx/compose/ui/text/android/style/LineHeightSpan;-><init>(F)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 p3, 0x0

    .line 31
    invoke-static {p0, p2, p3, p1}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public static final setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V
    .locals 1
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/intl/LocaleList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->localeSpan(Landroidx/compose/ui/text/intl/LocaleList;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static final setShadow(Landroid/text/Spannable;Landroidx/compose/ui/graphics/Shadow;II)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/ui/text/android/style/ShadowSpan;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->getColor-0d7_KjU()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->getOffset-F1C5BW0()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->getOffset-F1C5BW0()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->getBlurRadius()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/compose/ui/text/android/style/ShadowSpan;-><init>(IFFF)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public static final setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 1
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
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
    const-string v0, "span"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x21

    .line 12
    .line 13
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final setSpanStyle(Landroid/text/Spannable;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/unit/Density;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/ui/text/platform/extensions/SpanRange;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/compose/ui/text/SpanStyle;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getBaselineShift-5SSeXJ0()Landroidx/compose/ui/text/style/BaselineShift;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setBaselineShift-0ocSgnM(Landroid/text/Spannable;Landroidx/compose/ui/text/style/BaselineShift;II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getColor-0d7_KjU()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {p0, v0, v1, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setBrush(Landroid/text/Spannable;Landroidx/compose/ui/graphics/Brush;II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setTextDecoration(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextDecoration;II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    move-object v0, p0

    .line 48
    move-object v3, p2

    .line 49
    move v4, v6

    .line 50
    move v5, v7

    .line 51
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFeatureSettings()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setFontFeatureSettings(Landroid/text/Spannable;Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setGeometricTransform(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextGeometricTransform;II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getBackground-0d7_KjU()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    invoke-static {p0, v0, v1, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setBackground-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getShadow()Landroidx/compose/ui/graphics/Shadow;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setShadow(Landroid/text/Spannable;Landroidx/compose/ui/graphics/Shadow;II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    .line 90
    .line 91
    .line 92
    move-result-wide p0

    .line 93
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->createLetterSpacingSpan-eAf_CNQ(JLandroidx/compose/ui/unit/Density;)Landroid/text/style/MetricAffectingSpan;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-eqz p0, :cond_0

    .line 98
    .line 99
    new-instance p1, Landroidx/compose/ui/text/platform/extensions/SpanRange;

    .line 100
    .line 101
    invoke-direct {p1, p0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpanRange;-><init>(Ljava/lang/Object;II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_0
    return-void
.end method

.method public static final setSpanStyles(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Lat/o;)V
    .locals 6
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lat/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Landroidx/compose/ui/unit/Density;",
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
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "contextTextStyle"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "spanStyles"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "density"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "resolveTypeface"

    .line 22
    .line 23
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, p2, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setFontAttributes(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Lat/o;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    const/4 v0, 0x0

    .line 39
    move v1, v0

    .line 40
    :goto_0
    if-ge v1, p4, :cond_2

    .line 41
    .line 42
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ltz v3, :cond_1

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-ge v3, v5, :cond_1

    .line 63
    .line 64
    if-le v4, v3, :cond_1

    .line 65
    .line 66
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-le v4, v3, :cond_0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    invoke-static {p0, v2, p3, p1}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpanStyle(Landroid/text/Spannable;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/unit/Density;Ljava/util/ArrayList;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    :goto_2
    if-ge v0, p2, :cond_3

    .line 84
    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    check-cast p3, Landroidx/compose/ui/text/platform/extensions/SpanRange;

    .line 90
    .line 91
    invoke-virtual {p3}, Landroidx/compose/ui/text/platform/extensions/SpanRange;->component1()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    invoke-virtual {p3}, Landroidx/compose/ui/text/platform/extensions/SpanRange;->component2()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {p3}, Landroidx/compose/ui/text/platform/extensions/SpanRange;->component3()I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    invoke-static {p0, p4, v1, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    return-void
.end method

.method public static final setTextDecoration(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextDecoration;II)V
    .locals 3
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/text/android/style/TextDecorationSpan;

    .line 9
    .line 10
    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-direct {v0, v2, p1}, Landroidx/compose/ui/text/android/style/TextDecorationSpan;-><init>(ZZ)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public static final setTextIndent(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextIndent;FLandroidx/compose/ui/unit/Density;)V
    .locals 10
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/style/TextIndent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
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
    const-string v0, "density"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_6

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_6

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    sget-object v3, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 73
    .line 74
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const/4 v5, 0x0

    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-interface {p3, v0, v1}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    mul-float/2addr v0, p2

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    move v0, v5

    .line 115
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    .line 124
    .line 125
    .line 126
    move-result-wide v8

    .line 127
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    .line 134
    .line 135
    .line 136
    move-result-wide p1

    .line 137
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    invoke-static {v6, v7, v3, v4}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 147
    .line 148
    .line 149
    move-result p3

    .line 150
    if-eqz p3, :cond_5

    .line 151
    .line 152
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    .line 153
    .line 154
    .line 155
    move-result-wide v3

    .line 156
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    mul-float v5, p1, p2

    .line 161
    .line 162
    :cond_5
    :goto_1
    new-instance p1, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 163
    .line 164
    float-to-double p2, v0

    .line 165
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    .line 166
    .line 167
    .line 168
    move-result-wide p2

    .line 169
    double-to-float p2, p2

    .line 170
    float-to-int p2, p2

    .line 171
    float-to-double v0, v5

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 173
    .line 174
    .line 175
    move-result-wide v0

    .line 176
    double-to-float p3, v0

    .line 177
    float-to-int p3, p3

    .line 178
    invoke-direct {p1, p2, p3}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 179
    .line 180
    .line 181
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    invoke-static {p0, p1, v2, p2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 186
    .line 187
    .line 188
    :cond_6
    :goto_2
    return-void
.end method
