.class public Lrc/a;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc/a$c;
    }
.end annotation


# static fields
.field private static final k:Landroid/view/animation/Interpolator;

.field static final l:Landroid/view/animation/Interpolator;

.field private static final m:[I


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lrc/a$c;

.field private c:F

.field private d:Landroid/view/View;

.field private e:Landroid/view/animation/Animation;

.field f:F

.field private g:F

.field private h:F

.field i:Z

.field j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrc/a;->k:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lrc/a;->l:Landroid/view/animation/Interpolator;

    .line 14
    .line 15
    const/high16 v0, -0x1000000

    .line 16
    .line 17
    filled-new-array {v0}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lrc/a;->m:[I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

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
    iput-object v0, p0, Lrc/a;->a:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lrc/a$c;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lrc/a$c;-><init>(Lrc/a;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 17
    .line 18
    iput-object p1, p0, Lrc/a;->d:Landroid/view/View;

    .line 19
    .line 20
    sget-object p1, Lrc/a;->m:[I

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lrc/a;->e([I)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lrc/a;->m(I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lrc/a;->j()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private b(FII)I
    .locals 6

    .line 1
    shr-int/lit8 v0, p2, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shr-int/lit8 v1, p2, 0x10

    .line 6
    .line 7
    and-int/lit16 v1, v1, 0xff

    .line 8
    .line 9
    shr-int/lit8 v2, p2, 0x8

    .line 10
    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 12
    .line 13
    and-int/lit16 p2, p2, 0xff

    .line 14
    .line 15
    shr-int/lit8 v3, p3, 0x18

    .line 16
    .line 17
    and-int/lit16 v3, v3, 0xff

    .line 18
    .line 19
    shr-int/lit8 v4, p3, 0x10

    .line 20
    .line 21
    and-int/lit16 v4, v4, 0xff

    .line 22
    .line 23
    shr-int/lit8 v5, p3, 0x8

    .line 24
    .line 25
    and-int/lit16 v5, v5, 0xff

    .line 26
    .line 27
    and-int/lit16 p3, p3, 0xff

    .line 28
    .line 29
    sub-int/2addr v3, v0

    .line 30
    int-to-float v3, v3

    .line 31
    mul-float/2addr v3, p1

    .line 32
    float-to-int v3, v3

    .line 33
    add-int/2addr v0, v3

    .line 34
    shl-int/lit8 v0, v0, 0x18

    .line 35
    .line 36
    sub-int/2addr v4, v1

    .line 37
    int-to-float v3, v4

    .line 38
    mul-float/2addr v3, p1

    .line 39
    float-to-int v3, v3

    .line 40
    add-int/2addr v1, v3

    .line 41
    shl-int/lit8 v1, v1, 0x10

    .line 42
    .line 43
    or-int/2addr v0, v1

    .line 44
    sub-int/2addr v5, v2

    .line 45
    int-to-float v1, v5

    .line 46
    mul-float/2addr v1, p1

    .line 47
    float-to-int v1, v1

    .line 48
    add-int/2addr v2, v1

    .line 49
    shl-int/lit8 v1, v2, 0x8

    .line 50
    .line 51
    or-int/2addr v0, v1

    .line 52
    sub-int/2addr p3, p2

    .line 53
    int-to-float p3, p3

    .line 54
    mul-float/2addr p1, p3

    .line 55
    float-to-int p1, p1

    .line 56
    add-int/2addr p2, p1

    .line 57
    or-int p1, v0, p2

    .line 58
    .line 59
    return p1
.end method

.method private h(IIFFFF)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    mul-float/2addr p1, v0

    .line 13
    iput p1, p0, Lrc/a;->g:F

    .line 14
    .line 15
    int-to-float p1, p2

    .line 16
    mul-float/2addr p1, v0

    .line 17
    iput p1, p0, Lrc/a;->h:F

    .line 18
    .line 19
    iget-object p1, p0, Lrc/a;->b:Lrc/a$c;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2}, Lrc/a$c;->h(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lrc/a;->b:Lrc/a$c;

    .line 26
    .line 27
    iget-object p1, p1, Lrc/a$c;->b:Landroid/graphics/Paint;

    .line 28
    .line 29
    mul-float/2addr p4, v0

    .line 30
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lrc/a;->b:Lrc/a$c;

    .line 34
    .line 35
    iput p4, p1, Lrc/a$c;->g:F

    .line 36
    .line 37
    mul-float/2addr p3, v0

    .line 38
    float-to-double p2, p3

    .line 39
    iput-wide p2, p1, Lrc/a$c;->q:D

    .line 40
    .line 41
    mul-float/2addr p5, v0

    .line 42
    float-to-int p2, p5

    .line 43
    iput p2, p1, Lrc/a$c;->r:I

    .line 44
    .line 45
    mul-float/2addr p6, v0

    .line 46
    float-to-int p2, p6

    .line 47
    iput p2, p1, Lrc/a$c;->s:I

    .line 48
    .line 49
    iget p2, p0, Lrc/a;->g:F

    .line 50
    .line 51
    float-to-int p2, p2

    .line 52
    iget p3, p0, Lrc/a;->h:F

    .line 53
    .line 54
    float-to-int p3, p3

    .line 55
    invoke-virtual {p1, p2, p3}, Lrc/a$c;->i(II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 2
    .line 3
    new-instance v1, Lrc/a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lrc/a$a;-><init>(Lrc/a;Lrc/a$c;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lrc/a;->k:Landroid/view/animation/Interpolator;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lrc/a$b;

    .line 22
    .line 23
    invoke-direct {v2, p0, v0}, Lrc/a$b;-><init>(Lrc/a;Lrc/a$c;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lrc/a;->e:Landroid/view/animation/Animation;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method a(FLrc/a$c;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lrc/a;->l(FLrc/a$c;)V

    .line 2
    .line 3
    .line 4
    iget v0, p2, Lrc/a$c;->m:F

    .line 5
    .line 6
    const v1, 0x3f4ccccd    # 0.8f

    .line 7
    .line 8
    .line 9
    div-float/2addr v0, v1

    .line 10
    float-to-double v0, v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 16
    .line 17
    add-double/2addr v0, v2

    .line 18
    double-to-float v0, v0

    .line 19
    invoke-virtual {p0, p2}, Lrc/a;->c(Lrc/a$c;)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, p2, Lrc/a$c;->k:F

    .line 24
    .line 25
    iget v3, p2, Lrc/a$c;->l:F

    .line 26
    .line 27
    sub-float v1, v3, v1

    .line 28
    .line 29
    sub-float/2addr v1, v2

    .line 30
    mul-float/2addr v1, p1

    .line 31
    add-float/2addr v2, v1

    .line 32
    invoke-virtual {p0, v2, v3}, Lrc/a;->i(FF)V

    .line 33
    .line 34
    .line 35
    iget p2, p2, Lrc/a$c;->m:F

    .line 36
    .line 37
    sub-float/2addr v0, p2

    .line 38
    mul-float/2addr v0, p1

    .line 39
    add-float/2addr p2, v0

    .line 40
    invoke-virtual {p0, p2}, Lrc/a;->f(F)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method c(Lrc/a$c;)F
    .locals 6

    .line 1
    iget v0, p1, Lrc/a$c;->g:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iget-wide v4, p1, Lrc/a$c;->q:D

    .line 10
    .line 11
    mul-double/2addr v4, v2

    .line 12
    div-double/2addr v0, v4

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    double-to-float p1, v0

    .line 18
    return p1
.end method

.method public d(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 2
    .line 3
    iget v1, v0, Lrc/a$c;->p:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, Lrc/a$c;->p:F

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lrc/a;->c:F

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lrc/a;->b:Lrc/a$c;

    .line 23
    .line 24
    invoke-virtual {v2, p1, v0}, Lrc/a$c;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public varargs e([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 2
    .line 3
    iput-object p1, v0, Lrc/a$c;->i:[I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lrc/a$c;->h(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public f(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 2
    .line 3
    iput p1, v0, Lrc/a$c;->f:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lrc/a;->c:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lrc/a;->h:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lrc/a;->g:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public i(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 2
    .line 3
    iput p1, v0, Lrc/a$c;->d:F

    .line 4
    .line 5
    iput p2, v0, Lrc/a$c;->e:F

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrc/a;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public k(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 2
    .line 3
    iget-boolean v1, v0, Lrc/a$c;->n:Z

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, v0, Lrc/a$c;->n:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method l(FLrc/a$c;)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f400000    # 0.75f

    .line 2
    .line 3
    cmpl-float v1, p1, v0

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    sub-float/2addr p1, v0

    .line 8
    const/high16 v0, 0x3e800000    # 0.25f

    .line 9
    .line 10
    div-float/2addr p1, v0

    .line 11
    invoke-virtual {p2}, Lrc/a$c;->e()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2}, Lrc/a$c;->c()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {p0, p1, v0, v1}, Lrc/a;->b(FII)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p2, Lrc/a$c;->t:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 14

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/high16 v5, 0x41400000    # 12.0f

    .line 4
    .line 5
    const/high16 v6, 0x40c00000    # 6.0f

    .line 6
    .line 7
    const/16 v1, 0x38

    .line 8
    .line 9
    const/16 v2, 0x38

    .line 10
    .line 11
    const/high16 v3, 0x41480000    # 12.5f

    .line 12
    .line 13
    const/high16 v4, 0x40400000    # 3.0f

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v6}, Lrc/a;->h(IIFFFF)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/high16 v12, 0x41200000    # 10.0f

    .line 21
    .line 22
    const/high16 v13, 0x40a00000    # 5.0f

    .line 23
    .line 24
    const/16 v8, 0x28

    .line 25
    .line 26
    const/16 v9, 0x28

    .line 27
    .line 28
    const/high16 v10, 0x410c0000    # 8.75f

    .line 29
    .line 30
    const/high16 v11, 0x40200000    # 2.5f

    .line 31
    .line 32
    move-object v7, p0

    .line 33
    invoke-direct/range {v7 .. v13}, Lrc/a;->h(IIFFFF)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 2
    .line 3
    iget-object v0, v0, Lrc/a$c;->b:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public start()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lrc/a;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lrc/a;->e:Landroid/view/animation/Animation;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lrc/a$c;->j()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 16
    .line 17
    iget v1, v0, Lrc/a$c;->e:F

    .line 18
    .line 19
    iget v2, v0, Lrc/a$c;->d:F

    .line 20
    .line 21
    cmpl-float v1, v1, v2

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iput-boolean v2, p0, Lrc/a;->i:Z

    .line 27
    .line 28
    iget-object v0, p0, Lrc/a;->e:Landroid/view/animation/Animation;

    .line 29
    .line 30
    const-wide/16 v3, 0x29a

    .line 31
    .line 32
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lrc/a;->d:Landroid/view/View;

    .line 36
    .line 37
    iget-object v1, p0, Lrc/a;->e:Landroid/view/animation/Animation;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lrc/a$c;->h(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 48
    .line 49
    invoke-virtual {v0}, Lrc/a$c;->g()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lrc/a;->e:Landroid/view/animation/Animation;

    .line 53
    .line 54
    const-wide/16 v3, 0x534

    .line 55
    .line 56
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lrc/a;->d:Landroid/view/View;

    .line 60
    .line 61
    iget-object v1, p0, Lrc/a;->e:Landroid/view/animation/Animation;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iput-boolean v2, p0, Lrc/a;->j:Z

    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrc/a;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lrc/a;->d:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lrc/a$c;->h(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lrc/a;->b:Lrc/a$c;

    .line 17
    .line 18
    invoke-virtual {v0}, Lrc/a$c;->g()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lrc/a;->k(Z)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lrc/a;->g(F)V

    .line 26
    .line 27
    .line 28
    iput-boolean v1, p0, Lrc/a;->j:Z

    .line 29
    .line 30
    :cond_0
    return-void
.end method
