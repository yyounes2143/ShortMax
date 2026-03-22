.class public final Landroidx/compose/ui/graphics/AndroidShader_androidKt;
.super Ljava/lang/Object;
.source "AndroidShader.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final ActualImageShader-F49vj9s(Landroidx/compose/ui/graphics/ImageBitmap;II)Landroid/graphics/Shader;
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->asAndroidBitmap(Landroidx/compose/ui/graphics/ImageBitmap;)Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->toAndroidTileMode-0vamqd0(I)Landroid/graphics/Shader$TileMode;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p2}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->toAndroidTileMode-0vamqd0(I)Landroid/graphics/Shader$TileMode;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static final ActualLinearGradientShader-VjE6UOU(JJLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;
    .locals 11
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p4

    .line 2
    const-string v1, "colors"

    .line 3
    .line 4
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->validateColorStops(Ljava/util/List;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p4}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->countTransparentColors(Ljava/util/List;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-instance v10, Landroid/graphics/LinearGradient;

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-static {p4, v1}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->makeTransparentColors(Ljava/util/List;I)[I

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    move-object/from16 v2, p5

    .line 37
    .line 38
    invoke-static {v2, p4, v1}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->makeTransparentStops(Ljava/util/List;Ljava/util/List;I)[F

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->toAndroidTileMode-0vamqd0(I)Landroid/graphics/Shader$TileMode;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    move-object v2, v10

    .line 47
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 48
    .line 49
    .line 50
    return-object v10
.end method

.method public static final ActualRadialGradientShader-8uybcMk(JFLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;
    .locals 9
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "colors"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3, p4}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->validateColorStops(Ljava/util/List;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->countTransparentColors(Ljava/util/List;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v8, Landroid/graphics/RadialGradient;

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {p3, v0}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->makeTransparentColors(Ljava/util/List;I)[I

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {p4, p3, v0}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->makeTransparentStops(Ljava/util/List;Ljava/util/List;I)[F

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {p5}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->toAndroidTileMode-0vamqd0(I)Landroid/graphics/Shader$TileMode;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    move-object v1, v8

    .line 36
    move v4, p2

    .line 37
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 38
    .line 39
    .line 40
    return-object v8
.end method

.method public static final ActualSweepGradientShader-9KIMszo(JLjava/util/List;Ljava/util/List;)Landroid/graphics/Shader;
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "colors"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->validateColorStops(Ljava/util/List;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->countTransparentColors(Ljava/util/List;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Landroid/graphics/SweepGradient;

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p2, v0}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->makeTransparentColors(Ljava/util/List;I)[I

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p3, p2, v0}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->makeTransparentStops(Ljava/util/List;Ljava/util/List;I)[F

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {v1, v2, p0, p1, p2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method

.method public static final countTransparentColors(Ljava/util/List;)I
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "colors"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    :goto_0
    if-ge v1, v0, :cond_2

    .line 20
    .line 21
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    cmpg-float v3, v3, v4

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v2
.end method

.method public static final makeTransparentColors(Ljava/util/List;I)[I
    .locals 14
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;I)[I"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "colors"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    new-array v0, p1, [I

    .line 18
    .line 19
    :goto_0
    if-ge v2, p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    aput v1, v0, v2

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v0

    .line 41
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr v0, p1

    .line 46
    new-array p1, v0, [I

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    move v3, v2

    .line 57
    :goto_1
    if-ge v2, v1, :cond_5

    .line 58
    .line 59
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const/4 v7, 0x0

    .line 74
    cmpg-float v6, v6, v7

    .line 75
    .line 76
    if-nez v6, :cond_4

    .line 77
    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    add-int/lit8 v4, v3, 0x1

    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 88
    .line 89
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    const/16 v12, 0xe

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    const/4 v8, 0x0

    .line 97
    const/4 v9, 0x0

    .line 98
    const/4 v10, 0x0

    .line 99
    const/4 v11, 0x0

    .line 100
    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    aput v5, p1, v3

    .line 109
    .line 110
    :goto_2
    move v3, v4

    .line 111
    goto :goto_3

    .line 112
    :cond_2
    if-ne v2, v0, :cond_3

    .line 113
    .line 114
    add-int/lit8 v4, v3, 0x1

    .line 115
    .line 116
    add-int/lit8 v5, v2, -0x1

    .line 117
    .line 118
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 123
    .line 124
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 125
    .line 126
    .line 127
    move-result-wide v6

    .line 128
    const/16 v12, 0xe

    .line 129
    .line 130
    const/4 v13, 0x0

    .line 131
    const/4 v8, 0x0

    .line 132
    const/4 v9, 0x0

    .line 133
    const/4 v10, 0x0

    .line 134
    const/4 v11, 0x0

    .line 135
    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v5

    .line 139
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    aput v5, p1, v3

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    add-int/lit8 v4, v2, -0x1

    .line 147
    .line 148
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 153
    .line 154
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 155
    .line 156
    .line 157
    move-result-wide v5

    .line 158
    add-int/lit8 v4, v3, 0x1

    .line 159
    .line 160
    const/16 v11, 0xe

    .line 161
    .line 162
    const/4 v12, 0x0

    .line 163
    const/4 v7, 0x0

    .line 164
    const/4 v8, 0x0

    .line 165
    const/4 v9, 0x0

    .line 166
    const/4 v10, 0x0

    .line 167
    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v5

    .line 171
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    aput v5, p1, v3

    .line 176
    .line 177
    add-int/lit8 v5, v2, 0x1

    .line 178
    .line 179
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 184
    .line 185
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 186
    .line 187
    .line 188
    move-result-wide v6

    .line 189
    add-int/lit8 v3, v3, 0x2

    .line 190
    .line 191
    const/16 v12, 0xe

    .line 192
    .line 193
    const/4 v13, 0x0

    .line 194
    const/4 v11, 0x0

    .line 195
    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v5

    .line 199
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    aput v5, p1, v4

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_4
    add-int/lit8 v6, v3, 0x1

    .line 207
    .line 208
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    aput v4, p1, v3

    .line 213
    .line 214
    move v3, v6

    .line 215
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :cond_5
    return-object p1
.end method

.method public static final makeTransparentStops(Ljava/util/List;Ljava/util/List;I)[F
    .locals 8
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;I)[F"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "colors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    check-cast p0, Ljava/util/Collection;

    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->a1(Ljava/util/Collection;)[F

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0

    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/2addr v0, p2

    .line 24
    new-array p2, v0, [F

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v2, v0

    .line 42
    :goto_1
    aput v2, p2, v1

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x1

    .line 49
    move v3, v2

    .line 50
    :goto_2
    if-ge v2, v1, :cond_5

    .line 51
    .line 52
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Ljava/lang/Number;

    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    int-to-float v6, v2

    .line 76
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    int-to-float v7, v7

    .line 81
    div-float/2addr v6, v7

    .line 82
    :goto_3
    add-int/lit8 v7, v3, 0x1

    .line 83
    .line 84
    aput v6, p2, v3

    .line 85
    .line 86
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    cmpg-float v4, v4, v0

    .line 91
    .line 92
    if-nez v4, :cond_4

    .line 93
    .line 94
    add-int/lit8 v3, v3, 0x2

    .line 95
    .line 96
    aput v6, p2, v7

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    move v3, v7

    .line 100
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    if-eqz p0, :cond_6

    .line 104
    .line 105
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Ljava/lang/Number;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    goto :goto_5

    .line 120
    :cond_6
    const/high16 p0, 0x3f800000    # 1.0f

    .line 121
    .line 122
    :goto_5
    aput p0, p2, v3

    .line 123
    .line 124
    return-object p2
.end method

.method private static final validateColorStops(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p1, 0x2

    .line 8
    if-lt p0, p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p1, "colors must have length of at least 2 if colorStops is omitted."

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne p0, p1, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p1, "colors and colorStops arguments must have equal length."

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method
