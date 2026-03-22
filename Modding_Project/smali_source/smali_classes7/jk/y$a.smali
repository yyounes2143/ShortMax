.class public final Ljk/y$a;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljk/y;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 TextViewExt.kt\ncom/startshorts/androidplayer/utils/ext/TextViewExtKt\n*L\n1#1,414:1\n69#2:415\n70#2:446\n272#3,30:416\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljk/y$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Ljk/y$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Ljk/y$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Ljk/y$a;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    .line 5
    .line 6
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    check-cast p1, Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    sub-int/2addr p3, p4

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    sub-int/2addr p3, p4

    .line 29
    int-to-float p3, p3

    .line 30
    const/4 p4, 0x0

    .line 31
    cmpg-float p4, p3, p4

    .line 32
    .line 33
    if-lez p4, :cond_2

    .line 34
    .line 35
    new-instance p4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object p5, p0, Ljk/y$a;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 p5, 0x20

    .line 46
    .line 47
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p6, p0, Ljk/y$a;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p6, "  "

    .line 56
    .line 57
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object p7, p0, Ljk/y$a;->c:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    new-instance p7, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object p8, p0, Ljk/y$a;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object p8, p0, Ljk/y$a;->b:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object p8, p0, Ljk/y$a;->c:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p7

    .line 99
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result p7

    .line 103
    float-to-int p8, p3

    .line 104
    const/4 p9, 0x0

    .line 105
    invoke-static {p4, p9, p7, p2, p8}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p4

    .line 109
    sget-object p7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 110
    .line 111
    invoke-virtual {p4, p7}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    .line 116
    .line 117
    .line 118
    move-result p7

    .line 119
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    .line 120
    .line 121
    .line 122
    move-result p8

    .line 123
    invoke-virtual {p4, p7, p8}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    invoke-virtual {p4}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 128
    .line 129
    .line 130
    move-result-object p4

    .line 131
    const-string p7, "build(...)"

    .line 132
    .line 133
    invoke-static {p4, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p4}, Landroid/text/StaticLayout;->getLineCount()I

    .line 137
    .line 138
    .line 139
    move-result p7

    .line 140
    iget p8, p0, Ljk/y$a;->d:I

    .line 141
    .line 142
    if-gt p7, p8, :cond_0

    .line 143
    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    iget-object p3, p0, Ljk/y$a;->a:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object p3, p0, Ljk/y$a;->c:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_0
    new-instance p7, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    iget-object p8, p0, Ljk/y$a;->b:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object p8, p0, Ljk/y$a;->c:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p7

    .line 193
    const/high16 p8, 0x41a00000    # 20.0f

    .line 194
    .line 195
    invoke-static {p8}, Ljk/g;->a(F)I

    .line 196
    .line 197
    .line 198
    move-result p8

    .line 199
    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    int-to-float p8, p8

    .line 204
    add-float/2addr v0, p8

    .line 205
    iget p8, p0, Ljk/y$a;->d:I

    .line 206
    .line 207
    add-int/lit8 p8, p8, -0x1

    .line 208
    .line 209
    invoke-virtual {p4, p8}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 210
    .line 211
    .line 212
    move-result p8

    .line 213
    iget v1, p0, Ljk/y$a;->d:I

    .line 214
    .line 215
    add-int/lit8 v1, v1, -0x1

    .line 216
    .line 217
    invoke-virtual {p4, v1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 218
    .line 219
    .line 220
    move-result p4

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    iget-object v2, p0, Ljk/y$a;->a:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object p5, p0, Ljk/y$a;->b:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object p5, p0, Ljk/y$a;->c:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p5

    .line 251
    invoke-virtual {p5, p8, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p4

    .line 255
    const-string p5, "substring(...)"

    .line 256
    .line 257
    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 261
    .line 262
    .line 263
    move-result p6

    .line 264
    :goto_0
    if-lez p6, :cond_1

    .line 265
    .line 266
    invoke-virtual {p4, p9, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {v1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    sub-float v2, p3, v0

    .line 278
    .line 279
    cmpl-float v1, v1, v2

    .line 280
    .line 281
    if-lez v1, :cond_1

    .line 282
    .line 283
    add-int/lit8 p6, p6, -0x1

    .line 284
    .line 285
    goto :goto_0

    .line 286
    :cond_1
    iget-object p2, p0, Ljk/y$a;->a:Ljava/lang/String;

    .line 287
    .line 288
    add-int/2addr p8, p6

    .line 289
    invoke-virtual {p2, p9, p8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    new-instance p3, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    :cond_2
    :goto_1
    return-void
.end method
