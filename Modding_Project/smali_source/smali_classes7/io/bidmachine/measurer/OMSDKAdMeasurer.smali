.class public abstract Lio/bidmachine/measurer/OMSDKAdMeasurer;
.super Ljava/lang/Object;
.source "OMSDKAdMeasurer.java"

# interfaces
.implements Lio/bidmachine/iab/measurer/AdMeasurer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdView:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/iab/measurer/AdMeasurer<",
        "TAdView;>;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/iab/omid/library/appodeal/adsession/AdSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/iab/omid/library/appodeal/adsession/AdEvents;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->a:Z

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic b(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->c:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lio/bidmachine/measurer/OMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->u(Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lio/bidmachine/measurer/OMSDKAdMeasurer;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->f:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic f(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->d:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lio/bidmachine/measurer/OMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/AdEvents;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->d:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic h(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->e:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lio/bidmachine/measurer/OMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->e:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 2
    .line 3
    return-object p1
.end method

.method private k(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/iab/omid/library/appodeal/adsession/ErrorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/measurer/OMSDKAdMeasurer$e;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private u(Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/iab/omid/library/appodeal/adsession/AdSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "registerAdView"

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->r(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private v(Lcom/iab/omid/library/appodeal/adsession/AdSession;)V
    .locals 2
    .param p1    # Lcom/iab/omid/library/appodeal/adsession/AdSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->f:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->u(Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object v1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->f:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public D0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$a;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public F0(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer$b;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;F)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$j;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c(Lqm/a;)V
    .locals 0
    .param p1    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lqm/a;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->n(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$n;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public d0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$m;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$k;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$d;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public l(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer$f;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public m(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdView;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public m0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$l;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/iab/omid/library/appodeal/adsession/ErrorType;->GENERIC:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->k(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$c;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$h;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdShown()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->y()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->c:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method protected r(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "AdMeasurer"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected abstract s(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V
    .param p1    # Lcom/iab/omid/library/appodeal/adsession/AdEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected t(Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;)V
    .locals 0
    .param p1    # Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-object p2, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->c:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 6
    .line 7
    invoke-static {p2}, Lcom/iab/omid/library/appodeal/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/appodeal/adsession/AdSession;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->d:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;->isNativeMediaEventsOwner()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->c:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->createMediaEvents(Lcom/iab/omid/library/appodeal/adsession/AdSession;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->e:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    iget-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->c:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->v(Lcom/iab/omid/library/appodeal/adsession/AdSession;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->c:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->start()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->d:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->s(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "prepareAdSession"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->r(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    return-void
.end method

.method public t0(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdView;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$g;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer$g;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public z0(FF)V
    .locals 1
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/measurer/OMSDKAdMeasurer$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/measurer/OMSDKAdMeasurer$i;-><init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;FF)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
