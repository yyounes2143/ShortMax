.class Lio/bidmachine/ads/networks/mraid/l;
.super Ljava/lang/Object;
.source "MraidFullScreenAdListener.java"

# interfaces
.implements Lio/bidmachine/iab/mraid/f;


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lxq/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lxq/i;Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/l;->b:Lxq/i;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/ads/networks/mraid/l;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic l(Lsm/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/mraid/l;->p(Lsm/d;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lio/bidmachine/rendering/model/PrivacySheetParams;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/mraid/l;->q(Lio/bidmachine/rendering/model/PrivacySheetParams;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lsm/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/mraid/l;->r(Lsm/d;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Lsm/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/mraid/l;->s(Lsm/d;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic p(Lsm/d;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lsm/d;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic q(Lio/bidmachine/rendering/model/PrivacySheetParams;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->k(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/rendering/view/PrivacySheetDialog;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic r(Lsm/d;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lsm/d;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic s(Lsm/d;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lsm/d;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/iab/mraid/e;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/PrivacySheetParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/e;->v()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->a:Landroid/content/Context;

    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Lio/bidmachine/core/g;->n(Landroid/content/Context;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lio/bidmachine/ads/networks/mraid/h;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Lio/bidmachine/ads/networks/mraid/h;-><init>(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public b(Lio/bidmachine/iab/mraid/e;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->b:Lxq/i;

    .line 2
    .line 3
    invoke-interface {p1}, Lxq/i;->onAdLoaded()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;Lsm/d;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lsm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->b:Lxq/i;

    .line 2
    .line 3
    invoke-interface {p1}, Lxq/c;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->a:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/ads/networks/mraid/j;

    .line 9
    .line 10
    invoke-direct {v0, p3}, Lio/bidmachine/ads/networks/mraid/j;-><init>(Lsm/d;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, v0}, Lsq/k;->e(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public d(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;Lsm/d;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lsm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->b:Lxq/i;

    .line 2
    .line 3
    invoke-interface {p1}, Lxq/c;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->a:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/ads/networks/mraid/i;

    .line 9
    .line 10
    invoke-direct {v0, p3}, Lio/bidmachine/ads/networks/mraid/i;-><init>(Lsm/d;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, v0}, Lsq/k;->c(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e(Lio/bidmachine/iab/mraid/e;Lqm/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->b:Lxq/i;

    .line 2
    .line 3
    invoke-interface {p1}, Lxq/c;->onAdExpired()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lio/bidmachine/iab/mraid/e;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->b:Lxq/i;

    .line 2
    .line 3
    invoke-interface {p1}, Lxq/c;->onAdShown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Lio/bidmachine/iab/mraid/e;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/e;->s()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->j()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->b:Lxq/i;

    .line 15
    .line 16
    invoke-interface {p1}, Lxq/i;->b()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->b:Lxq/i;

    .line 20
    .line 21
    invoke-interface {p1}, Lxq/i;->onAdClosed()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public h(Lio/bidmachine/iab/mraid/e;Lqm/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->b:Lxq/i;

    .line 2
    .line 3
    invoke-static {p2}, Lfr/d;->a(Lqm/a;)Lfr/a;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public i(Lio/bidmachine/iab/mraid/e;Lqm/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->b:Lxq/i;

    .line 2
    .line 3
    invoke-static {p2}, Lfr/d;->a(Lqm/a;)Lfr/a;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public j(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;Lsm/d;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lsm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->b:Lxq/i;

    .line 2
    .line 3
    invoke-interface {p1}, Lxq/c;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/l;->a:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/ads/networks/mraid/k;

    .line 9
    .line 10
    invoke-direct {v0, p3}, Lio/bidmachine/ads/networks/mraid/k;-><init>(Lsm/d;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, v0}, Lsq/k;->b(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public k(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method
