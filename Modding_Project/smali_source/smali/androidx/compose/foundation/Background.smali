.class final Landroidx/compose/foundation/Background;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "Background.kt"

# interfaces
.implements Landroidx/compose/ui/draw/DrawModifier;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final alpha:F

.field private final brush:Landroidx/compose/ui/graphics/Brush;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final color:Landroidx/compose/ui/graphics/Color;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastOutline:Landroidx/compose/ui/graphics/Outline;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastSize:Landroidx/compose/ui/geometry/Size;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shape:Landroidx/compose/ui/graphics/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Color;",
            "Landroidx/compose/ui/graphics/Brush;",
            "F",
            "Landroidx/compose/ui/graphics/Shape;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p5}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 5
    iput-object p2, p0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 6
    iput p3, p0, Landroidx/compose/foundation/Background;->alpha:F

    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_2
    move v4, p3

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/Background;-><init>(Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/Background;-><init>(Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final drawOutline(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/Background;->lastSize:Landroidx/compose/ui/geometry/Size;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/geometry/Size;->equals-impl(JLjava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/compose/foundation/Background;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/foundation/Background;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v0, v1, v2, v3, p1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    const/16 v9, 0x3c

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    move-object v1, p1

    .line 62
    move-object v2, v0

    .line 63
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    iget v4, p0, Landroidx/compose/foundation/Background;->alpha:F

    .line 71
    .line 72
    const/16 v8, 0x38

    .line 73
    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v7, 0x0

    .line 78
    move-object v1, p1

    .line 79
    move-object v2, v0

    .line 80
    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-hn5TExg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/Background;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    .line 84
    .line 85
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Landroidx/compose/foundation/Background;->lastSize:Landroidx/compose/ui/geometry/Size;

    .line 94
    .line 95
    return-void
.end method

.method private final drawRect(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    const/16 v13, 0x7e

    .line 12
    .line 13
    const/4 v14, 0x0

    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    const-wide/16 v7, 0x0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x0

    .line 22
    move-object/from16 v2, p1

    .line 23
    .line 24
    invoke-static/range {v2 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget v2, v0, Landroidx/compose/foundation/Background;->alpha:F

    .line 32
    .line 33
    const/16 v25, 0x76

    .line 34
    .line 35
    const/16 v26, 0x0

    .line 36
    .line 37
    const-wide/16 v17, 0x0

    .line 38
    .line 39
    const-wide/16 v19, 0x0

    .line 40
    .line 41
    const/16 v22, 0x0

    .line 42
    .line 43
    const/16 v23, 0x0

    .line 44
    .line 45
    const/16 v24, 0x0

    .line 46
    .line 47
    move-object/from16 v15, p1

    .line 48
    .line 49
    move-object/from16 v16, v1

    .line 50
    .line 51
    move/from16 v21, v2

    .line 52
    .line 53
    invoke-static/range {v15 .. v26}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-AsUm42w$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroidx/compose/foundation/Background;->drawRect(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/Background;->drawOutline(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/Background;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/foundation/Background;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    return v0

    .line 13
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 14
    .line 15
    iget-object v2, p1, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 24
    .line 25
    iget-object v2, p1, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget v1, p0, Landroidx/compose/foundation/Background;->alpha:F

    .line 34
    .line 35
    iget v2, p1, Landroidx/compose/foundation/Background;->alpha:F

    .line 36
    .line 37
    cmpg-float v1, v1, v2

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 42
    .line 43
    iget-object p1, p1, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 44
    .line 45
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :cond_1
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget v1, p0, Landroidx/compose/foundation/Background;->alpha:F

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Background(color="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/Background;->color:Landroidx/compose/ui/graphics/Color;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", brush="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/foundation/Background;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", alpha = "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Landroidx/compose/foundation/Background;->alpha:F

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", shape="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/compose/foundation/Background;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x29

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
