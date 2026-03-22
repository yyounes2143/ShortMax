.class public Lio/bidmachine/iab/view/CloseableLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/view/CloseableLayout$d;,
        Lio/bidmachine/iab/view/CloseableLayout$a;,
        Lio/bidmachine/iab/view/CloseableLayout$c;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/iab/view/CloseableLayout$d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lsm/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lsm/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lio/bidmachine/iab/view/CloseableLayout$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lio/bidmachine/iab/view/CloseableLayout$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, v0}, Lio/bidmachine/iab/view/CloseableLayout$d;-><init>(Lio/bidmachine/iab/view/CloseableLayout$b;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 11
    .line 12
    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/iab/view/CloseableLayout;->h()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/bidmachine/iab/view/CloseableLayout$c;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lio/bidmachine/iab/view/CloseableLayout$c;-><init>(Lio/bidmachine/iab/view/CloseableLayout;Lio/bidmachine/iab/view/CloseableLayout$b;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->d:Lio/bidmachine/iab/view/CloseableLayout$c;

    .line 18
    .line 19
    const-wide/16 v1, 0x32

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method static synthetic f(Lio/bidmachine/iab/view/CloseableLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/view/CloseableLayout;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/view/CloseableLayout;->e:Lio/bidmachine/iab/view/CloseableLayout$a;

    .line 2
    .line 3
    return-object p0
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->d:Lio/bidmachine/iab/view/CloseableLayout$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->d:Lio/bidmachine/iab/view/CloseableLayout$c;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method static synthetic i(Lio/bidmachine/iab/view/CloseableLayout;)Lsm/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lsm/f;

    .line 2
    .line 3
    return-object p0
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/view/CloseableLayout$d;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lsm/e;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lsm/i;->l()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lsm/f;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lsm/f;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, v1}, Lsm/f;-><init>(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lsm/f;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lsm/f;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 35
    .line 36
    invoke-virtual {v0, v1, p0, v2}, Lsm/i;->g(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lio/bidmachine/iab/view/CloseableLayout;->e()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/iab/view/CloseableLayout;->h()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lsm/e;

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    new-instance v0, Lsm/e;

    .line 51
    .line 52
    new-instance v1, Lio/bidmachine/iab/view/CloseableLayout$b;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lio/bidmachine/iab/view/CloseableLayout$b;-><init>(Lio/bidmachine/iab/view/CloseableLayout;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Lsm/e;-><init>(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lsm/e;

    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lsm/e;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 69
    .line 70
    invoke-virtual {v0, v1, p0, v2}, Lsm/i;->g(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lsm/f;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0}, Lsm/i;->l()V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic l(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lsm/e;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lsm/i;->i()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lsm/f;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lsm/i;->i()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public getOnScreenTimeMs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/view/CloseableLayout$d;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/view/CloseableLayout$d;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/view/CloseableLayout$d;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lio/bidmachine/iab/view/CloseableLayout;->h()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/bidmachine/iab/view/CloseableLayout$d;->j()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 19
    .line 20
    invoke-virtual {p1}, Lio/bidmachine/iab/view/CloseableLayout$d;->l()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lio/bidmachine/iab/view/CloseableLayout;->e()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 30
    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 p2, 0x0

    .line 36
    :goto_1
    invoke-static {p1, p2}, Lio/bidmachine/iab/view/CloseableLayout$d;->b(Lio/bidmachine/iab/view/CloseableLayout$d;Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setCloseClickListener(Lio/bidmachine/iab/view/CloseableLayout$a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/view/CloseableLayout$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->e:Lio/bidmachine/iab/view/CloseableLayout$a;

    .line 2
    .line 3
    return-void
.end method

.method public setCloseStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->f:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lsm/e;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lsm/i;->n()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lsm/e;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1, p0, p1}, Lsm/i;->g(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setCloseVisibility(ZF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout$d;->f(Lio/bidmachine/iab/view/CloseableLayout$d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout$d;->g(Lio/bidmachine/iab/view/CloseableLayout$d;)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    cmpl-float v0, v0, p2

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->a:Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/iab/view/CloseableLayout$d;->d(ZF)V

    .line 23
    .line 24
    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->b:Lsm/e;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lsm/i;->l()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lsm/f;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Lsm/i;->l()V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/iab/view/CloseableLayout;->h()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    invoke-direct {p0}, Lio/bidmachine/iab/view/CloseableLayout;->j()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public setCountDownStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout;->g:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lsm/f;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lsm/i;->n()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout;->c:Lsm/f;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1, p0, p1}, Lsm/i;->g(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
