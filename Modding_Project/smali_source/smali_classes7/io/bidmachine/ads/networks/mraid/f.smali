.class Lio/bidmachine/ads/networks/mraid/f;
.super Ljava/lang/Object;
.source "MraidBannerAdListener.java"

# interfaces
.implements Lio/bidmachine/iab/mraid/p;


# instance fields
.field private final a:Lxq/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lxq/f;)V
    .locals 0
    .param p1    # Lxq/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/f;->a:Lxq/f;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic l(Lsm/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/mraid/f;->p(Lsm/d;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lio/bidmachine/rendering/model/PrivacySheetParams;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/mraid/f;->q(Lio/bidmachine/rendering/model/PrivacySheetParams;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lsm/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/mraid/f;->r(Lsm/d;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Lsm/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/mraid/f;->s(Lsm/d;Ljava/lang/Boolean;)V

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
.method public a(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/f;->a:Lxq/f;

    .line 2
    .line 3
    invoke-interface {p1}, Lxq/c;->onAdShown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
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

.method public c(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lsm/d;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
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
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/f;->a:Lxq/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lxq/c;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lio/bidmachine/ads/networks/mraid/e;

    .line 11
    .line 12
    invoke-direct {v0, p3}, Lio/bidmachine/ads/networks/mraid/e;-><init>(Lsm/d;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2, v0}, Lsq/k;->b(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public d(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lsm/d;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
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
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/f;->a:Lxq/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lxq/c;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lio/bidmachine/ads/networks/mraid/d;

    .line 11
    .line 12
    invoke-direct {v0, p3}, Lio/bidmachine/ads/networks/mraid/d;-><init>(Lsm/d;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2, v0}, Lsq/k;->e(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public e(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/PrivacySheetParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidView;->o0()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lio/bidmachine/core/g;->o(Landroid/content/Context;Landroid/view/View;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lio/bidmachine/ads/networks/mraid/b;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Lio/bidmachine/ads/networks/mraid/b;-><init>(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public f(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/f;->a:Lxq/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lxq/f;->onAdLoaded(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/f;->a:Lxq/f;

    .line 2
    .line 3
    invoke-interface {p1}, Lxq/c;->onAdExpired()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/f;->a:Lxq/f;

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

.method public i(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lsm/d;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
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
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/f;->a:Lxq/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lxq/c;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lio/bidmachine/ads/networks/mraid/c;

    .line 11
    .line 12
    invoke-direct {v0, p3}, Lio/bidmachine/ads/networks/mraid/c;-><init>(Lsm/d;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2, v0}, Lsq/k;->c(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public j(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public k(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/f;->a:Lxq/f;

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
