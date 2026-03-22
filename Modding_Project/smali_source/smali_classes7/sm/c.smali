.class public Lsm/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsm/c$d;
    }
.end annotation


# static fields
.field private static final g:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final h:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final i:[I


# instance fields
.field private final a:Landroid/content/res/Resources;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final b:Lsm/c$d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:F

.field private d:Landroid/animation/Animator;

.field private e:F

.field private f:Z


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
    sput-object v0, Lsm/c;->g:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    new-instance v0, Lsm/c$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lsm/c$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lsm/c;->h:Landroid/view/animation/Interpolator;

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
    sput-object v0, Lsm/c;->i:[I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lsm/c;->a:Landroid/content/res/Resources;

    .line 9
    .line 10
    new-instance p1, Lsm/c$d;

    .line 11
    .line 12
    invoke-direct {p1}, Lsm/c$d;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lsm/c;->b:Lsm/c$d;

    .line 16
    .line 17
    sget-object v0, Lsm/c;->i:[I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lsm/c$d;->g([I)V

    .line 20
    .line 21
    .line 22
    const/high16 p1, 0x40200000    # 2.5f

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lsm/c;->q(F)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lsm/c;->d()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method static synthetic a(Lsm/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lsm/c;->e:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lsm/c;F)F
    .locals 0

    .line 1
    iput p1, p0, Lsm/c;->e:F

    .line 2
    .line 3
    return p1
.end method

.method private c(FII)I
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

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lsm/c$b;

    .line 14
    .line 15
    invoke-direct {v2, p0, v0}, Lsm/c$b;-><init>(Lsm/c;Lsm/c$d;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Lsm/c;->g:Landroid/view/animation/Interpolator;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lsm/c$c;

    .line 35
    .line 36
    invoke-direct {v2, p0, v0}, Lsm/c$c;-><init>(Lsm/c;Lsm/c$d;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lsm/c;->d:Landroid/animation/Animator;

    .line 43
    .line 44
    return-void

    .line 45
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private e(F)V
    .locals 0

    .line 1
    iput p1, p0, Lsm/c;->c:F

    .line 2
    .line 3
    return-void
.end method

.method private f(FLsm/c$d;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lsm/c;->k(FLsm/c$d;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lsm/c$d;->t()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x3f4ccccd    # 0.8f

    .line 9
    .line 10
    .line 11
    div-float/2addr v0, v1

    .line 12
    float-to-double v0, v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 18
    .line 19
    add-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    invoke-virtual {p2}, Lsm/c$d;->u()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p2}, Lsm/c$d;->s()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const v3, 0x3c23d70a    # 0.01f

    .line 30
    .line 31
    .line 32
    sub-float/2addr v2, v3

    .line 33
    invoke-virtual {p2}, Lsm/c$d;->u()F

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sub-float/2addr v2, v3

    .line 38
    mul-float/2addr v2, p1

    .line 39
    add-float/2addr v1, v2

    .line 40
    invoke-virtual {p2, v1}, Lsm/c$d;->m(F)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lsm/c$d;->s()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p2, v1}, Lsm/c$d;->h(F)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lsm/c$d;->t()F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p2}, Lsm/c$d;->t()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    sub-float/2addr v0, v2

    .line 59
    mul-float/2addr v0, p1

    .line 60
    add-float/2addr v1, v0

    .line 61
    invoke-virtual {p2, v1}, Lsm/c$d;->j(F)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private g(FLsm/c$d;Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lsm/c;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lsm/c;->f(FLsm/c$d;)V

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    cmpl-float v1, p1, v0

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    if-eqz p3, :cond_3

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p2}, Lsm/c$d;->t()F

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    const/high16 v1, 0x3f000000    # 0.5f

    .line 22
    .line 23
    cmpg-float v2, p1, v1

    .line 24
    .line 25
    const v3, 0x3c23d70a    # 0.01f

    .line 26
    .line 27
    .line 28
    const v4, 0x3f4a3d71    # 0.79f

    .line 29
    .line 30
    .line 31
    if-gez v2, :cond_2

    .line 32
    .line 33
    div-float v0, p1, v1

    .line 34
    .line 35
    invoke-virtual {p2}, Lsm/c$d;->u()F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sget-object v2, Lsm/c;->h:Landroid/view/animation/Interpolator;

    .line 40
    .line 41
    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    mul-float/2addr v0, v4

    .line 46
    add-float/2addr v0, v1

    .line 47
    add-float/2addr v0, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sub-float v2, p1, v1

    .line 50
    .line 51
    div-float/2addr v2, v1

    .line 52
    invoke-virtual {p2}, Lsm/c$d;->u()F

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-float/2addr v1, v4

    .line 57
    sget-object v5, Lsm/c;->h:Landroid/view/animation/Interpolator;

    .line 58
    .line 59
    invoke-interface {v5, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    sub-float/2addr v0, v2

    .line 64
    mul-float/2addr v0, v4

    .line 65
    add-float/2addr v0, v3

    .line 66
    sub-float v0, v1, v0

    .line 67
    .line 68
    move v6, v1

    .line 69
    move v1, v0

    .line 70
    move v0, v6

    .line 71
    :goto_0
    const v2, 0x3e570a3c    # 0.20999998f

    .line 72
    .line 73
    .line 74
    mul-float/2addr v2, p1

    .line 75
    add-float/2addr p3, v2

    .line 76
    iget v2, p0, Lsm/c;->e:F

    .line 77
    .line 78
    add-float/2addr p1, v2

    .line 79
    const/high16 v2, 0x43580000    # 216.0f

    .line 80
    .line 81
    mul-float/2addr p1, v2

    .line 82
    invoke-virtual {p2, v1}, Lsm/c$d;->m(F)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v0}, Lsm/c$d;->h(F)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p3}, Lsm/c$d;->j(F)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Lsm/c;->e(F)V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic h(Lsm/c;FLsm/c$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsm/c;->k(FLsm/c$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lsm/c;FLsm/c$d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lsm/c;->g(FLsm/c$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lsm/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsm/c;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method private k(FLsm/c$d;)V
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
    invoke-virtual {p2}, Lsm/c$d;->r()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2}, Lsm/c$d;->l()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {p0, p1, v0, v1}, Lsm/c;->c(FII)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p2, p1}, Lsm/c$d;->k(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p2}, Lsm/c$d;->r()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p2, p1}, Lsm/c$d;->k(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method static synthetic l(Lsm/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsm/c;->f:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
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
    iget v1, p0, Lsm/c;->c:F

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lsm/c;->b:Lsm/c$d;

    .line 22
    .line 23
    invoke-virtual {v1, p1, v0}, Lsm/c$d;->d(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsm/c$d;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/c;->d:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 2
    .line 3
    iget v0, v0, Lsm/c$d;->i:F

    .line 4
    .line 5
    return v0
.end method

.method public n(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lsm/c$d;->b(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public varargs o([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lsm/c$d;->g([I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lsm/c;->b:Lsm/c$d;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lsm/c$d;->n(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public p(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lsm/c$d;->f(Landroid/graphics/Paint$Cap;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public q(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lsm/c$d;->p(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lsm/c$d;->c(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lsm/c$d;->e(Landroid/graphics/ColorFilter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsm/c;->d:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lsm/c$d;->x()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lsm/c$d;->i()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lsm/c;->b:Lsm/c$d;

    .line 18
    .line 19
    invoke-virtual {v1}, Lsm/c$d;->q()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    cmpl-float v0, v0, v1

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lsm/c;->f:Z

    .line 29
    .line 30
    iget-object v0, p0, Lsm/c;->d:Landroid/animation/Animator;

    .line 31
    .line 32
    const-wide/16 v1, 0x29a

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lsm/c;->d:Landroid/animation/Animator;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lsm/c$d;->n(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 50
    .line 51
    invoke-virtual {v0}, Lsm/c$d;->w()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lsm/c;->d:Landroid/animation/Animator;

    .line 55
    .line 56
    const-wide/16 v1, 0x534

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lsm/c;->d:Landroid/animation/Animator;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsm/c;->d:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lsm/c;->e(F)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lsm/c$d;->n(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lsm/c;->b:Lsm/c$d;

    .line 17
    .line 18
    invoke-virtual {v0}, Lsm/c$d;->w()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
