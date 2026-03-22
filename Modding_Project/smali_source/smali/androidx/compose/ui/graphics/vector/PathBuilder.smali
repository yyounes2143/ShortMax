.class public final Landroidx/compose/ui/graphics/vector/PathBuilder;
.super Ljava/lang/Object;
.source "PathBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathBuilder;->nodes:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method private final addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathBuilder;->nodes:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final arcTo(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    move v6, p6

    .line 10
    move/from16 v7, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-direct {p0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    return-object v1
.end method

.method public final arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    move v6, p6

    .line 10
    move/from16 v7, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-direct {p0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    return-object v1
.end method

.method public final close()Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    move v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    move v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final getNodes()Ljava/util/List;
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
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathBuilder;->nodes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final quadTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final quadToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final reflectiveQuadTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final reflectiveQuadToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->addNode(Landroidx/compose/ui/graphics/vector/PathNode;)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
