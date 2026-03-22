.class public Lio/bidmachine/iab/mraid/MraidView;
.super Lio/bidmachine/iab/view/CloseableLayout;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/view/CloseableLayout$a;
.implements Lsm/d;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/MraidView$a;,
        Lio/bidmachine/iab/mraid/MraidView$g;
    }
.end annotation


# instance fields
.field private final A:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final B:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final C:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final D:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private E:Z

.field private F:Lsm/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private G:Lsm/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private H:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Landroid/content/MutableContextWrapper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Lio/bidmachine/iab/mraid/MraidAdView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private j:Lio/bidmachine/iab/view/CloseableLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lio/bidmachine/iab/view/CloseableLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lsm/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Lio/bidmachine/iab/mraid/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final q:Lio/bidmachine/iab/CacheControl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r:F

.field private final s:F

.field private final t:F

.field private final u:Z

.field private final v:Z

.field private final w:Z

.field private final x:Z

.field private final y:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final z:Lio/bidmachine/iab/view/CloseableLayout$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidView$a;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/mraid/MraidView$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/view/CloseableLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->E:Z

    .line 5
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->h:Landroid/content/MutableContextWrapper;

    .line 6
    iget-object v0, p2, Lio/bidmachine/iab/mraid/MraidView$a;->g:Lio/bidmachine/iab/mraid/p;

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 7
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->a(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->q:Lio/bidmachine/iab/CacheControl;

    .line 8
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->b(Lio/bidmachine/iab/mraid/MraidView$a;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView;->r:F

    .line 9
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->l(Lio/bidmachine/iab/mraid/MraidView$a;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView;->s:F

    .line 10
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->m(Lio/bidmachine/iab/mraid/MraidView$a;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/mraid/MraidView;->t:F

    .line 11
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->n(Lio/bidmachine/iab/mraid/MraidView$a;)Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->u:Z

    .line 12
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->o(Lio/bidmachine/iab/mraid/MraidView$a;)Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->v:Z

    .line 13
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->p(Lio/bidmachine/iab/mraid/MraidView$a;)Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->w:Z

    .line 14
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->q(Lio/bidmachine/iab/mraid/MraidView$a;)Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidView;->x:Z

    .line 15
    iget-object v1, p2, Lio/bidmachine/iab/mraid/MraidView$a;->h:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    iput-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 16
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->r(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidView;->A:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 17
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->s(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidView;->B:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 18
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->d(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidView;->C:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 19
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->e(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidView;->D:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 20
    new-instance v3, Lio/bidmachine/iab/mraid/MraidAdView$c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 21
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->k(Lio/bidmachine/iab/mraid/MraidView$a;)Lio/bidmachine/iab/mraid/MraidPlacementType;

    move-result-object v5

    new-instance v6, Lio/bidmachine/iab/mraid/MraidView$g;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lio/bidmachine/iab/mraid/MraidView$g;-><init>(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/mraid/MraidView$b;)V

    invoke-direct {v3, v4, v5, v6}, Lio/bidmachine/iab/mraid/MraidAdView$c;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidPlacementType;Lio/bidmachine/iab/mraid/MraidAdView$e;)V

    .line 22
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->j(Lio/bidmachine/iab/mraid/MraidView$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/mraid/MraidAdView$c;->c(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$c;

    move-result-object v3

    .line 23
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->i(Lio/bidmachine/iab/mraid/MraidView$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/mraid/MraidAdView$c;->e(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$c;

    move-result-object v3

    .line 24
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->g(Lio/bidmachine/iab/mraid/MraidView$a;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/iab/mraid/MraidAdView$c;->b([Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$c;

    move-result-object v3

    .line 25
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidView$a;->f(Lio/bidmachine/iab/mraid/MraidView$a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lio/bidmachine/iab/mraid/MraidAdView$c;->d(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidAdView$c;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lio/bidmachine/iab/mraid/MraidAdView$c;->a()Lio/bidmachine/iab/mraid/MraidAdView;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 27
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x11

    invoke-direct {v3, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 28
    new-instance v3, Lsm/l;

    invoke-direct {v3, v7}, Lsm/l;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lio/bidmachine/iab/mraid/MraidView;->G:Lsm/l;

    .line 29
    invoke-virtual {v3, p1, p0, v2}, Lsm/i;->g(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 30
    new-instance p1, Lio/bidmachine/iab/mraid/MraidView$b;

    invoke-direct {p1, p0}, Lio/bidmachine/iab/mraid/MraidView$b;-><init>(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 31
    new-instance v2, Lsm/n;

    invoke-direct {v2, p0, p1}, Lsm/n;-><init>(Landroid/view/View;Lsm/n$a;)V

    iput-object v2, p0, Lio/bidmachine/iab/mraid/MraidView;->F:Lsm/n;

    .line 32
    invoke-virtual {v2, v0}, Lsm/n;->k(F)V

    .line 33
    :cond_0
    new-instance p1, Lio/bidmachine/iab/mraid/MraidView$c;

    invoke-direct {p1, p0}, Lio/bidmachine/iab/mraid/MraidView$c;-><init>(Lio/bidmachine/iab/mraid/MraidView;)V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->z:Lio/bidmachine/iab/view/CloseableLayout$a;

    .line 34
    invoke-virtual {p0, p0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseClickListener(Lio/bidmachine/iab/view/CloseableLayout$a;)V

    if-eqz v1, :cond_1

    .line 35
    invoke-interface {v1, p0}, Lio/bidmachine/iab/measurer/AdMeasurer;->l(Landroid/view/ViewGroup;)V

    .line 36
    invoke-virtual {p2}, Lio/bidmachine/iab/mraid/MraidAdView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->t0(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidView$a;Lio/bidmachine/iab/mraid/MraidView$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidView$a;)V

    return-void
.end method

.method private A(Lqm/a;)V
    .locals 1
    .param p1    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->c(Lqm/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/p;->g(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private B(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView;->v:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 11
    :goto_1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->j:Lio/bidmachine/iab/view/CloseableLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget v1, p0, Lio/bidmachine/iab/mraid/MraidView;->s:F

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseVisibility(ZF)V

    .line 18
    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget v1, p0, Lio/bidmachine/iab/mraid/MraidView;->s:F

    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseVisibility(ZF)V

    .line 28
    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->c0()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->E:Z

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    goto :goto_2

    .line 43
    :cond_4
    iget v0, p0, Lio/bidmachine/iab/mraid/MraidView;->s:F

    .line 44
    .line 45
    :goto_2
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseVisibility(ZF)V

    .line 46
    .line 47
    .line 48
    :cond_5
    :goto_3
    return-void
.end method

.method static synthetic C(Lio/bidmachine/iab/mraid/MraidView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidView;->E:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic D(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/mraid/MraidAdView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    return-object p0
.end method

.method private E(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->H:Ljava/lang/Integer;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic F(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->y(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->J(Lqm/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H(Lio/bidmachine/iab/mraid/MraidView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->B(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private I(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdClicked()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1, p0}, Lio/bidmachine/iab/mraid/p;->c(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lsm/d;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private J(Lqm/a;)V
    .locals 1
    .param p1    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->c(Lqm/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/p;->k(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method static synthetic K(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->I(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic L(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->A(Lqm/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private M(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdClicked()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1, p0}, Lio/bidmachine/iab/mraid/p;->i(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lsm/d;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private N(Lqm/a;)V
    .locals 1
    .param p1    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->c(Lqm/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/p;->h(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method static synthetic O(Lio/bidmachine/iab/mraid/MraidView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic P(Lio/bidmachine/iab/mraid/MraidView;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/iab/mraid/MraidView;->t:F

    .line 2
    .line 3
    return p0
.end method

.method private Q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->p(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->n0()Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->o(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 19
    .line 20
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->x()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method static synthetic R(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->S(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private S(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdClicked()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1, p0}, Lio/bidmachine/iab/mraid/p;->d(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lsm/d;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->j:Lio/bidmachine/iab/view/CloseableLayout;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->p(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->j:Lio/bidmachine/iab/view/CloseableLayout;

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->y()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static synthetic V(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->Z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private W(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->W(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic Y(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->A:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lsm/a;->b(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->r()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Lio/bidmachine/iab/utils/IabElementStyle;->G()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 28
    .line 29
    invoke-virtual {v2, v1, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->M(II)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method static synthetic a0(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b0(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d0(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->k0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->Q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private f0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/p;->j(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method static synthetic g0(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->h0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private h0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/p;->f(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method static synthetic i0(Lio/bidmachine/iab/mraid/MraidView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method private k0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdShown()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/p;->a(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method static synthetic l0(Lio/bidmachine/iab/mraid/MraidView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/mraid/MraidView;->E:Z

    .line 2
    .line 3
    return p0
.end method

.method private m0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->z:Lio/bidmachine/iab/view/CloseableLayout$a;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseClickListener(Lio/bidmachine/iab/view/CloseableLayout$a;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lio/bidmachine/iab/mraid/MraidView;->r:F

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v1, v0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseVisibility(ZF)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method static synthetic n(Lio/bidmachine/iab/mraid/MraidView;)Lsm/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidView;->G:Lsm/l;

    .line 2
    .line 3
    return-object p0
.end method

.method private o(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->H:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->H:Ljava/lang/Integer;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private p(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {p1}, Lsm/q;->J(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private q(Lio/bidmachine/iab/mraid/m;)V
    .locals 4
    .param p1    # Lio/bidmachine/iab/mraid/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->n0()Landroid/app/Activity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "applyOrientation: %s"

    .line 13
    .line 14
    const-string v3, "MraidView"

    .line 15
    .line 16
    invoke-static {v3, v2, v1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    new-array p1, p1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v0, "no any interacted activities"

    .line 25
    .line 26
    invoke-static {v3, v0, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->E(Landroid/app/Activity;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/mraid/m;->c(Landroid/content/Context;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method static synthetic r(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/mraid/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->q(Lio/bidmachine/iab/mraid/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->x(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->M(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Landroid/webkit/WebView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/iab/mraid/MraidView;->z(Ljava/lang/String;Landroid/webkit/WebView;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->N(Lqm/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private w(Lio/bidmachine/iab/view/CloseableLayout;Z)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/view/CloseableLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseClickListener(Lio/bidmachine/iab/view/CloseableLayout$a;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->A:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/view/CloseableLayout;->setCloseStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->B:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/view/CloseableLayout;->setCountDownStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p2}, Lio/bidmachine/iab/mraid/MraidView;->B(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private x(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/model/PrivacySheetParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/p;->e(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private y(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/p;->b(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private z(Ljava/lang/String;Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->c0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p0, p3}, Lio/bidmachine/iab/mraid/MraidView;->w(Lio/bidmachine/iab/view/CloseableLayout;Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p3, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-interface {p3, p2}, Lio/bidmachine/iab/measurer/AdMeasurer;->m(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p2, p0, Lio/bidmachine/iab/mraid/MraidView;->q:Lio/bidmachine/iab/CacheControl;

    .line 22
    .line 23
    sget-object p3, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    .line 24
    .line 25
    if-ne p2, p3, :cond_2

    .line 26
    .line 27
    iget-boolean p2, p0, Lio/bidmachine/iab/mraid/MraidView;->u:Z

    .line 28
    .line 29
    if-nez p2, :cond_2

    .line 30
    .line 31
    const-string p2, "data:text/html,<html></html>"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->h0()V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method


# virtual methods
.method public T()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->o:Lio/bidmachine/iab/mraid/p;

    .line 3
    .line 4
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->m:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->n0()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->o(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->j:Lio/bidmachine/iab/view/CloseableLayout;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->p(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->k:Lio/bidmachine/iab/view/CloseableLayout;

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->p(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 26
    .line 27
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->C()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->F:Lsm/n;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lsm/n;->h()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method X()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->R()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->w:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->Z()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidView$d;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lio/bidmachine/iab/mraid/MraidView$d;-><init>(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lsm/q;->D(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->X()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->R()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->x:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lio/bidmachine/iab/mraid/MraidView;->t:F

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    cmpl-float v0, v0, v1

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->Z()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method c0()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->P()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->setLoadingVisible(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->p:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/MraidAdMeasurer;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    sget-object v0, Lio/bidmachine/iab/mraid/MraidView$f;->a:[I

    .line 12
    .line 13
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->q:Lio/bidmachine/iab/CacheControl;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    aget v0, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->h0()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->W(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->n:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->h0()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->W(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/view/CloseableLayout;->getOnScreenTimeMs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lio/bidmachine/iab/mraid/o;->a:J

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->S()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidView;->v:Z

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->U()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    return v0

    .line 36
    :cond_2
    invoke-super {p0}, Lio/bidmachine/iab/view/CloseableLayout;->k()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0
.end method

.method public n0()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->m:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public o0()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->n0()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    .line 6
    invoke-static {p1}, Lsm/q;->G(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "MraidView"

    .line 15
    .line 16
    const-string v1, "onConfigurationChanged: %s"

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lio/bidmachine/iab/mraid/MraidView$e;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lio/bidmachine/iab/mraid/MraidView$e;-><init>(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lsm/q;->D(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public p0(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidView$f;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->q:Lio/bidmachine/iab/CacheControl;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->e0()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->c0()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 34
    .line 35
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->U()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-direct {p0, p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->w(Lio/bidmachine/iab/view/CloseableLayout;Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->c0()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->m0()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->c0()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidView;->m0()V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->n:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->W(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->n:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidView;->c0()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 78
    .line 79
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->U()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-direct {p0, p0, v0}, Lio/bidmachine/iab/mraid/MraidView;->w(Lio/bidmachine/iab/view/CloseableLayout;Z)V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 87
    .line 88
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->X()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->setLastInteractedActivity(Landroid/app/Activity;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->i:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 95
    .line 96
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidAdView;->getLastOrientationProperties()Lio/bidmachine/iab/mraid/m;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidView;->q(Lio/bidmachine/iab/mraid/m;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public setLastInteractedActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->m:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView;->h:Landroid/content/MutableContextWrapper;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setLoadingVisible(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->l:Lsm/j;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lsm/j;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p1, v0}, Lsm/j;-><init>(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->l:Lsm/j;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidView;->C:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 20
    .line 21
    invoke-virtual {p1, v0, p0, v1}, Lsm/i;->g(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->l:Lsm/j;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Lsm/i;->o(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->l:Lsm/j;

    .line 31
    .line 32
    invoke-virtual {p1}, Lsm/i;->i()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidView;->l:Lsm/j;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    const/16 v0, 0x8

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lsm/i;->o(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method
