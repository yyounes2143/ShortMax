.class public Lsm/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsm/n$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lsm/n$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Z

.field private d:F

.field private e:J

.field private f:J

.field private final g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lsm/n$a;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lsm/n$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lsm/n;->c:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lsm/n;->d:F

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lsm/n;->e:J

    .line 13
    .line 14
    iput-wide v0, p0, Lsm/n;->f:J

    .line 15
    .line 16
    new-instance v0, Lsm/n$b;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lsm/n$b;-><init>(Lsm/n;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lsm/n;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 22
    .line 23
    new-instance v1, Lsm/n$c;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lsm/n$c;-><init>(Lsm/n;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lsm/n;->h:Ljava/lang/Runnable;

    .line 29
    .line 30
    iput-object p1, p0, Lsm/n;->a:Landroid/view/View;

    .line 31
    .line 32
    iput-object p2, p0, Lsm/n;->b:Lsm/n$a;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lsm/n;->a()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsm/n;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lsm/n;->c:Z

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-boolean v0, p0, Lsm/n;->c:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lsm/n;->m()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lsm/n;->j()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lsm/n;->l()V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method private b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lsm/n;->f:J

    .line 2
    .line 3
    return-void
.end method

.method static synthetic c(Lsm/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsm/n;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lsm/n;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsm/n;->b(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lsm/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lsm/n;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic f(Lsm/n;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm/n;->a:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lsm/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lsm/n;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic i(Lsm/n;)Lsm/n$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lsm/n;->b:Lsm/n$a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsm/n;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lsm/n;->a:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lsm/n;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public j()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lsm/n;->e:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Lsm/n;->f:J

    .line 10
    .line 11
    cmp-long v0, v2, v0

    .line 12
    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public k(F)V
    .locals 2

    .line 1
    iget v0, p0, Lsm/n;->d:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lsm/n;->d:F

    .line 9
    .line 10
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    float-to-long v0, p1

    .line 14
    iput-wide v0, p0, Lsm/n;->e:J

    .line 15
    .line 16
    invoke-virtual {p0}, Lsm/n;->l()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsm/n;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-wide v0, p0, Lsm/n;->e:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lsm/n;->a:Landroid/view/View;

    .line 19
    .line 20
    iget-object v1, p0, Lsm/n;->h:Ljava/lang/Runnable;

    .line 21
    .line 22
    const-wide/16 v2, 0x10

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsm/n;->a:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lsm/n;->h:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
