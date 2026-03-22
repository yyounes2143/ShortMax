.class public final Landroidx/compose/ui/text/android/style/PlaceholderSpan;
.super Landroid/text/style/ReplacementSpan;
.source "PlaceholderSpan.kt"


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final ALIGN_ABOVE_BASELINE:I = 0x0

.field public static final ALIGN_BOTTOM:I = 0x2

.field public static final ALIGN_CENTER:I = 0x3

.field public static final ALIGN_TEXT_BOTTOM:I = 0x5

.field public static final ALIGN_TEXT_CENTER:I = 0x6

.field public static final ALIGN_TEXT_TOP:I = 0x4

.field public static final ALIGN_TOP:I = 0x1

.field public static final Companion:Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNIT_EM:I = 0x1

.field public static final UNIT_SP:I = 0x0

.field public static final UNIT_UNSPECIFIED:I = 0x2


# instance fields
.field private fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final height:F

.field private heightPx:I

.field private final heightUnit:I

.field private isLaidOut:Z

.field private final pxPerSp:F

.field private final verticalAlign:I

.field private final width:F

.field private widthPx:I

.field private final widthUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->Companion:Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(FIFIFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthUnit:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightUnit:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->pxPerSp:F

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "canvas"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "paint"

    .line 7
    .line 8
    invoke-static {p9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "fontMetrics"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getHeightPx()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightPx:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "PlaceholderSpan is not laid out yet."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DocumentExceptions"
        }
    .end annotation

    .line 1
    const-string p2, "paint"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p4, "paint.fontMetricsInt"

    .line 18
    .line 19
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 35
    .line 36
    if-le p1, p4, :cond_6

    .line 37
    .line 38
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthUnit:I

    .line 39
    .line 40
    const-string p4, "Unsupported unit."

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    if-ne p1, p2, :cond_0

    .line 45
    .line 46
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    .line 47
    .line 48
    mul-float/2addr p1, p3

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->width:F

    .line 57
    .line 58
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->pxPerSp:F

    .line 59
    .line 60
    mul-float/2addr p1, v0

    .line 61
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/PlaceholderSpanKt;->ceilToInt(F)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    .line 66
    .line 67
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightUnit:I

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    if-ne p1, p2, :cond_2

    .line 72
    .line 73
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    .line 74
    .line 75
    mul-float/2addr p1, p3

    .line 76
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/PlaceholderSpanKt;->ceilToInt(F)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_3
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->height:F

    .line 88
    .line 89
    iget p2, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->pxPerSp:F

    .line 90
    .line 91
    mul-float/2addr p1, p2

    .line 92
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/PlaceholderSpanKt;->ceilToInt(F)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    :goto_1
    iput p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->heightPx:I

    .line 97
    .line 98
    if-eqz p5, :cond_5

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 105
    .line 106
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 113
    .line 114
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 121
    .line 122
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 123
    .line 124
    iget p1, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    .line 125
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 127
    .line 128
    .line 129
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    const-string p2, "Unknown verticalAlign."

    .line 132
    .line 133
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :pswitch_0
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 138
    .line 139
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 140
    .line 141
    sub-int/2addr p1, p2

    .line 142
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-ge p1, p2, :cond_4

    .line 147
    .line 148
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 155
    .line 156
    iget p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 157
    .line 158
    sub-int/2addr p3, p4

    .line 159
    sub-int/2addr p2, p3

    .line 160
    div-int/lit8 p2, p2, 0x2

    .line 161
    .line 162
    sub-int/2addr p1, p2

    .line 163
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    add-int/2addr p1, p2

    .line 170
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :pswitch_1
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 174
    .line 175
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 176
    .line 177
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 178
    .line 179
    .line 180
    move-result p3

    .line 181
    sub-int/2addr p2, p3

    .line 182
    if-le p1, p2, :cond_4

    .line 183
    .line 184
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 185
    .line 186
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    sub-int/2addr p1, p2

    .line 191
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :pswitch_2
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 195
    .line 196
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    add-int/2addr p1, p2

    .line 201
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 202
    .line 203
    if-le p1, p2, :cond_4

    .line 204
    .line 205
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 206
    .line 207
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    add-int/2addr p1, p2

    .line 212
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :pswitch_3
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 216
    .line 217
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    neg-int p2, p2

    .line 222
    if-le p1, p2, :cond_4

    .line 223
    .line 224
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    neg-int p1, p1

    .line 229
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 230
    .line 231
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 236
    .line 237
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 238
    .line 239
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 244
    .line 245
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 250
    .line 251
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 252
    .line 253
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 258
    .line 259
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    return p1

    .line 264
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 265
    .line 266
    const-string p2, "Invalid fontMetrics: line height can not be negative."

    .line 267
    .line 268
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw p1

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getVerticalAlign()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWidthPx()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->isLaidOut:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->widthPx:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "PlaceholderSpan is not laid out yet."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
