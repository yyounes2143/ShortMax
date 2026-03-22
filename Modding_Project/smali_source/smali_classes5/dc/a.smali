.class public Ldc/a;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/a$d;
    }
.end annotation


# static fields
.field private static final m:Landroid/view/animation/Interpolator;

.field private static final n:Landroid/view/animation/Interpolator;


# instance fields
.field private final a:[I

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ldc/a$d;

.field private d:F

.field private e:Landroid/content/res/Resources;

.field private f:Landroid/view/View;

.field private g:Landroid/view/animation/Animation;

.field private h:F

.field private i:D

.field private j:D

.field k:Z

.field private final l:Landroid/graphics/drawable/Drawable$Callback;


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
    sput-object v0, Ldc/a;->m:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ldc/a;->n:Landroid/view/animation/Interpolator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x1000000

    .line 5
    .line 6
    filled-new-array {v0}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Ldc/a;->a:[I

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Ldc/a;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v1, Ldc/a$c;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Ldc/a$c;-><init>(Ldc/a;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Ldc/a;->l:Landroid/graphics/drawable/Drawable$Callback;

    .line 25
    .line 26
    iput-object p2, p0, Ldc/a;->f:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Ldc/a;->e:Landroid/content/res/Resources;

    .line 33
    .line 34
    new-instance p1, Ldc/a$d;

    .line 35
    .line 36
    invoke-direct {p1, v1}, Ldc/a$d;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Ldc/a;->c:Ldc/a$d;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ldc/a$d;->y([I)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Ldc/a;->s(I)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Ldc/a;->q()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method static synthetic a(Ldc/a;FLdc/a$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ldc/a;->g(FLdc/a$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Ldc/a;Ldc/a$d;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ldc/a;->i(Ldc/a$d;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Ldc/a;FLdc/a$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ldc/a;->r(FLdc/a$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Ldc/a;->n:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e(Ldc/a;)F
    .locals 0

    .line 1
    iget p0, p0, Ldc/a;->h:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Ldc/a;F)F
    .locals 0

    .line 1
    iput p1, p0, Ldc/a;->h:F

    .line 2
    .line 3
    return p1
.end method

.method private g(FLdc/a$d;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Ldc/a;->r(FLdc/a$d;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ldc/a$d;->k()F

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
    invoke-direct {p0, p2}, Ldc/a;->i(Ldc/a$d;)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p2}, Ldc/a$d;->l()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p2}, Ldc/a$d;->j()F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-float/2addr v3, v1

    .line 34
    invoke-virtual {p2}, Ldc/a$d;->l()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-float/2addr v3, v1

    .line 39
    mul-float/2addr v3, p1

    .line 40
    add-float/2addr v2, v3

    .line 41
    invoke-virtual {p2, v2}, Ldc/a$d;->D(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ldc/a$d;->j()F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p2, v1}, Ldc/a$d;->z(F)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ldc/a$d;->k()F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p2}, Ldc/a$d;->k()F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    sub-float/2addr v0, v2

    .line 60
    mul-float/2addr v0, p1

    .line 61
    add-float/2addr v1, v0

    .line 62
    invoke-virtual {p2, v1}, Ldc/a$d;->B(F)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private h(FII)I
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

.method private i(Ldc/a$d;)F
    .locals 6

    .line 1
    invoke-virtual {p1}, Ldc/a$d;->m()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ldc/a$d;->d()D

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    mul-double/2addr v4, v2

    .line 16
    div-double/2addr v0, v4

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    double-to-float p1, v0

    .line 22
    return p1
.end method

.method private o(DDDDFF)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 2
    .line 3
    iget-object v1, p0, Ldc/a;->e:Landroid/content/res/Resources;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    float-to-double v2, v1

    .line 12
    mul-double/2addr p1, v2

    .line 13
    iput-wide p1, p0, Ldc/a;->i:D

    .line 14
    .line 15
    mul-double/2addr p3, v2

    .line 16
    iput-wide p3, p0, Ldc/a;->j:D

    .line 17
    .line 18
    double-to-float p1, p7

    .line 19
    mul-float/2addr p1, v1

    .line 20
    invoke-virtual {v0, p1}, Ldc/a$d;->E(F)V

    .line 21
    .line 22
    .line 23
    mul-double/2addr p5, v2

    .line 24
    invoke-virtual {v0, p5, p6}, Ldc/a$d;->u(D)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {v0, p1}, Ldc/a$d;->x(I)V

    .line 29
    .line 30
    .line 31
    mul-float/2addr p9, v1

    .line 32
    mul-float/2addr p10, v1

    .line 33
    invoke-virtual {v0, p9, p10}, Ldc/a$d;->r(FF)V

    .line 34
    .line 35
    .line 36
    iget-wide p1, p0, Ldc/a;->i:D

    .line 37
    .line 38
    double-to-int p1, p1

    .line 39
    iget-wide p2, p0, Ldc/a;->j:D

    .line 40
    .line 41
    double-to-int p2, p2

    .line 42
    invoke-virtual {v0, p1, p2}, Ldc/a$d;->A(II)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 2
    .line 3
    new-instance v1, Ldc/a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Ldc/a$a;-><init>(Ldc/a;Ldc/a$d;)V

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
    sget-object v2, Ldc/a;->m:Landroid/view/animation/Interpolator;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ldc/a$b;

    .line 22
    .line 23
    invoke-direct {v2, p0, v0}, Ldc/a$b;-><init>(Ldc/a;Ldc/a$d;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Ldc/a;->g:Landroid/view/animation/Animation;

    .line 30
    .line 31
    return-void
.end method

.method private r(FLdc/a$d;)V
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
    invoke-virtual {p2}, Ldc/a$d;->i()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2}, Ldc/a$d;->f()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {p0, p1, v0, v1}, Ldc/a;->h(FII)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p2, p1}, Ldc/a$d;->v(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

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
    iget v2, p0, Ldc/a;->d:F

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
    iget-object v2, p0, Ldc/a;->c:Ldc/a$d;

    .line 23
    .line 24
    invoke-virtual {v2, p1, v0}, Ldc/a$d;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldc/a$d;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-wide v0, p0, Ldc/a;->j:D

    .line 2
    .line 3
    double-to-int v0, v0

    .line 4
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-wide v0, p0, Ldc/a;->i:D

    .line 2
    .line 3
    double-to-int v0, v0

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

.method public isRunning()Z
    .locals 6

    .line 1
    iget-object v0, p0, Ldc/a;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroid/view/animation/Animation;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v2
.end method

.method public j(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldc/a$d;->s(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldc/a$d;->t(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public varargs l([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldc/a$d;->y([I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ldc/a;->c:Ldc/a$d;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Ldc/a$d;->x(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public m(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldc/a$d;->B(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method n(F)V
    .locals 0

    .line 1
    iput p1, p0, Ldc/a;->d:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldc/a$d;->D(F)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ldc/a;->c:Ldc/a$d;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ldc/a$d;->z(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public s(I)V
    .locals 22

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/high16 v9, 0x41400000    # 12.0f

    .line 4
    .line 5
    const/high16 v10, 0x40c00000    # 6.0f

    .line 6
    .line 7
    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    .line 8
    .line 9
    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    .line 10
    .line 11
    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    .line 12
    .line 13
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 14
    .line 15
    move-object/from16 v0, p0

    .line 16
    .line 17
    invoke-direct/range {v0 .. v10}, Ldc/a;->o(DDDDFF)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/high16 v20, 0x41200000    # 10.0f

    .line 22
    .line 23
    const/high16 v21, 0x40a00000    # 5.0f

    .line 24
    .line 25
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 26
    .line 27
    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    .line 28
    .line 29
    const-wide v16, 0x4021800000000000L    # 8.75

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    .line 35
    .line 36
    move-object/from16 v11, p0

    .line 37
    .line 38
    invoke-direct/range {v11 .. v21}, Ldc/a;->o(DDDDFF)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldc/a$d;->q(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldc/a$d;->w(Landroid/graphics/ColorFilter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldc/a;->g:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 7
    .line 8
    invoke-virtual {v0}, Ldc/a$d;->F()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 12
    .line 13
    invoke-virtual {v0}, Ldc/a$d;->e()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Ldc/a;->c:Ldc/a$d;

    .line 18
    .line 19
    invoke-virtual {v1}, Ldc/a$d;->h()F

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
    iput-boolean v0, p0, Ldc/a;->k:Z

    .line 29
    .line 30
    iget-object v0, p0, Ldc/a;->g:Landroid/view/animation/Animation;

    .line 31
    .line 32
    const-wide/16 v1, 0x29a

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Ldc/a;->f:Landroid/view/View;

    .line 38
    .line 39
    iget-object v1, p0, Ldc/a;->g:Landroid/view/animation/Animation;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Ldc/a$d;->x(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 52
    .line 53
    invoke-virtual {v0}, Ldc/a$d;->p()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Ldc/a;->g:Landroid/view/animation/Animation;

    .line 57
    .line 58
    const-wide/16 v1, 0x534

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Ldc/a;->f:Landroid/view/View;

    .line 64
    .line 65
    iget-object v1, p0, Ldc/a;->g:Landroid/view/animation/Animation;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldc/a;->f:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Ldc/a;->n(F)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ldc/a$d;->C(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ldc/a$d;->x(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ldc/a;->c:Ldc/a$d;

    .line 22
    .line 23
    invoke-virtual {v0}, Ldc/a$d;->p()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
