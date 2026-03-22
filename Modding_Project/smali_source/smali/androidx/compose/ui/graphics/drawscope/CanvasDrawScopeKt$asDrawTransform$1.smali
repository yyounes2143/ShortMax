.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;
.super Ljava/lang/Object;
.source "CanvasDrawScope.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;->asDrawTransform(Landroidx/compose/ui/graphics/drawscope/DrawContext;)Landroidx/compose/ui/graphics/drawscope/DrawTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/drawscope/DrawContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public clipRect-N_I0leg(FFFFI)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public getCenter-F1C5BW0()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->getSize-NH-jbRc()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getSize-NH-jbRc()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public inset(FFFF)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->getSize-NH-jbRc()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-float/2addr p3, p1

    .line 18
    sub-float/2addr v2, p3

    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->getSize-NH-jbRc()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    add-float/2addr p4, p2

    .line 28
    sub-float/2addr p3, p4

    .line 29
    invoke-static {v2, p3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 30
    .line 31
    .line 32
    move-result-wide p3

    .line 33
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    cmpl-float v2, v2, v3

    .line 39
    .line 40
    if-ltz v2, :cond_0

    .line 41
    .line 42
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    cmpl-float v2, v2, v3

    .line 47
    .line 48
    if-ltz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v1, p3, p4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string p2, "Width and height must be greater than or equal to zero"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public rotate-Uv8p0NA(FJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Canvas;->rotate(F)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    neg-float p1, p1

    .line 26
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    neg-float p2, p2

    .line 31
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public scale-0AR0LA0(FFJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->scale(FF)V

    .line 19
    .line 20
    .line 21
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    neg-float p1, p1

    .line 26
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    neg-float p2, p2

    .line 31
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public transform-58bKbWc([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "matrix"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Canvas;->concat-58bKbWc([F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public translate(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
