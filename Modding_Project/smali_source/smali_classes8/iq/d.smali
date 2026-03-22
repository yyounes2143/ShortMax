.class public final Liq/d;
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

.method private final h(Landroid/graphics/Bitmap;F)F
    .locals 18

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    mul-int/2addr v3, v4

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    new-array v4, v4, [I

    .line 32
    .line 33
    invoke-virtual {v2}, Lkotlin/ranges/d;->c()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v2}, Lkotlin/ranges/d;->d()I

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    const/4 v14, 0x1

    .line 42
    if-gt v5, v13, :cond_5

    .line 43
    .line 44
    move/from16 v16, v1

    .line 45
    .line 46
    move/from16 v17, v16

    .line 47
    .line 48
    move v15, v5

    .line 49
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v12, 0x1

    .line 59
    const/4 v7, 0x0

    .line 60
    move-object/from16 v5, p1

    .line 61
    .line 62
    move-object v6, v4

    .line 63
    move v10, v15

    .line 64
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lkotlin/ranges/d;->c()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v0}, Lkotlin/ranges/d;->d()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-gt v5, v6, :cond_3

    .line 76
    .line 77
    move/from16 v7, v17

    .line 78
    .line 79
    :goto_1
    aget v8, v4, v5

    .line 80
    .line 81
    if-nez v16, :cond_0

    .line 82
    .line 83
    move v7, v8

    .line 84
    move/from16 v16, v14

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_0
    if-ne v8, v7, :cond_1

    .line 88
    .line 89
    add-int/lit8 v16, v16, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    add-int/lit8 v16, v16, -0x1

    .line 93
    .line 94
    :goto_2
    if-eq v5, v6, :cond_2

    .line 95
    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move/from16 v17, v7

    .line 100
    .line 101
    :cond_3
    if-eq v15, v13, :cond_4

    .line 102
    .line 103
    add-int/lit8 v15, v15, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    move/from16 v5, v16

    .line 107
    .line 108
    move/from16 v13, v17

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    move v5, v1

    .line 112
    move v13, v5

    .line 113
    :goto_3
    int-to-float v5, v5

    .line 114
    int-to-float v3, v3

    .line 115
    const/4 v6, 0x2

    .line 116
    int-to-float v6, v6

    .line 117
    mul-float v6, v6, p2

    .line 118
    .line 119
    int-to-float v7, v14

    .line 120
    sub-float/2addr v6, v7

    .line 121
    mul-float/2addr v6, v3

    .line 122
    cmpg-float v5, v5, v6

    .line 123
    .line 124
    if-gez v5, :cond_6

    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    return v0

    .line 128
    :cond_6
    invoke-virtual {v2}, Lkotlin/ranges/d;->c()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-virtual {v2}, Lkotlin/ranges/d;->d()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-gt v5, v2, :cond_9

    .line 137
    .line 138
    move v14, v5

    .line 139
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    const/4 v9, 0x0

    .line 148
    const/4 v12, 0x1

    .line 149
    const/4 v7, 0x0

    .line 150
    move-object/from16 v5, p1

    .line 151
    .line 152
    move-object v6, v4

    .line 153
    move v10, v14

    .line 154
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lkotlin/ranges/d;->c()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-virtual {v0}, Lkotlin/ranges/d;->d()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-gt v5, v6, :cond_8

    .line 166
    .line 167
    :goto_5
    aget v7, v4, v5

    .line 168
    .line 169
    if-ne v7, v13, :cond_7

    .line 170
    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 172
    .line 173
    :cond_7
    if-eq v5, v6, :cond_8

    .line 174
    .line 175
    add-int/lit8 v5, v5, 0x1

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_8
    if-eq v14, v2, :cond_9

    .line 179
    .line 180
    add-int/lit8 v14, v14, 0x1

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_9
    int-to-float v0, v1

    .line 184
    div-float/2addr v0, v3

    .line 185
    return v0
.end method

.method private final i(Landroid/graphics/Bitmap;)F
    .locals 15

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    mul-int/2addr v3, v4

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    new-array v4, v4, [I

    .line 32
    .line 33
    new-instance v13, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lkotlin/ranges/d;->c()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v2}, Lkotlin/ranges/d;->d()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-gt v5, v2, :cond_2

    .line 47
    .line 48
    move v14, v5

    .line 49
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v12, 0x1

    .line 59
    const/4 v7, 0x0

    .line 60
    move-object/from16 v5, p1

    .line 61
    .line 62
    move-object v6, v4

    .line 63
    move v10, v14

    .line 64
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lkotlin/ranges/d;->c()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v0}, Lkotlin/ranges/d;->d()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-gt v5, v6, :cond_1

    .line 76
    .line 77
    :goto_1
    aget v7, v4, v5

    .line 78
    .line 79
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Ljava/lang/Integer;

    .line 92
    .line 93
    if-eqz v7, :cond_0

    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    goto :goto_2

    .line 100
    :cond_0
    move v7, v1

    .line 101
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-interface {v13, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    if-eq v5, v6, :cond_1

    .line 111
    .line 112
    add-int/lit8 v5, v5, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    if-eq v14, v2, :cond_2

    .line 116
    .line 117
    add-int/lit8 v14, v14, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->E0(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Integer;

    .line 129
    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    :cond_3
    int-to-float v0, v1

    .line 137
    int-to-float v1, v3

    .line 138
    div-float/2addr v0, v1

    .line 139
    return v0
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
    const/high16 v1, 0x3f000000    # 0.5f

    .line 15
    .line 16
    cmpl-float v1, v0, v1

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p1, v0}, Liq/d;->h(Landroid/graphics/Bitmap;F)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0, p1}, Liq/d;->i(Landroid/graphics/Bitmap;)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    :goto_0
    cmpl-float v0, p1, v0

    .line 30
    .line 31
    if-ltz v0, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0, p1, v1}, Liq/a;->e(Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method
