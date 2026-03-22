.class public final Landroidx/compose/ui/graphics/vector/GroupComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "Vector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/VNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private clipPath:Landroidx/compose/ui/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private clipPathData:Ljava/util/List;
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

.field private groupMatrix:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private invalidateListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isClipPathDirty:Z

.field private isMatrixDirty:Z

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parser:Landroidx/compose/ui/graphics/vector/PathParser;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pivotX:F

.field private pivotY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private translationX:F

.field private translationY:F


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
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    .line 24
    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iput v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleX:F

    .line 28
    .line 29
    iput v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleY:F

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 32
    .line 33
    return-void
.end method

.method private final getWillClipPath()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method

.method private final updateClipPath()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getWillClipPath()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->parser:Landroidx/compose/ui/graphics/vector/PathParser;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathParser;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathParser;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->parser:Landroidx/compose/ui/graphics/vector/PathParser;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser;->clear()V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPath:Landroidx/compose/ui/graphics/Path;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPath:Landroidx/compose/ui/graphics/Path;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 34
    .line 35
    .line 36
    :goto_1
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathParser;->addPathNodes(Ljava/util/List;)Landroidx/compose/ui/graphics/vector/PathParser;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser;->toPath(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method private final updateMatrix()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->groupMatrix:[F

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->groupMatrix:[F

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationX:F

    .line 18
    .line 19
    iget v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotX:F

    .line 20
    .line 21
    add-float/2addr v2, v1

    .line 22
    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationY:F

    .line 23
    .line 24
    iget v3, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotY:F

    .line 25
    .line 26
    add-float/2addr v3, v1

    .line 27
    const/4 v5, 0x4

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    move-object v1, v0

    .line 31
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->rotation:F

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Matrix;->rotateZ-impl([FF)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleX:F

    .line 40
    .line 41
    iget v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleY:F

    .line 42
    .line 43
    const/high16 v3, 0x3f800000    # 1.0f

    .line 44
    .line 45
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Matrix;->scale-impl([FFFF)V

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotX:F

    .line 49
    .line 50
    neg-float v2, v1

    .line 51
    iget v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotY:F

    .line 52
    .line 53
    neg-float v3, v1

    .line 54
    move-object v1, v0

    .line 55
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
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
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->updateMatrix()V

    .line 12
    .line 13
    .line 14
    iput-boolean v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->updateClipPath()V

    .line 21
    .line 22
    .line 23
    iput-boolean v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    .line 24
    .line 25
    :cond_1
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v5, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->groupMatrix:[F

    .line 45
    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    invoke-static {v5}, Landroidx/compose/ui/graphics/Matrix;->box-impl([F)Landroidx/compose/ui/graphics/Matrix;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Matrix;->unbox-impl()[F

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-interface {v4, v5}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->transform-58bKbWc([F)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v5, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPath:Landroidx/compose/ui/graphics/Path;

    .line 60
    .line 61
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getWillClipPath()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_3

    .line 66
    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    const/4 v6, 0x2

    .line 70
    const/4 v7, 0x0

    .line 71
    invoke-static {v4, v5, v1, v6, v7}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/drawscope/DrawTransform;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v4, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    :goto_0
    if-ge v1, v5, :cond_4

    .line 81
    .line 82
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Landroidx/compose/ui/graphics/vector/VNode;

    .line 87
    .line 88
    invoke-virtual {v6, p1}, Landroidx/compose/ui/graphics/vector/VNode;->draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final getClipPathData()Ljava/util/List;
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
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInvalidateListener$ui_release()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNumChildren()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getPivotX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotX:F

    .line 2
    .line 3
    return v0
.end method

.method public final getPivotY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotY:F

    .line 2
    .line 3
    return v0
.end method

.method public final getRotation()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->rotation:F

    .line 2
    .line 3
    return v0
.end method

.method public final getScaleX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleX:F

    .line 2
    .line 3
    return v0
.end method

.method public final getScaleY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleY:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTranslationX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationX:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTranslationY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationY:F

    .line 2
    .line 3
    return v0
.end method

.method public final insertAt(ILandroidx/compose/ui/graphics/vector/VNode;)V
    .locals 1
    .param p2    # Landroidx/compose/ui/graphics/vector/VNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getNumChildren()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->getInvalidateListener$ui_release()Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/VNode;->setInvalidateListener$ui_release(Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final move(III)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-le p1, p2, :cond_0

    .line 3
    .line 4
    :goto_0
    if-ge v0, p3, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/compose/ui/graphics/vector/VNode;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 p2, p2, 0x1

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/compose/ui/graphics/vector/VNode;

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 45
    .line 46
    add-int/lit8 v3, p2, -0x1

    .line 47
    .line 48
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final remove(II)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge p1, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/compose/ui/graphics/vector/VNode;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/VNode;->setInvalidateListener$ui_release(Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setClipPathData(Ljava/util/List;)V
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
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->clipPathData:Ljava/util/List;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isClipPathDirty:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setInvalidateListener$ui_release(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/compose/ui/graphics/vector/VNode;

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Landroidx/compose/ui/graphics/vector/VNode;->setInvalidateListener$ui_release(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
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
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setPivotX(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotX:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setPivotY(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->pivotY:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setRotation(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->rotation:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setScaleX(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleX:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setScaleY(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->scaleY:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setTranslationX(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationX:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->translationY:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->isMatrixDirty:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VNode;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6
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
    const-string v1, "VGroup: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->name:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->children:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroidx/compose/ui/graphics/vector/VNode;

    .line 30
    .line 31
    const-string v5, "\t"

    .line 32
    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, "\n"

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "sb.toString()"

    .line 56
    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method
