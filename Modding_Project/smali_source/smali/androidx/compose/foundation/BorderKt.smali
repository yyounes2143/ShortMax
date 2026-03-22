.class public final Landroidx/compose/foundation/BorderKt;
.super Ljava/lang/Object;
.source "Border.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic access$drawContentWithoutBorder(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/BorderKt;->drawContentWithoutBorder(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$drawGenericBorder(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/BorderKt;->drawGenericBorder(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$drawRectBorder-NsqcLGU(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/foundation/BorderKt;->drawRectBorder-NsqcLGU(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$drawRoundRectBorder-SYlcjDY(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/foundation/BorderKt;->drawRoundRectBorder-SYlcjDY(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$shrink-Kibmq7A(JF)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final border(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const-string v0, "border"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "shape"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/foundation/BorderStroke;->getWidth-D9Ej5fM()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Landroidx/compose/foundation/BorderStroke;->getBrush()Landroidx/compose/ui/graphics/Brush;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0, v0, p1, p2}, Landroidx/compose/foundation/BorderKt;->border-ziNgDLE(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static synthetic border$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/BorderKt;->border(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$border"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shape"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p2, p3, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1, v0, p4}, Landroidx/compose/foundation/BorderKt;->border-ziNgDLE(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static synthetic border-xT4_qwU$default(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/BorderKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final border-ziNgDLE(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$border"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "brush"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "shape"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/foundation/BorderKt$border-ziNgDLE$$inlined$debugInspectorInfo$1;

    .line 23
    .line 24
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/foundation/BorderKt$border-ziNgDLE$$inlined$debugInspectorInfo$1;-><init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    new-instance v1, Landroidx/compose/foundation/BorderKt$border$2;

    .line 33
    .line 34
    invoke-direct {v1, p1, p3, p2}, Landroidx/compose/foundation/BorderKt$border$2;-><init>(FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Brush;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;)Landroidx/compose/ui/Modifier;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private static final createInsetRoundedRect(FLandroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/RoundRect;
    .locals 15

    .line 1
    move v2, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    sub-float v3, v0, v2

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sub-float v4, v0, v2

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    .line 35
    .line 36
    .line 37
    move-result-wide v11

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    .line 43
    .line 44
    .line 45
    move-result-wide v9

    .line 46
    new-instance v14, Landroidx/compose/ui/geometry/RoundRect;

    .line 47
    .line 48
    const/4 v13, 0x0

    .line 49
    move-object v0, v14

    .line 50
    move v1, p0

    .line 51
    invoke-direct/range {v0 .. v13}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    return-object v14
.end method

.method private static final createRoundRectPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/Path;->addRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 5
    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-static {p2, p1}, Landroidx/compose/foundation/BorderKt;->createInsetRoundedRect(FLandroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/RoundRect;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p3, p1}, Landroidx/compose/ui/graphics/Path;->addRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getDifference-b3I0S0c()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {p0, p0, p3, p1}, Landroidx/compose/ui/graphics/Path;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object p0
.end method

.method private static final drawContentWithoutBorder(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;->INSTANCE:Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static final drawGenericBorder(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/ui/graphics/Outline$Generic;",
            "ZF)",
            "Landroidx/compose/ui/draw/DrawResult;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroidx/compose/foundation/BorderKt$drawGenericBorder$1;

    .line 8
    .line 9
    move-object/from16 v2, p3

    .line 10
    .line 11
    invoke-direct {v1, v2, v10}, Landroidx/compose/foundation/BorderKt$drawGenericBorder$1;-><init>(Landroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    move-object/from16 v2, p3

    .line 21
    .line 22
    instance-of v1, v10, Landroidx/compose/ui/graphics/SolidColor;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    sget-object v1, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getAlpha8-_sVssgQ()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sget-object v4, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    .line 34
    .line 35
    move-object v5, v10

    .line 36
    check-cast v5, Landroidx/compose/ui/graphics/SolidColor;

    .line 37
    .line 38
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/SolidColor;->getValue-0d7_KjU()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const/4 v8, 0x2

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->tint-xETnrds$default(Landroidx/compose/ui/graphics/ColorFilter$Companion;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/ColorFilter;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    move v13, v1

    .line 50
    move-object/from16 v18, v4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget-object v1, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    move v13, v1

    .line 60
    move-object/from16 v18, v3

    .line 61
    .line 62
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/BorderKt;->obtain(Landroidx/compose/ui/node/Ref;)Landroidx/compose/foundation/BorderCache;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroidx/compose/foundation/BorderCache;->obtainPath()Landroidx/compose/ui/graphics/Path;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-interface {v8}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v8, v9}, Landroidx/compose/ui/graphics/Path;->addRect(Landroidx/compose/ui/geometry/Rect;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    sget-object v5, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    .line 89
    .line 90
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getDifference-b3I0S0c()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-interface {v8, v8, v4, v5}, Landroidx/compose/ui/graphics/Path;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    .line 95
    .line 96
    .line 97
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 98
    .line 99
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    float-to-double v4, v4

    .line 107
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    double-to-float v4, v4

    .line 112
    float-to-int v4, v4

    .line 113
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    float-to-double v5, v5

    .line 118
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 119
    .line 120
    .line 121
    move-result-wide v5

    .line 122
    double-to-float v5, v5

    .line 123
    float-to-int v5, v5

    .line 124
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 125
    .line 126
    .line 127
    move-result-wide v19

    .line 128
    invoke-static {v1}, Landroidx/compose/foundation/BorderCache;->access$getImageBitmap$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v1}, Landroidx/compose/foundation/BorderCache;->access$getCanvas$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/Canvas;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    if-eqz v4, :cond_2

    .line 137
    .line 138
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getConfig-_sVssgQ()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    invoke-static {v6}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->box-impl(I)Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    goto :goto_1

    .line 147
    :cond_2
    move-object v6, v3

    .line 148
    :goto_1
    sget-object v11, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    .line 149
    .line 150
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    const/4 v12, 0x0

    .line 155
    if-nez v6, :cond_3

    .line 156
    .line 157
    move v6, v12

    .line 158
    goto :goto_2

    .line 159
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->unbox-impl()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    invoke-static {v6, v11}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    :goto_2
    const/4 v15, 0x1

    .line 168
    if-nez v6, :cond_5

    .line 169
    .line 170
    if-eqz v4, :cond_4

    .line 171
    .line 172
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getConfig-_sVssgQ()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-static {v3}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->box-impl(I)Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    :cond_4
    invoke-static {v13, v3}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl(ILjava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_6

    .line 185
    .line 186
    :cond_5
    move v12, v15

    .line 187
    :cond_6
    if-eqz v4, :cond_8

    .line 188
    .line 189
    if-eqz v5, :cond_8

    .line 190
    .line 191
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    .line 192
    .line 193
    .line 194
    move-result-wide v16

    .line 195
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    int-to-float v6, v6

    .line 204
    cmpl-float v3, v3, v6

    .line 205
    .line 206
    if-gtz v3, :cond_8

    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    .line 209
    .line 210
    .line 211
    move-result-wide v16

    .line 212
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    int-to-float v6, v6

    .line 221
    cmpl-float v3, v3, v6

    .line 222
    .line 223
    if-gtz v3, :cond_8

    .line 224
    .line 225
    if-nez v12, :cond_7

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_7
    move-object v11, v4

    .line 229
    move-object v12, v5

    .line 230
    move v6, v15

    .line 231
    goto :goto_4

    .line 232
    :cond_8
    :goto_3
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    const/16 v16, 0x18

    .line 241
    .line 242
    const/16 v17, 0x0

    .line 243
    .line 244
    const/4 v14, 0x0

    .line 245
    const/4 v3, 0x0

    .line 246
    move v6, v15

    .line 247
    move-object v15, v3

    .line 248
    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/graphics/ImageBitmapKt;->ImageBitmap-x__-hDU$default(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-static {v1, v4}, Landroidx/compose/foundation/BorderCache;->access$setImageBitmap$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 253
    .line 254
    .line 255
    invoke-static {v4}, Landroidx/compose/ui/graphics/CanvasKt;->Canvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-static {v1, v5}, Landroidx/compose/foundation/BorderCache;->access$setCanvas$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/Canvas;)V

    .line 260
    .line 261
    .line 262
    move-object v11, v4

    .line 263
    move-object v12, v5

    .line 264
    :goto_4
    invoke-static {v1}, Landroidx/compose/foundation/BorderCache;->access$getCanvasDrawScope$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    if-nez v3, :cond_9

    .line 269
    .line 270
    new-instance v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 271
    .line 272
    invoke-direct {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-static {v1, v3}, Landroidx/compose/foundation/BorderCache;->access$setCanvasDrawScope$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    .line 276
    .line 277
    .line 278
    :cond_9
    move-object v13, v3

    .line 279
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    .line 280
    .line 281
    .line 282
    move-result-wide v3

    .line 283
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    .line 296
    .line 297
    .line 298
    move-result-object v15

    .line 299
    move-object/from16 p1, v8

    .line 300
    .line 301
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    move-object/from16 p4, v7

    .line 306
    .line 307
    move-object/from16 v16, v8

    .line 308
    .line 309
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    .line 310
    .line 311
    .line 312
    move-result-wide v7

    .line 313
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-virtual {v5, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v3, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 327
    .line 328
    .line 329
    invoke-interface {v12}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 330
    .line 331
    .line 332
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 333
    .line 334
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 335
    .line 336
    .line 337
    move-result-wide v22

    .line 338
    sget-object v17, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 339
    .line 340
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    .line 341
    .line 342
    .line 343
    move-result v31

    .line 344
    const/16 v32, 0x3a

    .line 345
    .line 346
    const/16 v33, 0x0

    .line 347
    .line 348
    const-wide/16 v24, 0x0

    .line 349
    .line 350
    const/16 v28, 0x0

    .line 351
    .line 352
    const/16 v29, 0x0

    .line 353
    .line 354
    const/16 v30, 0x0

    .line 355
    .line 356
    move-object/from16 v21, v13

    .line 357
    .line 358
    move-wide/from16 v26, v3

    .line 359
    .line 360
    invoke-static/range {v21 .. v33}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    neg-float v5, v1

    .line 368
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    neg-float v4, v1

    .line 373
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-interface {v1, v5, v4}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 382
    .line 383
    .line 384
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    new-instance v29, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 389
    .line 390
    const/4 v1, 0x2

    .line 391
    int-to-float v1, v1

    .line 392
    mul-float v22, p5, v1

    .line 393
    .line 394
    const/16 v27, 0x1e

    .line 395
    .line 396
    const/16 v28, 0x0

    .line 397
    .line 398
    const/16 v23, 0x0

    .line 399
    .line 400
    const/16 v24, 0x0

    .line 401
    .line 402
    const/16 v25, 0x0

    .line 403
    .line 404
    const/16 v26, 0x0

    .line 405
    .line 406
    move-object/from16 v21, v29

    .line 407
    .line 408
    invoke-direct/range {v21 .. v28}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 409
    .line 410
    .line 411
    const/16 v21, 0x34

    .line 412
    .line 413
    const/16 v22, 0x0

    .line 414
    .line 415
    const/16 v24, 0x0

    .line 416
    .line 417
    move-object v1, v13

    .line 418
    move-object/from16 v3, p2

    .line 419
    .line 420
    move/from16 v34, v4

    .line 421
    .line 422
    move/from16 v4, v23

    .line 423
    .line 424
    move/from16 v35, v5

    .line 425
    .line 426
    move-object/from16 v5, v29

    .line 427
    .line 428
    move-object/from16 v6, v24

    .line 429
    .line 430
    move-wide/from16 v36, v7

    .line 431
    .line 432
    move-object/from16 v8, p4

    .line 433
    .line 434
    move/from16 v7, v25

    .line 435
    .line 436
    move-object/from16 v38, v8

    .line 437
    .line 438
    move-object/from16 v39, v16

    .line 439
    .line 440
    move-object/from16 v16, p1

    .line 441
    .line 442
    move/from16 v8, v21

    .line 443
    .line 444
    move-object/from16 v21, v9

    .line 445
    .line 446
    move-object/from16 v9, v22

    .line 447
    .line 448
    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 452
    .line 453
    .line 454
    move-result-wide v1

    .line 455
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    const/4 v2, 0x1

    .line 460
    int-to-float v2, v2

    .line 461
    add-float/2addr v1, v2

    .line 462
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 463
    .line 464
    .line 465
    move-result-wide v3

    .line 466
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    div-float/2addr v1, v3

    .line 471
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 472
    .line 473
    .line 474
    move-result-wide v3

    .line 475
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    add-float/2addr v3, v2

    .line 480
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 481
    .line 482
    .line 483
    move-result-wide v4

    .line 484
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    div-float/2addr v3, v2

    .line 489
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    .line 490
    .line 491
    .line 492
    move-result-wide v4

    .line 493
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 494
    .line 495
    .line 496
    move-result-object v9

    .line 497
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    .line 498
    .line 499
    .line 500
    move-result-wide v7

    .line 501
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 506
    .line 507
    .line 508
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-interface {v2, v1, v3, v4, v5}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->scale-0AR0LA0(FFJ)V

    .line 513
    .line 514
    .line 515
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    .line 516
    .line 517
    .line 518
    move-result v17

    .line 519
    const/16 v22, 0x1c

    .line 520
    .line 521
    const/16 v23, 0x0

    .line 522
    .line 523
    const/4 v4, 0x0

    .line 524
    const/4 v5, 0x0

    .line 525
    const/4 v6, 0x0

    .line 526
    move-object v1, v13

    .line 527
    move-object/from16 v2, v16

    .line 528
    .line 529
    move-object/from16 v3, p2

    .line 530
    .line 531
    move-wide/from16 v40, v7

    .line 532
    .line 533
    move/from16 v7, v17

    .line 534
    .line 535
    move/from16 v8, v22

    .line 536
    .line 537
    move-object v10, v9

    .line 538
    move-object/from16 v9, v23

    .line 539
    .line 540
    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 548
    .line 549
    .line 550
    move-wide/from16 v1, v40

    .line 551
    .line 552
    invoke-interface {v10, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 553
    .line 554
    .line 555
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    move/from16 v2, v35

    .line 564
    .line 565
    neg-float v2, v2

    .line 566
    move/from16 v3, v34

    .line 567
    .line 568
    neg-float v3, v3

    .line 569
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 570
    .line 571
    .line 572
    invoke-interface {v12}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-virtual {v1, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 583
    .line 584
    .line 585
    move-object/from16 v2, v39

    .line 586
    .line 587
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 588
    .line 589
    .line 590
    move-wide/from16 v2, v36

    .line 591
    .line 592
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 593
    .line 594
    .line 595
    invoke-interface {v11}, Landroidx/compose/ui/graphics/ImageBitmap;->prepareToDraw()V

    .line 596
    .line 597
    .line 598
    move-object/from16 v1, v38

    .line 599
    .line 600
    iput-object v11, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 601
    .line 602
    new-instance v2, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;

    .line 603
    .line 604
    move-object v4, v2

    .line 605
    move-object/from16 v5, v21

    .line 606
    .line 607
    move-object v6, v1

    .line 608
    move-wide/from16 v7, v19

    .line 609
    .line 610
    move-object/from16 v9, v18

    .line 611
    .line 612
    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;-><init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    :goto_5
    return-object v0
.end method

.method private static final drawRectBorder-NsqcLGU(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 16

    .line 1
    if-eqz p6, :cond_0

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    move-wide v4, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-wide/from16 v4, p2

    .line 12
    .line 13
    :goto_0
    if-eqz p6, :cond_1

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    move-wide v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide/from16 v6, p4

    .line 22
    .line 23
    :goto_1
    if-eqz p6, :cond_2

    .line 24
    .line 25
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 26
    .line 27
    move-object v8, v0

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 30
    .line 31
    const/16 v14, 0x1e

    .line 32
    .line 33
    const/4 v15, 0x0

    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v11, 0x0

    .line 36
    const/4 v12, 0x0

    .line 37
    const/4 v13, 0x0

    .line 38
    move-object v8, v0

    .line 39
    move/from16 v9, p7

    .line 40
    .line 41
    invoke-direct/range {v8 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    new-instance v0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;

    .line 45
    .line 46
    move-object v2, v0

    .line 47
    move-object/from16 v3, p1

    .line 48
    .line 49
    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;-><init>(Landroidx/compose/ui/graphics/Brush;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 50
    .line 51
    .line 52
    move-object/from16 v1, p0

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method private static final drawRoundRectBorder-SYlcjDY(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/ui/graphics/Outline$Rounded;",
            "JJZF)",
            "Landroidx/compose/ui/draw/DrawResult;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v9, p9

    .line 3
    .line 4
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    .line 19
    .line 20
    .line 21
    move-result-wide v10

    .line 22
    const/4 v1, 0x2

    .line 23
    int-to-float v1, v1

    .line 24
    div-float v12, v9, v1

    .line 25
    .line 26
    new-instance v13, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 27
    .line 28
    const/16 v7, 0x1e

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move-object v1, v13

    .line 36
    move/from16 v2, p9

    .line 37
    .line 38
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    new-instance v14, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;

    .line 42
    .line 43
    move-object v1, v14

    .line 44
    move/from16 v2, p8

    .line 45
    .line 46
    move-object/from16 v3, p2

    .line 47
    .line 48
    move-wide v4, v10

    .line 49
    move v6, v12

    .line 50
    move/from16 v7, p9

    .line 51
    .line 52
    move-wide/from16 v8, p4

    .line 53
    .line 54
    move-wide/from16 v10, p6

    .line 55
    .line 56
    move-object v12, v13

    .line 57
    invoke-direct/range {v1 .. v12}, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;-><init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v14}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/BorderKt;->obtain(Landroidx/compose/ui/node/Ref;)Landroidx/compose/foundation/BorderCache;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroidx/compose/foundation/BorderCache;->obtainPath()Landroidx/compose/ui/graphics/Path;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    move/from16 v3, p8

    .line 78
    .line 79
    invoke-static {v1, v2, v9, v3}, Landroidx/compose/foundation/BorderKt;->createRoundRectPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$2;

    .line 84
    .line 85
    move-object/from16 v3, p2

    .line 86
    .line 87
    invoke-direct {v2, v1, v3}, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$2;-><init>(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :goto_0
    return-object v0
.end method

.method private static final obtain(Landroidx/compose/ui/node/Ref;)Landroidx/compose/foundation/BorderCache;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;)",
            "Landroidx/compose/foundation/BorderCache;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/Ref;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/compose/foundation/BorderCache;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/foundation/BorderCache;

    .line 10
    .line 11
    const/16 v6, 0xf

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v1, v0

    .line 19
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/BorderCache;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/Ref;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object v0
.end method

.method private static final shrink-Kibmq7A(JF)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-float/2addr v0, p2

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sub-float/2addr p0, p2

    .line 16
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    return-wide p0
.end method
