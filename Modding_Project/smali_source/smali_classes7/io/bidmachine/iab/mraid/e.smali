.class public Lio/bidmachine/iab/mraid/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/e$c;,
        Lio/bidmachine/iab/mraid/e$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field static final synthetic l:Z = true


# instance fields
.field public final a:I

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final c:Lio/bidmachine/iab/mraid/p;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Lio/bidmachine/iab/mraid/MraidView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private e:Lio/bidmachine/iab/mraid/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/iab/mraid/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/bidmachine/iab/mraid/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lio/bidmachine/iab/mraid/e;->a:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->f:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->g:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->h:Z

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/e;->i:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->j:Z

    .line 23
    .line 24
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lio/bidmachine/iab/mraid/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    new-instance v0, Lio/bidmachine/iab/mraid/e$c;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, p0, v1}, Lio/bidmachine/iab/mraid/e$c;-><init>(Lio/bidmachine/iab/mraid/e;Lio/bidmachine/iab/mraid/e$b;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lio/bidmachine/iab/mraid/e;->c:Lio/bidmachine/iab/mraid/p;

    .line 38
    .line 39
    return-void
.end method

.method static synthetic a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/e;->e:Lio/bidmachine/iab/mraid/f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lio/bidmachine/iab/mraid/e;Lio/bidmachine/iab/mraid/f;)Lio/bidmachine/iab/mraid/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/e;->e:Lio/bidmachine/iab/mraid/f;

    .line 2
    .line 3
    return-object p1
.end method

.method private c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->n0()Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lyq/n;->a(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method static synthetic h(Lio/bidmachine/iab/mraid/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/e;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static u()Lio/bidmachine/iab/mraid/e$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/e$a;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/iab/mraid/e;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/bidmachine/iab/mraid/e;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lio/bidmachine/iab/mraid/e$a;-><init>(Lio/bidmachine/iab/mraid/e;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method d(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/e;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lyq/n;->a(Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const-string p1, "Interstitial is not ready"

    .line 15
    .line 16
    invoke-static {p1}, Lqm/a;->e(Ljava/lang/String;)Lqm/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/e;->k(Lqm/a;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    new-array p1, p1, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string p2, "MraidInterstitial"

    .line 27
    .line 28
    const-string p3, "Show failed: interstitial is not ready"

    .line 29
    .line 30
    invoke-static {p2, p3, p1}, Lio/bidmachine/iab/mraid/h;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    sget-boolean v0, Lio/bidmachine/iab/mraid/e;->l:Z

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_3
    :goto_0
    iput-boolean p4, p0, Lio/bidmachine/iab/mraid/e;->i:Z

    .line 50
    .line 51
    iput-boolean p3, p0, Lio/bidmachine/iab/mraid/e;->j:Z

    .line 52
    .line 53
    iget-object p3, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 54
    .line 55
    invoke-static {p3}, Lsm/q;->J(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 59
    .line 60
    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    const/4 v0, -0x1

    .line 63
    invoke-direct {p4, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lio/bidmachine/iab/mraid/MraidView;->p0(Landroid/app/Activity;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method e(Landroid/app/Activity;Z)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const v0, 0x1020002

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, v1, p2}, Lio/bidmachine/iab/mraid/e;->d(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method f(Lqm/a;)V
    .locals 1
    .param p1    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->f:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->h:Z

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->e:Lio/bidmachine/iab/mraid/f;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/f;->h(Lio/bidmachine/iab/mraid/e;Lqm/a;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/e;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->g:Z

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->e:Lio/bidmachine/iab/mraid/f;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/f;->g(Lio/bidmachine/iab/mraid/e;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->i:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/e;->n()V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method i(Lqm/a;)V
    .locals 1
    .param p1    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->f:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->h:Z

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/e;->k(Lqm/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method j()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->e:Lio/bidmachine/iab/mraid/f;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/f;->b(Lio/bidmachine/iab/mraid/e;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method k(Lqm/a;)V
    .locals 1
    .param p1    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->e:Lio/bidmachine/iab/mraid/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/f;->i(Lio/bidmachine/iab/mraid/e;Lqm/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/e;->r()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

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

.method m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->e:Lio/bidmachine/iab/mraid/f;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/f;->f(Lio/bidmachine/iab/mraid/e;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public n()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "MraidInterstitial"

    .line 5
    .line 6
    const-string v3, "destroy"

    .line 7
    .line 8
    invoke-static {v2, v3, v1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->f:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/bidmachine/iab/mraid/e;->e:Lio/bidmachine/iab/mraid/f;

    .line 15
    .line 16
    iget-object v1, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidView;->T()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/e;->l()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->X()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/e;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView;->j0(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v0, "MraidView not created (mraidView == null)"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public v()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->o0()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public w(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidType;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/mraid/MraidType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p0, p2}, Lio/bidmachine/iab/mraid/MraidActivity;->i(Landroid/content/Context;Lio/bidmachine/iab/mraid/e;Lio/bidmachine/iab/mraid/MraidType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public x(Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v1, p2}, Lio/bidmachine/iab/mraid/e;->d(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
