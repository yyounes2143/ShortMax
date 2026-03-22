.class public final Liq/e;
.super Liq/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Lrq/k;)V
    .locals 1
    .param p1    # Lrq/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "algorithmParams"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Liq/a;-><init>(Lrq/k;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final h(II)F
    .locals 3

    .line 1
    invoke-static {p1}, Lyq/r;->s(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Lyq/r;->s(I)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    invoke-static {p1}, Lyq/r;->l(I)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {p2}, Lyq/r;->l(I)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-float/2addr v1, v2

    .line 19
    invoke-static {p1}, Lyq/r;->a(I)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p2}, Lyq/r;->a(I)F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    sub-float/2addr p1, p2

    .line 28
    mul-float/2addr v0, v0

    .line 29
    mul-float/2addr v1, v1

    .line 30
    add-float/2addr v0, v1

    .line 31
    mul-float/2addr p1, p1

    .line 32
    add-float/2addr v0, p1

    .line 33
    float-to-double p1, v0

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    double-to-float p1, p1

    .line 39
    return p1
.end method

.method private final i(Landroid/graphics/Bitmap;F)Ljava/lang/Float;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v10, 0x1

    .line 10
    sub-int/2addr v1, v10

    .line 11
    invoke-static {v10, v1}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 12
    .line 13
    .line 14
    move-result-object v11

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-int/2addr v1, v10

    .line 20
    invoke-static {v10, v1}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    mul-int/2addr v2, v3

    .line 33
    const/4 v12, 0x0

    .line 34
    if-gtz v2, :cond_0

    .line 35
    .line 36
    return-object v12

    .line 37
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    new-array v13, v3, [I

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    new-array v14, v3, [F

    .line 48
    .line 49
    int-to-float v15, v2

    .line 50
    mul-float v16, p2, v15

    .line 51
    .line 52
    invoke-virtual {v1}, Lkotlin/ranges/d;->c()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v1}, Lkotlin/ranges/d;->d()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    const/4 v1, 0x0

    .line 61
    if-gt v2, v8, :cond_9

    .line 62
    .line 63
    move/from16 v17, v1

    .line 64
    .line 65
    move v7, v2

    .line 66
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v18

    .line 74
    const/4 v5, 0x0

    .line 75
    const/16 v19, 0x1

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    move-object/from16 v1, p1

    .line 79
    .line 80
    move-object v2, v13

    .line 81
    move v6, v7

    .line 82
    move v12, v7

    .line 83
    move/from16 v7, v18

    .line 84
    .line 85
    move/from16 v20, v8

    .line 86
    .line 87
    move/from16 v8, v19

    .line 88
    .line 89
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11}, Lkotlin/ranges/d;->c()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {v11}, Lkotlin/ranges/d;->d()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-gt v1, v2, :cond_7

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    :goto_1
    aget v4, v13, v1

    .line 104
    .line 105
    invoke-virtual {v0, v4}, Liq/a;->f(I)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    add-int/lit8 v7, v12, -0x1

    .line 110
    .line 111
    invoke-virtual {v0, v9, v1, v7}, Liq/a;->b(Landroid/graphics/Bitmap;II)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    add-int/lit8 v7, v12, 0x1

    .line 116
    .line 117
    invoke-virtual {v0, v9, v1, v7}, Liq/a;->b(Landroid/graphics/Bitmap;II)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-ne v12, v10, :cond_1

    .line 122
    .line 123
    invoke-direct {v0, v4, v5}, Liq/e;->h(II)F

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    goto :goto_2

    .line 128
    :cond_1
    aget v5, v14, v1

    .line 129
    .line 130
    :goto_2
    invoke-direct {v0, v4, v6}, Liq/e;->h(II)F

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    aput v6, v14, v1

    .line 135
    .line 136
    add-float/2addr v5, v6

    .line 137
    float-to-double v5, v5

    .line 138
    const-wide v7, 0x3fc999999999999aL    # 0.2

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    cmpl-double v5, v5, v7

    .line 144
    .line 145
    if-lez v5, :cond_2

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_2
    add-int/lit8 v5, v1, -0x1

    .line 149
    .line 150
    invoke-virtual {v0, v9, v5, v12}, Liq/a;->b(Landroid/graphics/Bitmap;II)I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    add-int/lit8 v6, v1, 0x1

    .line 155
    .line 156
    invoke-virtual {v0, v9, v6, v12}, Liq/a;->b(Landroid/graphics/Bitmap;II)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v3, :cond_3

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    goto :goto_3

    .line 167
    :cond_3
    invoke-direct {v0, v4, v5}, Liq/e;->h(II)F

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    :goto_3
    invoke-direct {v0, v4, v6}, Liq/e;->h(II)F

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    add-float/2addr v3, v4

    .line 180
    float-to-double v3, v3

    .line 181
    cmpl-double v3, v3, v7

    .line 182
    .line 183
    if-lez v3, :cond_4

    .line 184
    .line 185
    move-object v3, v5

    .line 186
    :goto_4
    add-int/lit8 v17, v17, 0x1

    .line 187
    .line 188
    :goto_5
    move/from16 v4, v17

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_4
    move-object v3, v5

    .line 192
    goto :goto_5

    .line 193
    :goto_6
    int-to-float v5, v4

    .line 194
    cmpl-float v5, v5, v16

    .line 195
    .line 196
    if-lez v5, :cond_5

    .line 197
    .line 198
    const/high16 v1, 0x3f800000    # 1.0f

    .line 199
    .line 200
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    return-object v1

    .line 205
    :cond_5
    if-eq v1, v2, :cond_6

    .line 206
    .line 207
    add-int/lit8 v1, v1, 0x1

    .line 208
    .line 209
    move/from16 v17, v4

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_6
    move/from16 v17, v4

    .line 213
    .line 214
    :cond_7
    move/from16 v1, v20

    .line 215
    .line 216
    if-eq v12, v1, :cond_8

    .line 217
    .line 218
    add-int/lit8 v7, v12, 0x1

    .line 219
    .line 220
    move v8, v1

    .line 221
    const/4 v12, 0x0

    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_8
    move/from16 v1, v17

    .line 225
    .line 226
    :cond_9
    int-to-float v1, v1

    .line 227
    div-float/2addr v1, v15

    .line 228
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    return-object v1
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Liq/a;->d()Lrq/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lrq/k;->a()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-direct {p0, p1, v0}, Liq/e;->i(Landroid/graphics/Bitmap;F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Liq/a;->d()Lrq/k;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lrq/k;->a()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    cmpg-float v0, v0, v1

    .line 33
    .line 34
    if-gtz v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_1
    invoke-virtual {p0, p1, v0}, Liq/a;->e(Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method
