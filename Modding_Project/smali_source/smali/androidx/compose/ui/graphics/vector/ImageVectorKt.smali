.class public final Landroidx/compose/ui/graphics/vector/ImageVectorKt;
.super Ljava/lang/Object;
.source "ImageVector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final group(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/lang/String;FFFFFFFLjava/util/List;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;",
            "Ljava/lang/String;",
            "FFFFFFF",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "clipPathData"

    .line 12
    .line 13
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "block"

    .line 17
    .line 18
    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p9}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addGroup(Ljava/lang/String;FFFFFFFLjava/util/List;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 22
    .line 23
    .line 24
    invoke-interface {p10, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->clearGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public static synthetic group$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/lang/String;FFFFFFFLjava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 13

    .line 1
    move-object v10, p0

    .line 2
    move-object/from16 v11, p10

    .line 3
    .line 4
    move/from16 v0, p11

    .line 5
    .line 6
    and-int/lit8 v1, v0, 0x1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, p1

    .line 14
    :goto_0
    and-int/lit8 v2, v0, 0x2

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    move v2, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v2, p2

    .line 22
    :goto_1
    and-int/lit8 v4, v0, 0x4

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    move v4, v3

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move/from16 v4, p3

    .line 29
    .line 30
    :goto_2
    and-int/lit8 v5, v0, 0x8

    .line 31
    .line 32
    if-eqz v5, :cond_3

    .line 33
    .line 34
    move v5, v3

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move/from16 v5, p4

    .line 37
    .line 38
    :goto_3
    and-int/lit8 v6, v0, 0x10

    .line 39
    .line 40
    const/high16 v7, 0x3f800000    # 1.0f

    .line 41
    .line 42
    if-eqz v6, :cond_4

    .line 43
    .line 44
    move v6, v7

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move/from16 v6, p5

    .line 47
    .line 48
    :goto_4
    and-int/lit8 v8, v0, 0x20

    .line 49
    .line 50
    if-eqz v8, :cond_5

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move/from16 v7, p6

    .line 54
    .line 55
    :goto_5
    and-int/lit8 v8, v0, 0x40

    .line 56
    .line 57
    if-eqz v8, :cond_6

    .line 58
    .line 59
    move v8, v3

    .line 60
    goto :goto_6

    .line 61
    :cond_6
    move/from16 v8, p7

    .line 62
    .line 63
    :goto_6
    and-int/lit16 v9, v0, 0x80

    .line 64
    .line 65
    if-eqz v9, :cond_7

    .line 66
    .line 67
    move v9, v3

    .line 68
    goto :goto_7

    .line 69
    :cond_7
    move/from16 v9, p8

    .line 70
    .line 71
    :goto_7
    and-int/lit16 v0, v0, 0x100

    .line 72
    .line 73
    if-eqz v0, :cond_8

    .line 74
    .line 75
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object v12, v0

    .line 80
    goto :goto_8

    .line 81
    :cond_8
    move-object/from16 v12, p9

    .line 82
    .line 83
    :goto_8
    const-string v0, "<this>"

    .line 84
    .line 85
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "name"

    .line 89
    .line 90
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v0, "clipPathData"

    .line 94
    .line 95
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "block"

    .line 99
    .line 100
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    move-object v0, p0

    .line 104
    move v3, v4

    .line 105
    move v4, v5

    .line 106
    move v5, v6

    .line 107
    move v6, v7

    .line 108
    move v7, v8

    .line 109
    move v8, v9

    .line 110
    move-object v9, v12

    .line 111
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addGroup(Ljava/lang/String;FFFFFFFLjava/util/List;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 112
    .line 113
    .line 114
    invoke-interface {v11, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->clearGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 118
    .line 119
    .line 120
    return-object v10
.end method

.method public static final path-R_LF-3I(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 18
    .param p0    # Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/graphics/Brush;",
            "F",
            "Landroidx/compose/ui/graphics/Brush;",
            "FFIIFI",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/vector/PathBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p11

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v4, p1

    .line 6
    .line 7
    move-object/from16 v5, p2

    .line 8
    .line 9
    move/from16 v6, p3

    .line 10
    .line 11
    move-object/from16 v7, p4

    .line 12
    .line 13
    move/from16 v8, p5

    .line 14
    .line 15
    move/from16 v9, p6

    .line 16
    .line 17
    move/from16 v10, p7

    .line 18
    .line 19
    move/from16 v11, p8

    .line 20
    .line 21
    move/from16 v12, p9

    .line 22
    .line 23
    move/from16 v3, p10

    .line 24
    .line 25
    const-string v2, "$this$path"

    .line 26
    .line 27
    move-object/from16 v13, p0

    .line 28
    .line 29
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v2, "name"

    .line 33
    .line 34
    move-object/from16 v13, p1

    .line 35
    .line 36
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "pathBuilder"

    .line 40
    .line 41
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/16 v16, 0x3800

    .line 57
    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    const/4 v13, 0x0

    .line 61
    const/4 v14, 0x0

    .line 62
    const/4 v15, 0x0

    .line 63
    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public static synthetic path-R_LF-3I$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 20

    .line 1
    move-object/from16 v0, p11

    .line 2
    .line 3
    move/from16 v1, p12

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    move-object v6, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object/from16 v6, p1

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v2, v1, 0x2

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    move-object v7, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object/from16 v7, p2

    .line 23
    .line 24
    :goto_1
    and-int/lit8 v2, v1, 0x4

    .line 25
    .line 26
    const/high16 v4, 0x3f800000    # 1.0f

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    move v8, v4

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move/from16 v8, p3

    .line 33
    .line 34
    :goto_2
    and-int/lit8 v2, v1, 0x8

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    move-object v9, v3

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    move-object/from16 v9, p4

    .line 41
    .line 42
    :goto_3
    and-int/lit8 v2, v1, 0x10

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    move v10, v4

    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move/from16 v10, p5

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v2, v1, 0x20

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    move v11, v2

    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move/from16 v11, p6

    .line 58
    .line 59
    :goto_5
    and-int/lit8 v2, v1, 0x40

    .line 60
    .line 61
    if-eqz v2, :cond_6

    .line 62
    .line 63
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineCap()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    move v12, v2

    .line 68
    goto :goto_6

    .line 69
    :cond_6
    move/from16 v12, p7

    .line 70
    .line 71
    :goto_6
    and-int/lit16 v2, v1, 0x80

    .line 72
    .line 73
    if-eqz v2, :cond_7

    .line 74
    .line 75
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineJoin()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    move v13, v2

    .line 80
    goto :goto_7

    .line 81
    :cond_7
    move/from16 v13, p8

    .line 82
    .line 83
    :goto_7
    and-int/lit16 v2, v1, 0x100

    .line 84
    .line 85
    if-eqz v2, :cond_8

    .line 86
    .line 87
    const/high16 v2, 0x40800000    # 4.0f

    .line 88
    .line 89
    move v14, v2

    .line 90
    goto :goto_8

    .line 91
    :cond_8
    move/from16 v14, p9

    .line 92
    .line 93
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 94
    .line 95
    if-eqz v1, :cond_9

    .line 96
    .line 97
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    move v5, v1

    .line 102
    goto :goto_9

    .line 103
    :cond_9
    move/from16 v5, p10

    .line 104
    .line 105
    :goto_9
    const-string v1, "$this$path"

    .line 106
    .line 107
    move-object/from16 v2, p0

    .line 108
    .line 109
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v1, "name"

    .line 113
    .line 114
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v1, "pathBuilder"

    .line 118
    .line 119
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const/16 v18, 0x3800

    .line 135
    .line 136
    const/16 v19, 0x0

    .line 137
    .line 138
    const/4 v15, 0x0

    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    const/16 v17, 0x0

    .line 142
    .line 143
    move-object/from16 v3, p0

    .line 144
    .line 145
    invoke-static/range {v3 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    return-object v0
.end method
