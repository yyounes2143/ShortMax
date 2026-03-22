.class public final Lcom/inmobi/media/Y0;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:Z

.field public e:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x42b40000    # 90.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/inmobi/media/Y0;->a:F

    .line 7
    .line 8
    iput p1, p0, Lcom/inmobi/media/Y0;->b:F

    .line 9
    .line 10
    iput p2, p0, Lcom/inmobi/media/Y0;->c:F

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/inmobi/media/Y0;->d:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    .line 1
    const-string v0, "t"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/inmobi/media/Y0;->a:F

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    sub-float/2addr v0, v1

    .line 10
    mul-float/2addr v0, p1

    .line 11
    add-float/2addr v0, v1

    .line 12
    iget v2, p0, Lcom/inmobi/media/Y0;->b:F

    .line 13
    .line 14
    iget v3, p0, Lcom/inmobi/media/Y0;->c:F

    .line 15
    .line 16
    iget-object v4, p0, Lcom/inmobi/media/Y0;->e:Landroid/graphics/Camera;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 25
    .line 26
    .line 27
    iget-boolean v5, p0, Lcom/inmobi/media/Y0;->d:Z

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    mul-float/2addr p1, v1

    .line 32
    invoke-virtual {v4, v1, v1, p1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 37
    .line 38
    sub-float/2addr v5, p1

    .line 39
    mul-float/2addr v5, v1

    .line 40
    invoke-virtual {v4, v1, v1, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v4, v0}, Landroid/graphics/Camera;->rotateX(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 50
    .line 51
    .line 52
    :cond_1
    neg-float p1, v2

    .line 53
    neg-float v0, v3

    .line 54
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final initialize(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Camera;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/Y0;->e:Landroid/graphics/Camera;

    .line 10
    .line 11
    return-void
.end method
