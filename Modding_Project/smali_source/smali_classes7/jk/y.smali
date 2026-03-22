.class public final Ljk/y;
.super Ljava/lang/Object;
.source "TextViewExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextViewExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextViewExt.kt\ncom/startshorts/androidplayer/utils/ext/TextViewExtKt\n+ 2 SpannableString.kt\nandroidx/core/text/SpannableStringKt\n+ 3 SpannedString.kt\nandroidx/core/text/SpannedStringKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,303:1\n32#2:304\n31#3,4:305\n13579#4,2:309\n65#5,4:311\n37#5:315\n53#5:316\n72#5:317\n*S KotlinDebug\n*F\n+ 1 TextViewExt.kt\ncom/startshorts/androidplayer/utils/ext/TextViewExtKt\n*L\n118#1:304\n118#1:305,4\n118#1:309,2\n271#1:311,4\n271#1:315\n271#1:316\n271#1:317\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic a(Landroid/widget/TextView;FFILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Ljk/y;->d(Landroid/widget/TextView;FFILkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Landroid/widget/TextView;)V
    .locals 5
    .param p0    # Landroid/widget/TextView;
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
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroid/text/Spannable;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroid/text/Spannable;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-class v2, Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    array-length v2, v1

    .line 28
    :goto_0
    if-ge v3, v2, :cond_0

    .line 29
    .line 30
    aget-object v4, v1, v3

    .line 31
    .line 32
    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v0, ""

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static final c(Landroid/widget/TextView;FFILkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "FFI",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
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
    new-instance v0, Ljk/x;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    move-object v2, p0

    .line 10
    move v3, p1

    .line 11
    move v4, p2

    .line 12
    move v5, p3

    .line 13
    move-object v6, p4

    .line 14
    invoke-direct/range {v1 .. v6}, Ljk/x;-><init>(Landroid/widget/TextView;FFILkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final d(Landroid/widget/TextView;FFILkotlin/jvm/functions/Function0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getPaint(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    cmpg-float v2, p1, p2

    .line 19
    .line 20
    if-gtz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-le v2, p3, :cond_1

    .line 38
    .line 39
    const/high16 v2, -0x40800000    # -1.0f

    .line 40
    .line 41
    add-float/2addr p1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44
    .line 45
    .line 46
    :goto_1
    if-eqz p4, :cond_2

    .line 47
    .line 48
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public static final e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "textView"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fullText"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "symbols"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "suffixText"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    sub-int/2addr v1, v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    sub-int/2addr v1, v2

    .line 51
    int-to-float v1, v1

    .line 52
    const/4 v2, 0x0

    .line 53
    cmpg-float v2, v1, v2

    .line 54
    .line 55
    if-lez v2, :cond_3

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const/16 v3, 0x20

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v4, "  "

    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    float-to-int v6, v1

    .line 114
    const/4 v7, 0x0

    .line 115
    invoke-static {v2, v7, v5, v0, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 120
    .line 121
    invoke-virtual {v2, v5}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    invoke-virtual {v2, v5, v6}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string v5, "build(...)"

    .line 142
    .line 143
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-gt v5, p4, :cond_0

    .line 151
    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    const/high16 v6, 0x41a00000    # 20.0f

    .line 194
    .line 195
    invoke-static {v6}, Ljk/g;->a(F)I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    int-to-float v6, v6

    .line 204
    add-float/2addr v8, v6

    .line 205
    add-int/lit8 p4, p4, -0x1

    .line 206
    .line 207
    invoke-virtual {v2, p4}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    invoke-virtual {v2, p4}, Landroid/text/Layout;->getLineEnd(I)I

    .line 212
    .line 213
    .line 214
    move-result p4

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-virtual {p2, v6, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    const-string p3, "substring(...)"

    .line 244
    .line 245
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 249
    .line 250
    .line 251
    move-result p4

    .line 252
    :goto_0
    if-lez p4, :cond_1

    .line 253
    .line 254
    invoke-virtual {p2, v7, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    sub-float v3, v1, v8

    .line 266
    .line 267
    cmpl-float v2, v2, v3

    .line 268
    .line 269
    if-lez v2, :cond_1

    .line 270
    .line 271
    add-int/lit8 p4, p4, -0x1

    .line 272
    .line 273
    goto :goto_0

    .line 274
    :cond_1
    add-int/2addr v6, p4

    .line 275
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    new-instance p2, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_2
    new-instance v0, Ljk/y$a;

    .line 302
    .line 303
    invoke-direct {v0, p1, p2, p3, p4}, Ljk/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 307
    .line 308
    .line 309
    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic f(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x10

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x2

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Ljk/y;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final g(Landroid/widget/TextView;Ljava/lang/String;[I[FLjava/lang/Float;)V
    .locals 9
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Float;
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
    const-string v0, "text"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "colorList"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v1, v0

    .line 32
    move-object v6, p2

    .line 33
    move-object v7, p3

    .line 34
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 35
    .line 36
    .line 37
    if-eqz p4, :cond_0

    .line 38
    .line 39
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    const/4 p3, 0x0

    .line 44
    cmpl-float p2, p2, p3

    .line 45
    .line 46
    if-lez p2, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    invoke-static {p3}, Ljk/g;->b(F)F

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static synthetic h(Landroid/widget/TextView;Ljava/lang/String;[I[FLjava/lang/Float;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Ljk/y;->g(Landroid/widget/TextView;Ljava/lang/String;[I[FLjava/lang/Float;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final i(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0    # Landroid/widget/TextView;
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
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/16 p1, 0x10

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static final j(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0    # Landroid/widget/TextView;
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
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    or-int/lit8 p1, p1, 0x10

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    and-int/lit8 p1, p1, -0x11

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static final k(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;)V
    .locals 21
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/graphics/Typeface;",
            "FZ",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View$OnClickListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p7

    .line 8
    .line 9
    const-string v2, "<this>"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "content"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v10, Landroid/text/SpannableString;

    .line 20
    .line 21
    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    if-eqz v8, :cond_2

    .line 26
    .line 27
    :try_start_0
    array-length v12, v8

    .line 28
    move v13, v11

    .line 29
    :goto_0
    if-ge v13, v12, :cond_2

    .line 30
    .line 31
    aget-object v14, v8, v13

    .line 32
    .line 33
    invoke-static {v14}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    move v4, v11

    .line 40
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ge v4, v2, :cond_1

    .line 45
    .line 46
    const/4 v6, 0x4

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    move-object/from16 v2, p1

    .line 50
    .line 51
    move-object v3, v14

    .line 52
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const/4 v3, -0x1

    .line 57
    if-eq v2, v3, :cond_1

    .line 58
    .line 59
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    add-int v4, v2, v3

    .line 64
    .line 65
    if-eqz v9, :cond_0

    .line 66
    .line 67
    invoke-static {v9, v13}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/view/View$OnClickListener;

    .line 72
    .line 73
    :goto_2
    move-object/from16 v20, v3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto :goto_4

    .line 78
    :cond_0
    const/4 v3, 0x0

    .line 79
    goto :goto_2

    .line 80
    :goto_3
    new-instance v3, Lok/a;

    .line 81
    .line 82
    move-object v15, v3

    .line 83
    move/from16 v16, p3

    .line 84
    .line 85
    move/from16 v17, p6

    .line 86
    .line 87
    move-object/from16 v18, p4

    .line 88
    .line 89
    move/from16 v19, p5

    .line 90
    .line 91
    invoke-direct/range {v15 .. v20}, Lok/a;-><init>(IZLandroid/graphics/Typeface;FLandroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    const/16 v5, 0x21

    .line 95
    .line 96
    invoke-virtual {v10, v3, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :goto_4
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v4, "setTextHighLight exception -> "

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v3, "TextView"

    .line 127
    .line 128
    invoke-virtual {v2, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    const/4 v0, 0x1

    .line 132
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public static synthetic l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 v0, p8, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v0, p2

    .line 9
    :goto_0
    and-int/lit8 v2, p8, 0x4

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    move v2, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v2, p3

    .line 17
    :goto_1
    and-int/lit8 v4, p8, 0x8

    .line 18
    .line 19
    if-eqz v4, :cond_2

    .line 20
    .line 21
    move-object v4, v1

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move-object v4, p4

    .line 24
    :goto_2
    and-int/lit8 v5, p8, 0x10

    .line 25
    .line 26
    if-eqz v5, :cond_3

    .line 27
    .line 28
    const/high16 v5, -0x40800000    # -1.0f

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_3
    move v5, p5

    .line 32
    :goto_3
    and-int/lit8 v6, p8, 0x20

    .line 33
    .line 34
    if-eqz v6, :cond_4

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_4
    move v3, p6

    .line 38
    :goto_4
    and-int/lit8 v6, p8, 0x40

    .line 39
    .line 40
    if-eqz v6, :cond_5

    .line 41
    .line 42
    goto :goto_5

    .line 43
    :cond_5
    move-object v1, p7

    .line 44
    :goto_5
    move-object p2, p0

    .line 45
    move-object p3, p1

    .line 46
    move-object p4, v0

    .line 47
    move p5, v2

    .line 48
    move-object p6, v4

    .line 49
    move p7, v5

    .line 50
    move p8, v3

    .line 51
    move-object/from16 p9, v1

    .line 52
    .line 53
    invoke-static/range {p2 .. p9}, Ljk/y;->k(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static final m(Landroid/widget/TextView;Ljava/lang/String;IFI)V
    .locals 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
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
    const-string v0, "text"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/text/SpannableString;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lok/b;

    .line 17
    .line 18
    invoke-direct {v1, p2, p3, p4}, Lok/b;-><init>(IFI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/16 p2, 0x21

    .line 26
    .line 27
    const/4 p3, 0x0

    .line 28
    invoke-virtual {v0, v1, p3, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static final n(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
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
    const-string v0, "typeface"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lyf/a;->a:Lyf/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lyf/a;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_5

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lyf/a;->e()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lyf/a;->k()Landroid/graphics/Typeface;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Lyf/a;->c()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Lyf/a;->i()Landroid/graphics/Typeface;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Lyf/a;->d()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0}, Lyf/a;->j()Landroid/graphics/Typeface;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v0}, Lyf/a;->b()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0}, Lyf/a;->h()Landroid/graphics/Typeface;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {v0}, Lyf/a;->f()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    invoke-virtual {v0}, Lyf/a;->l()Landroid/graphics/Typeface;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_0
    return-void
.end method
