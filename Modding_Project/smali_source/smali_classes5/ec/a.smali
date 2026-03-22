.class public Lec/a;
.super Ljava/lang/Object;
.source "AnimProcessor.java"


# instance fields
.field private a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

.field private b:Landroid/view/animation/DecelerateInterpolator;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lec/a;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lec/a;->d:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lec/a;->e:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lec/a;->f:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lec/a;->g:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lec/a;->h:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lec/a;->i:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lec/a;->j:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lec/a;->k:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lec/a;->l:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lec/a;->m:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lec/a;->n:Z

    .line 28
    .line 29
    new-instance v0, Lec/a$a;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lec/a$a;-><init>(Lec/a;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lec/a;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 35
    .line 36
    new-instance v0, Lec/a$b;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lec/a$b;-><init>(Lec/a;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lec/a;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 42
    .line 43
    new-instance v0, Lec/a$c;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lec/a$c;-><init>(Lec/a;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lec/a;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 49
    .line 50
    new-instance v0, Lec/a$d;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lec/a$d;-><init>(Lec/a;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lec/a;->r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 56
    .line 57
    iput-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 58
    .line 59
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 60
    .line 61
    const/high16 v0, 0x41000000    # 8.0f

    .line 62
    .line 63
    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lec/a;->b:Landroid/view/animation/DecelerateInterpolator;

    .line 67
    .line 68
    return-void
.end method

.method private I()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "footer translationY:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lfc/b;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    .line 48
    int-to-float v0, v0

    .line 49
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    sub-float/2addr v0, v1

    .line 60
    float-to-int v0, v0

    .line 61
    return v0
.end method

.method private J()I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "header translationY:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ",Visible head height:"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    int-to-float v1, v1

    .line 42
    iget-object v2, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-float/2addr v1, v2

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lfc/b;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    .line 75
    int-to-float v0, v0

    .line 76
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    add-float/2addr v0, v1

    .line 87
    float-to-int v0, v0

    .line 88
    return v0
.end method

.method private M(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    sub-float/2addr v1, p1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private N(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    sub-float/2addr p1, v1

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private O(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->z()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->o()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    int-to-float p1, p1

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method static synthetic a(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->e:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->j:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->k:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->l:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic f(Lec/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lec/a;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->m:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->n:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lec/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lec/a;->r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lec/a;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lec/a;->N(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lec/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lec/a;->O(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l(Lec/a;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lec/a;->M(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lec/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lec/a;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->c:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic o(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic p(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic q(Lec/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lec/a;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->d:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic s(Lec/a;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lec/a;->I()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic t(Lec/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lec/a;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic v(Lec/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lec/a;->i:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public A(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lec/a;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lec/a;->i:Z

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "animHeadHideByVy\uff1avy->"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lfc/b;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v0, 0x1388

    .line 34
    .line 35
    if-ge p1, v0, :cond_1

    .line 36
    .line 37
    const/16 p1, 0x1f40

    .line 38
    .line 39
    :cond_1
    invoke-direct {p0}, Lec/a;->J()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-direct {p0}, Lec/a;->J()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    mul-int/lit16 v0, v0, 0x3e8

    .line 48
    .line 49
    div-int/2addr v0, p1

    .line 50
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    mul-int/lit8 p1, p1, 0x5

    .line 55
    .line 56
    int-to-long v3, p1

    .line 57
    iget-object v5, p0, Lec/a;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 58
    .line 59
    new-instance v6, Lec/a$j;

    .line 60
    .line 61
    invoke-direct {v6, p0}, Lec/a$j;-><init>(Lec/a;)V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    move-object v0, p0

    .line 66
    invoke-virtual/range {v0 .. v6}, Lec/a;->C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public B()V
    .locals 4

    .line 1
    const-string v0, "animHeadToRefresh:"

    .line 2
    .line 3
    invoke-static {v0}, Lfc/b;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lec/a;->e:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lec/a;->J()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->q()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lec/a;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 20
    .line 21
    new-instance v3, Lec/a$e;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lec/a$e;-><init>(Lec/a;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1, v2, v3}, Lec/a;->D(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 1
    filled-new-array {p1, p2}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 10
    .line 11
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public D(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 1
    filled-new-array {p1, p2}, [I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    .line 22
    .line 23
    sub-int/2addr p1, p2

    .line 24
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    int-to-float p1, p1

    .line 29
    const/high16 p2, 0x3f800000    # 1.0f

    .line 30
    .line 31
    mul-float/2addr p1, p2

    .line 32
    float-to-int p1, p1

    .line 33
    int-to-long p1, p1

    .line 34
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public E(FI)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "animOverScrollBottom\uff1avy->"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ",computeTimes->"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lfc/b;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lec/a;->n:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->e0()V

    .line 37
    .line 38
    .line 39
    int-to-float p2, p2

    .line 40
    div-float/2addr p1, p2

    .line 41
    const/high16 p2, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr p1, p2

    .line 44
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    float-to-int p1, p1

    .line 49
    iget-object p2, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->u()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-le p1, p2, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->u()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    :cond_1
    move v2, p1

    .line 64
    const/16 p1, 0x32

    .line 65
    .line 66
    if-gt v2, p1, :cond_2

    .line 67
    .line 68
    const/16 p1, 0x73

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-wide p1, 0x3fd3333333333333L    # 0.3

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    int-to-double v0, v2

    .line 77
    mul-double/2addr v0, p1

    .line 78
    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    .line 79
    .line 80
    add-double/2addr v0, p1

    .line 81
    double-to-int p1, v0

    .line 82
    :goto_0
    iget-boolean p2, p0, Lec/a;->d:Z

    .line 83
    .line 84
    if-nez p2, :cond_3

    .line 85
    .line 86
    iget-object p2, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->e()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->i0()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const/4 p2, 0x1

    .line 101
    iput-boolean p2, p0, Lec/a;->n:Z

    .line 102
    .line 103
    iput-boolean p2, p0, Lec/a;->m:Z

    .line 104
    .line 105
    int-to-long v3, p1

    .line 106
    iget-object v5, p0, Lec/a;->r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 107
    .line 108
    new-instance v6, Lec/a$m;

    .line 109
    .line 110
    invoke-direct {v6, p0, v2, p1}, Lec/a$m;-><init>(Lec/a;II)V

    .line 111
    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    move-object v0, p0

    .line 115
    invoke-virtual/range {v0 .. v6}, Lec/a;->C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    .line 117
    .line 118
    :goto_1
    return-void
.end method

.method public F(FI)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "animOverScrollTop\uff1avy->"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ",computeTimes->"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lfc/b;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lec/a;->l:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lec/a;->l:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lec/a;->k:Z

    .line 38
    .line 39
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f0()V

    .line 42
    .line 43
    .line 44
    int-to-float p2, p2

    .line 45
    div-float/2addr p1, p2

    .line 46
    const/high16 p2, 0x40000000    # 2.0f

    .line 47
    .line 48
    div-float/2addr p1, p2

    .line 49
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    float-to-int p1, p1

    .line 54
    iget-object p2, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->u()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-le p1, p2, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->u()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    :cond_1
    move v2, p1

    .line 69
    const/16 p1, 0x32

    .line 70
    .line 71
    if-gt v2, p1, :cond_2

    .line 72
    .line 73
    const/16 p1, 0x73

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-wide p1, 0x3fd3333333333333L    # 0.3

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    int-to-double v0, v2

    .line 82
    mul-double/2addr v0, p1

    .line 83
    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    .line 84
    .line 85
    add-double/2addr v0, p1

    .line 86
    double-to-int p1, v0

    .line 87
    :goto_0
    invoke-direct {p0}, Lec/a;->J()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    int-to-long v3, p1

    .line 92
    iget-object v5, p0, Lec/a;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 93
    .line 94
    new-instance v6, Lec/a$l;

    .line 95
    .line 96
    invoke-direct {v6, p0, v2, p1}, Lec/a$l;-><init>(Lec/a;II)V

    .line 97
    .line 98
    .line 99
    move-object v0, p0

    .line 100
    invoke-virtual/range {v0 .. v6}, Lec/a;->C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->H()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lec/a;->J()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->q()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    sub-int/2addr v1, v2

    .line 34
    if-lt v0, v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lec/a;->B()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lec/a;->z(Z)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->H()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lec/a;->I()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->n()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    sub-int/2addr v1, v2

    .line 34
    if-lt v0, v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lec/a;->y()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lec/a;->w(Z)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public K(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lec/a;->b:Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->s()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    div-float v1, p1, v1

    .line 11
    .line 12
    const/high16 v2, 0x40000000    # 2.0f

    .line 13
    .line 14
    div-float/2addr v1, v2

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    mul-float/2addr v0, p1

    .line 20
    div-float/2addr v0, v2

    .line 21
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->H()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->g()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->D()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const/16 v1, 0x8

    .line 80
    .line 81
    if-eq p1, v1, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lec/a;->d:Z

    .line 93
    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    .line 122
    int-to-float v1, v1

    .line 123
    sub-float/2addr v1, v0

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    float-to-int v1, v1

    .line 153
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    .line 155
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 165
    .line 166
    neg-float v1, v0

    .line 167
    invoke-virtual {p1, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->T(F)V

    .line 168
    .line 169
    .line 170
    :goto_2
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    neg-float v0, v0

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public L(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lec/a;->b:Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    div-float v1, p1, v1

    .line 10
    .line 11
    const/high16 v2, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v1, v2

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    mul-float/2addr v0, p1

    .line 19
    div-float/2addr v0, v2

    .line 20
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->H()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->i()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->E()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    const/16 v1, 0x8

    .line 79
    .line 80
    if-eq p1, v1, :cond_2

    .line 81
    .line 82
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lec/a;->c:Z

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    .line 121
    int-to-float v1, v1

    .line 122
    sub-float v1, v0, v1

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    float-to-int v1, v1

    .line 153
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    .line 155
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->S(F)V

    .line 167
    .line 168
    .line 169
    :goto_2
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->C()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_4

    .line 176
    .line 177
    iget-object p1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 184
    .line 185
    .line 186
    float-to-int p1, v0

    .line 187
    invoke-direct {p0, p1}, Lec/a;->O(I)V

    .line 188
    .line 189
    .line 190
    :cond_4
    return-void
.end method

.method public w(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "animBottomBack\uff1afinishLoading?->"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lfc/b;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lec/a;->h:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-boolean v1, p0, Lec/a;->d:Z

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->a0(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-direct {p0}, Lec/a;->I()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    new-instance v1, Lec/a$h;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lec/a$h;-><init>(Lec/a;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lec/a$i;

    .line 53
    .line 54
    invoke-direct {v2, p0, p1}, Lec/a$i;-><init>(Lec/a;Z)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, v0, p1, v1, v2}, Lec/a;->D(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public x(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "animBottomHideByVy\uff1avy->"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lfc/b;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lec/a;->j:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lec/a;->j:Z

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v0, 0x1388

    .line 34
    .line 35
    if-ge p1, v0, :cond_1

    .line 36
    .line 37
    const/16 p1, 0x1f40

    .line 38
    .line 39
    :cond_1
    invoke-direct {p0}, Lec/a;->I()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-direct {p0}, Lec/a;->I()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    mul-int/2addr v1, v0

    .line 48
    div-int/2addr v1, p1

    .line 49
    int-to-long v4, v1

    .line 50
    iget-object v6, p0, Lec/a;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 51
    .line 52
    new-instance v7, Lec/a$k;

    .line 53
    .line 54
    invoke-direct {v7, p0}, Lec/a$k;-><init>(Lec/a;)V

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    move-object v1, p0

    .line 59
    invoke-virtual/range {v1 .. v7}, Lec/a;->C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public y()V
    .locals 4

    .line 1
    const-string v0, "animBottomToLoad"

    .line 2
    .line 3
    invoke-static {v0}, Lfc/b;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lec/a;->g:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lec/a;->I()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->n()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lec/a;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 20
    .line 21
    new-instance v3, Lec/a$g;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lec/a$g;-><init>(Lec/a;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1, v2, v3}, Lec/a;->D(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public z(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "animHeadBack\uff1afinishRefresh?->"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lfc/b;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lec/a;->f:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-boolean v1, p0, Lec/a;->c:Z

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lec/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->b0(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-direct {p0}, Lec/a;->J()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lec/a;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 48
    .line 49
    new-instance v2, Lec/a$f;

    .line 50
    .line 51
    invoke-direct {v2, p0, p1}, Lec/a$f;-><init>(Lec/a;Z)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, v0, p1, v1, v2}, Lec/a;->D(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
