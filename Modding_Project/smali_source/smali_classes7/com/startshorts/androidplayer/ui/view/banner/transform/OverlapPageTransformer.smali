.class public final Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;
.super Ljava/lang/Object;
.source "OverlapPageTransformer.kt"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOverlapPageTransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OverlapPageTransformer.kt\ncom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n1#2:111\n*E\n"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private f:F


# direct methods
.method public constructor <init>(IFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->a:I

    .line 5
    .line 6
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->b:F

    .line 7
    .line 8
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->c:F

    .line 9
    .line 10
    iput p4, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->d:F

    .line 11
    .line 12
    iput p5, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->e:F

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    cmpg-float p3, p1, p2

    .line 16
    .line 17
    if-gtz p3, :cond_1

    .line 18
    .line 19
    const/high16 p3, 0x3f800000    # 1.0f

    .line 20
    .line 21
    cmpg-float p2, p2, p3

    .line 22
    .line 23
    if-gtz p2, :cond_1

    .line 24
    .line 25
    cmpg-float p1, p1, p4

    .line 26
    .line 27
    if-gtz p1, :cond_0

    .line 28
    .line 29
    cmpg-float p1, p4, p3

    .line 30
    .line 31
    if-gtz p1, :cond_0

    .line 32
    .line 33
    const p1, 0x3e4ccccd    # 0.2f

    .line 34
    .line 35
    .line 36
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->f:F

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p2, "unSelectedItemAlpha value should be between 1.0 to 0.0"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string p2, "minScale value should be between 1.0 to 0.0"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->b:F

    .line 7
    .line 8
    float-to-double v1, v0

    .line 9
    const-wide v3, 0x3fe999999999999aL    # 0.8

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmpl-double v1, v1, v3

    .line 15
    .line 16
    if-ltz v1, :cond_0

    .line 17
    .line 18
    const v0, 0x3e4ccccd    # 0.2f

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    float-to-double v0, v0

    .line 23
    const-wide v2, 0x3fe3333333333333L    # 0.6

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmpl-double v0, v0, v2

    .line 29
    .line 30
    if-ltz v0, :cond_1

    .line 31
    .line 32
    const v0, 0x3e99999a    # 0.3f

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    .line 37
    .line 38
    .line 39
    :goto_0
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->f:F

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    neg-float v0, v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 47
    .line 48
    .line 49
    const/high16 v0, 0x3f000000    # 0.5f

    .line 50
    .line 51
    mul-float v1, p2, v0

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    .line 59
    sub-float v1, v2, v1

    .line 60
    .line 61
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->c:F

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    cmpg-float v5, v3, v4

    .line 69
    .line 70
    const/4 v6, 0x1

    .line 71
    if-nez v5, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    int-to-float v5, v6

    .line 75
    sub-float/2addr v5, v1

    .line 76
    cmpl-float v1, p2, v4

    .line 77
    .line 78
    if-lez v1, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    neg-float v3, v3

    .line 82
    :goto_1
    mul-float/2addr v5, v3

    .line 83
    invoke-virtual {p1, v5}, Landroid/view/View;->setRotationY(F)V

    .line 84
    .line 85
    .line 86
    :goto_2
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->f:F

    .line 87
    .line 88
    mul-float/2addr v1, p2

    .line 89
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    sub-float v1, v2, v1

    .line 94
    .line 95
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->b:F

    .line 96
    .line 97
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 105
    .line 106
    .line 107
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->e:F

    .line 108
    .line 109
    float-to-int v3, v3

    .line 110
    div-int/lit8 v3, v3, 0x2

    .line 111
    .line 112
    int-to-float v3, v3

    .line 113
    invoke-static {v3}, Lfj/a;->a(F)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->a:I

    .line 118
    .line 119
    if-eqz v5, :cond_6

    .line 120
    .line 121
    if-ne v5, v6, :cond_5

    .line 122
    .line 123
    int-to-float v3, v3

    .line 124
    mul-float/2addr v3, p2

    .line 125
    cmpl-float v4, p2, v4

    .line 126
    .line 127
    if-lez v4, :cond_4

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    neg-int v4, v4

    .line 134
    :goto_3
    int-to-float v4, v4

    .line 135
    sub-float v1, v2, v1

    .line 136
    .line 137
    mul-float/2addr v4, v1

    .line 138
    goto :goto_4

    .line 139
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    goto :goto_3

    .line 144
    :goto_4
    add-float/2addr v3, v4

    .line 145
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 146
    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    const-string p2, "Gives correct orientation value, ViewPager2.ORIENTATION_HORIZONTAL or ViewPager2.ORIENTATION_VERTICAL"

    .line 152
    .line 153
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_6
    int-to-float v3, v3

    .line 158
    mul-float/2addr v3, p2

    .line 159
    cmpl-float v4, p2, v4

    .line 160
    .line 161
    if-lez v4, :cond_7

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    neg-int v4, v4

    .line 168
    :goto_5
    int-to-float v4, v4

    .line 169
    sub-float v1, v2, v1

    .line 170
    .line 171
    mul-float/2addr v4, v1

    .line 172
    goto :goto_6

    .line 173
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    goto :goto_5

    .line 178
    :goto_6
    add-float/2addr v3, v4

    .line 179
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 180
    .line 181
    .line 182
    :goto_7
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer;->d:F

    .line 183
    .line 184
    cmpg-float v1, v1, v2

    .line 185
    .line 186
    if-nez v1, :cond_8

    .line 187
    .line 188
    goto :goto_9

    .line 189
    :cond_8
    const/high16 v1, -0x40800000    # -1.0f

    .line 190
    .line 191
    cmpl-float v1, p2, v1

    .line 192
    .line 193
    if-ltz v1, :cond_9

    .line 194
    .line 195
    cmpg-float v1, p2, v2

    .line 196
    .line 197
    if-gtz v1, :cond_9

    .line 198
    .line 199
    int-to-float v1, v6

    .line 200
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    sub-float/2addr v1, p2

    .line 205
    mul-float/2addr v1, v0

    .line 206
    add-float/2addr v1, v0

    .line 207
    goto :goto_8

    .line 208
    :cond_9
    mul-float/2addr p2, p2

    .line 209
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    div-float v1, v0, p2

    .line 214
    .line 215
    :goto_8
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 216
    .line 217
    .line 218
    :goto_9
    return-void
.end method
