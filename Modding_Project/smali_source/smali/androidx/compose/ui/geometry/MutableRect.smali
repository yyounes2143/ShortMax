.class public final Landroidx/compose/ui/geometry/MutableRect;
.super Ljava/lang/Object;
.source "MutableRect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private bottom:F

.field private left:F

.field private right:F

.field private top:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final contains-k-4lQ0M(J)Z
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 6
    .line 7
    cmpl-float v0, v0, v1

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 16
    .line 17
    cmpg-float v0, v0, v1

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 26
    .line 27
    cmpl-float v0, v0, v1

    .line 28
    .line 29
    if-ltz v0, :cond_0

    .line 30
    .line 31
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget p2, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 36
    .line 37
    cmpg-float p1, p1, p2

    .line 38
    .line 39
    if-gez p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    return p1
.end method

.method public final getBottom()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 2
    .line 3
    return v0
.end method

.method public final getHeight()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    return v0
.end method

.method public final getLeft()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 2
    .line 3
    return v0
.end method

.method public final getRight()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 2
    .line 3
    return v0
.end method

.method public final getSize-NH-jbRc()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-float/2addr v1, v2

    .line 19
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    return-wide v0
.end method

.method public final getTop()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 2
    .line 3
    return v0
.end method

.method public final getWidth()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    return v0
.end method

.method public final intersect(FFFF)V
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 10
    .line 11
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 16
    .line 17
    iget p1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 18
    .line 19
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 24
    .line 25
    iget p1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 26
    .line 27
    invoke-static {p4, p1}, Ljava/lang/Math;->min(FF)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 32
    .line 33
    return-void
.end method

.method public final isEmpty()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-gez v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 12
    .line 13
    cmpl-float v0, v0, v1

    .line 14
    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public final set(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 8
    .line 9
    return-void
.end method

.method public final setBottom(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 2
    .line 3
    return-void
.end method

.method public final setLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 2
    .line 3
    return-void
.end method

.method public final setRight(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 2
    .line 3
    return-void
.end method

.method public final setTop(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
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
    const-string v1, "MutableRect("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->left:F

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v3, p0, Landroidx/compose/ui/geometry/MutableRect;->top:F

    .line 27
    .line 28
    invoke-static {v3, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v3, p0, Landroidx/compose/ui/geometry/MutableRect;->right:F

    .line 39
    .line 40
    invoke-static {v3, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v1, p0, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    .line 51
    .line 52
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->toStringAsFixed(FI)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x29

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method
