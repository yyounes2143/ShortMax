.class public abstract Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;
.super Ljava/lang/Object;
.source "OMMeasurer.java"

# interfaces
.implements Lio/bidmachine/rendering/measurer/Measurer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdView:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/rendering/measurer/Measurer<",
        "TAdView;>;"
    }
.end annotation


# instance fields
.field private final a:Lfr/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/iab/omid/library/appodeal/adsession/AdSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/iab/omid/library/appodeal/adsession/AdEvents;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected f:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfr/j;

    .line 5
    .line 6
    const-string v1, "OMMeasurer"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->a:Lfr/j;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic b(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->e:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Lcom/iab/omid/library/appodeal/adsession/AdEvents;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->e:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 2
    .line 3
    return-object p0
.end method

.method private n(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V
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
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$e;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public A0(Landroid/view/View;)V
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

.method public R(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/bidmachine/core/g;->m()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public a(Lrq/t;)V
    .locals 0
    .param p1    # Lrq/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lrq/t;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->q(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected f()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method protected g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

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

.method protected h(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->a:Lfr/j;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected abstract i(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V
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

.method protected j(Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;)V
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
    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 6
    .line 7
    invoke-static {p2}, Lcom/iab/omid/library/appodeal/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/appodeal/adsession/AdSession;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->e:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

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
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->createMediaEvents(Lcom/iab/omid/library/appodeal/adsession/AdSession;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->f:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

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
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->start()V

    .line 33
    .line 34
    .line 35
    const-string p1, "prepareAdSession"

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    return-void
.end method

.method protected k(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$f;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onClicked()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$b;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onShown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$a;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$a;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/iab/omid/library/appodeal/adsession/ErrorType;->GENERIC:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->n(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$d;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$d;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
