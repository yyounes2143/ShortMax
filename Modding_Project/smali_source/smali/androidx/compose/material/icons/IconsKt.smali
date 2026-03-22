.class public final Landroidx/compose/material/icons/IconsKt;
.super Ljava/lang/Object;
.source "Icons.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final MaterialIconDimension:F = 24.0f


# direct methods
.method public static synthetic getMaterialIconDimension$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final materialIcon(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;",
            ">;)",
            "Landroidx/compose/ui/graphics/vector/ImageVector;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 12
    .line 13
    const/high16 v1, 0x41c00000    # 24.0f

    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v10, 0x60

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    const/high16 v5, 0x41c00000    # 24.0f

    .line 27
    .line 28
    const/high16 v6, 0x41c00000    # 24.0f

    .line 29
    .line 30
    const-wide/16 v7, 0x0

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    move-object v1, v0

    .line 34
    move-object v2, p0

    .line 35
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static final materialPath-YwgOQQI(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;FFILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 18
    .param p0    # Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;",
            "FFI",
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
    move-object/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v6, p1

    .line 6
    .line 7
    move/from16 v8, p2

    .line 8
    .line 9
    move/from16 v3, p3

    .line 10
    .line 11
    const-string v2, "$this$materialPath"

    .line 12
    .line 13
    move-object/from16 v4, p0

    .line 14
    .line 15
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "pathBuilder"

    .line 19
    .line 20
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 24
    .line 25
    move-object v5, v2

    .line 26
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 29
    .line 30
    .line 31
    move-result-wide v9

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct {v2, v9, v10, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/16 v16, 0x3800

    .line 61
    .line 62
    const/16 v17, 0x0

    .line 63
    .line 64
    const-string v4, ""

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    const/high16 v9, 0x3f800000    # 1.0f

    .line 68
    .line 69
    const/high16 v12, 0x3f800000    # 1.0f

    .line 70
    .line 71
    const/4 v13, 0x0

    .line 72
    const/4 v14, 0x0

    .line 73
    const/4 v15, 0x0

    .line 74
    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public static synthetic materialPath-YwgOQQI$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;FFILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 20

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    and-int/lit8 v1, p5, 0x1

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move v8, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move/from16 v8, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, p5, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move v10, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move/from16 v10, p2

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, p5, 0x4

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    move v5, v1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move/from16 v5, p3

    .line 32
    .line 33
    :goto_2
    const-string v1, "$this$materialPath"

    .line 34
    .line 35
    move-object/from16 v2, p0

    .line 36
    .line 37
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "pathBuilder"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    .line 46
    .line 47
    move-object v7, v1

    .line 48
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-direct {v1, v3, v4, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/16 v18, 0x3800

    .line 83
    .line 84
    const/16 v19, 0x0

    .line 85
    .line 86
    const-string v6, ""

    .line 87
    .line 88
    const/4 v9, 0x0

    .line 89
    const/high16 v11, 0x3f800000    # 1.0f

    .line 90
    .line 91
    const/high16 v14, 0x3f800000    # 1.0f

    .line 92
    .line 93
    const/4 v15, 0x0

    .line 94
    const/16 v16, 0x0

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    move-object/from16 v3, p0

    .line 99
    .line 100
    invoke-static/range {v3 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0
.end method
