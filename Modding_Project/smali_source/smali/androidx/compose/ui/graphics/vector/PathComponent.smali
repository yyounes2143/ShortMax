.class public final Landroidx/compose/ui/graphics/vector/PathComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "Vector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private fill:Landroidx/compose/ui/graphics/Brush;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fillAlpha:F

.field private isPathDirty:Z

.field private isStrokeDirty:Z

.field private isTrimPathDirty:Z

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parser:Landroidx/compose/ui/graphics/vector/PathParser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final path:Landroidx/compose/ui/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pathData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pathFillType:I

.field private final pathMeasure$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final renderPath:Landroidx/compose/ui/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private stroke:Landroidx/compose/ui/graphics/Brush;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private strokeAlpha:F

.field private strokeLineCap:I

.field private strokeLineJoin:I

.field private strokeLineMiter:F

.field private strokeLineWidth:F

.field private strokeStyle:Landroidx/compose/ui/graphics/drawscope/Stroke;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trimPathEnd:F

.field private trimPathOffset:F

.field private trimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->name:Ljava/lang/String;

    .line 8
    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fillAlpha:F

    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathData:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathFillType:I

    .line 24
    .line 25
    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeAlpha:F

    .line 26
    .line 27
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineCap()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineCap:I

    .line 32
    .line 33
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineJoin()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineJoin:I

    .line 38
    .line 39
    const/high16 v1, 0x40800000    # 4.0f

    .line 40
    .line 41
    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineMiter:F

    .line 42
    .line 43
    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 49
    .line 50
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 51
    .line 52
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    .line 57
    .line 58
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 63
    .line 64
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 65
    .line 66
    sget-object v1, Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathMeasure$delegate:Lms/i;

    .line 73
    .line 74
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathParser;

    .line 75
    .line 76
    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathParser;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->parser:Landroidx/compose/ui/graphics/vector/PathParser;

    .line 80
    .line 81
    return-void
.end method

.method private final getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathMeasure$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/graphics/PathMeasure;

    .line 8
    .line 9
    return-object v0
.end method

.method private final updatePath()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->parser:Landroidx/compose/ui/graphics/vector/PathParser;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->parser:Landroidx/compose/ui/graphics/vector/PathParser;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathData:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser;->addPathNodes(Ljava/util/List;)Landroidx/compose/ui/graphics/vector/PathParser;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser;->toPath(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->updateRenderPath()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final updateRenderPath()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    cmpg-float v0, v0, v1

    .line 10
    .line 11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    .line 16
    .line 17
    cmpg-float v0, v0, v2

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 22
    .line 23
    iget-object v4, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    .line 24
    .line 25
    const/4 v7, 0x2

    .line 26
    const/4 v8, 0x0

    .line 27
    const-wide/16 v5, 0x0

    .line 28
    .line 29
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/graphics/Path;->addPath-Uv8p0NA$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;JILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/graphics/PathMeasure;->setPath(Landroidx/compose/ui/graphics/Path;Z)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    .line 52
    .line 53
    iget v4, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathOffset:F

    .line 54
    .line 55
    add-float/2addr v3, v4

    .line 56
    rem-float/2addr v3, v2

    .line 57
    mul-float/2addr v3, v0

    .line 58
    iget v5, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    .line 59
    .line 60
    add-float/2addr v5, v4

    .line 61
    rem-float/2addr v5, v2

    .line 62
    mul-float/2addr v5, v0

    .line 63
    cmpl-float v2, v3, v5

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    if-lez v2, :cond_1

    .line 67
    .line 68
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v6, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 73
    .line 74
    invoke-interface {v2, v3, v0, v6, v4}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 82
    .line 83
    invoke-interface {v0, v1, v5, v2, v4}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 92
    .line 93
    invoke-interface {v0, v3, v5, v1, v4}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 20
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    move-object/from16 v11, p1

    .line 6
    .line 7
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->updatePath()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->updateRenderPath()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    .line 27
    .line 28
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 29
    .line 30
    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 35
    .line 36
    iget v5, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->fillAlpha:F

    .line 37
    .line 38
    const/16 v9, 0x38

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    move-object/from16 v2, p1

    .line 45
    .line 46
    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 50
    .line 51
    if-eqz v4, :cond_5

    .line 52
    .line 53
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeStyle:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 54
    .line 55
    iget-boolean v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 56
    .line 57
    if-nez v3, :cond_4

    .line 58
    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    :goto_1
    move-object v6, v2

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    :goto_2
    new-instance v2, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 65
    .line 66
    iget v13, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineWidth:F

    .line 67
    .line 68
    iget v14, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineMiter:F

    .line 69
    .line 70
    iget v15, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineCap:I

    .line 71
    .line 72
    iget v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineJoin:I

    .line 73
    .line 74
    const/16 v18, 0x10

    .line 75
    .line 76
    const/16 v19, 0x0

    .line 77
    .line 78
    const/16 v17, 0x0

    .line 79
    .line 80
    move-object v12, v2

    .line 81
    move/from16 v16, v3

    .line 82
    .line 83
    invoke-direct/range {v12 .. v19}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    .line 85
    .line 86
    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeStyle:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 87
    .line 88
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :goto_3
    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 92
    .line 93
    iget v5, v0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeAlpha:F

    .line 94
    .line 95
    const/16 v9, 0x30

    .line 96
    .line 97
    const/4 v10, 0x0

    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v8, 0x0

    .line 100
    move-object/from16 v2, p1

    .line 101
    .line 102
    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    return-void
.end method

.method public final getFill()Landroidx/compose/ui/graphics/Brush;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFillAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fillAlpha:F

    .line 2
    .line 3
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPathData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathData:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPathFillType-Rg-k1Os()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathFillType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStroke()Landroidx/compose/ui/graphics/Brush;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStrokeAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeAlpha:F

    .line 2
    .line 3
    return v0
.end method

.method public final getStrokeLineCap-KaPHkGw()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineCap:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStrokeLineJoin-LxFBmk8()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineJoin:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStrokeLineMiter()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineMiter:F

    .line 2
    .line 3
    return v0
.end method

.method public final getStrokeLineWidth()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTrimPathEnd()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTrimPathOffset()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTrimPathStart()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    .line 2
    .line 3
    return v0
.end method

.method public final setFill(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setFillAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->fillAlpha:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setPathData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathData:Ljava/util/List;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isPathDirty:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setPathFillType-oQ8Xj4U(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->pathFillType:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->renderPath:Landroidx/compose/ui/graphics/Path;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Path;->setFillType-oQ8Xj4U(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setStroke(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setStrokeAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeAlpha:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setStrokeLineCap-BeK7IIE(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineCap:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setStrokeLineJoin-Ww9F2mQ(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineJoin:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setStrokeLineMiter(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineMiter:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isStrokeDirty:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setStrokeLineWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->strokeLineWidth:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTrimPathEnd(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathEnd:F

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final setTrimPathOffset(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathOffset:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathOffset:F

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final setTrimPathStart(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->trimPathStart:F

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->isTrimPathDirty:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->path:Landroidx/compose/ui/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
