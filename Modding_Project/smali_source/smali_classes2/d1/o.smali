.class public Ld1/o;
.super Ljava/lang/Object;
.source "Transform3D.java"


# direct methods
.method public static a(Landroid/graphics/Matrix;FFFFF)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p3, v0

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    cmpl-float p2, p2, v0

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-static {p0, p5}, Ld1/o;->d(Landroid/graphics/Matrix;F)V

    .line 14
    .line 15
    .line 16
    :cond_1
    cmpl-float p1, p1, v0

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-static {p0, p4}, Ld1/o;->c(Landroid/graphics/Matrix;F)V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method

.method public static b(Landroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/PointF;FFFFFFF)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 8
    .line 9
    cmpl-float v2, v1, v0

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget v2, p2, Landroid/graphics/PointF;->y:F

    .line 14
    .line 15
    cmpl-float v2, v2, v0

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    :cond_0
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 20
    .line 21
    invoke-virtual {p0, v1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    cmpl-float p2, p7, v0

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p7}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 29
    .line 30
    .line 31
    :cond_2
    cmpl-float p2, p6, v0

    .line 32
    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    invoke-static {p0, p9}, Ld1/o;->d(Landroid/graphics/Matrix;F)V

    .line 36
    .line 37
    .line 38
    :cond_3
    cmpl-float p2, p5, v0

    .line 39
    .line 40
    if-eqz p2, :cond_4

    .line 41
    .line 42
    invoke-static {p0, p8}, Ld1/o;->c(Landroid/graphics/Matrix;F)V

    .line 43
    .line 44
    .line 45
    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 46
    .line 47
    cmpl-float p5, p3, p2

    .line 48
    .line 49
    if-nez p5, :cond_5

    .line 50
    .line 51
    cmpl-float p2, p4, p2

    .line 52
    .line 53
    if-eqz p2, :cond_6

    .line 54
    .line 55
    :cond_5
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 56
    .line 57
    .line 58
    :cond_6
    if-eqz p1, :cond_8

    .line 59
    .line 60
    iget p2, p1, Landroid/graphics/PointF;->x:F

    .line 61
    .line 62
    cmpl-float p3, p2, v0

    .line 63
    .line 64
    if-nez p3, :cond_7

    .line 65
    .line 66
    iget p3, p1, Landroid/graphics/PointF;->y:F

    .line 67
    .line 68
    cmpl-float p3, p3, v0

    .line 69
    .line 70
    if-eqz p3, :cond_8

    .line 71
    .line 72
    :cond_7
    neg-float p2, p2

    .line 73
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 74
    .line 75
    neg-float p1, p1

    .line 76
    invoke-virtual {p0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 77
    .line 78
    .line 79
    :cond_8
    return-void
.end method

.method private static c(Landroid/graphics/Matrix;F)V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static d(Landroid/graphics/Matrix;F)V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
