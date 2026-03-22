.class Lio/bidmachine/ads/networks/gam/d;
.super Lxq/h;
.source "GAMInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/d$b;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/ads/networks/gam/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lio/bidmachine/ads/networks/gam/d$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lio/bidmachine/ads/networks/gam/j0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method protected constructor <init>(Lio/bidmachine/ads/networks/gam/o;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lxq/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/d;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic l(Lio/bidmachine/ads/networks/gam/d;Lio/bidmachine/ads/networks/gam/j0;)Lio/bidmachine/ads/networks/gam/j0;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/d;->c:Lio/bidmachine/ads/networks/gam/j0;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public bridge synthetic b(Lio/bidmachine/ContextProvider;Lxq/c;Lxq/d;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p2, Lxq/i;

    .line 2
    .line 3
    check-cast p3, Lxq/j;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam/d;->m(Lio/bidmachine/ContextProvider;Lxq/i;Lxq/j;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/d;->b:Lio/bidmachine/ads/networks/gam/d$b;

    .line 3
    .line 4
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/d;->c:Lio/bidmachine/ads/networks/gam/j0;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->h()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/d;->c:Lio/bidmachine/ads/networks/gam/j0;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-super {p0}, Lxq/b;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/d;->c:Lio/bidmachine/ads/networks/gam/j0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->D()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public k(Lio/bidmachine/ContextProvider;Lxq/i;Lio/bidmachine/RendererConfiguration;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/RendererConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "Activity is null"

    .line 8
    .line 9
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam/d;->c:Lio/bidmachine/ads/networks/gam/j0;

    .line 18
    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    const-string p1, "InternalGAM interstitial object is null"

    .line 22
    .line 23
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->q()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    const-string p1, "InternalGAM interstitial object is expired"

    .line 38
    .line 39
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam/d;->c:Lio/bidmachine/ads/networks/gam/j0;

    .line 48
    .line 49
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->r()Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-nez p3, :cond_3

    .line 54
    .line 55
    const-string p1, "InternalGAM interstitial object not loaded"

    .line 56
    .line 57
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam/d;->b:Lio/bidmachine/ads/networks/gam/d$b;

    .line 66
    .line 67
    if-nez p3, :cond_4

    .line 68
    .line 69
    const-string p1, "InternalGAM interstitial listener is null"

    .line 70
    .line 71
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam/d;->c:Lio/bidmachine/ads/networks/gam/j0;

    .line 80
    .line 81
    invoke-virtual {p2, p1, p3}, Lio/bidmachine/ads/networks/gam/h0;->J(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/i0;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public m(Lio/bidmachine/ContextProvider;Lxq/i;Lxq/j;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lxq/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance p1, Lio/bidmachine/ads/networks/gam/p;

    .line 2
    .line 3
    invoke-direct {p1, p4}, Lio/bidmachine/ads/networks/gam/p;-><init>(Lxq/k;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/gam/p;->a(Lxq/c;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Lio/bidmachine/ads/networks/gam/d$b;

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    invoke-direct {p1, p2, p0, p3}, Lio/bidmachine/ads/networks/gam/d$b;-><init>(Lxq/i;Lio/bidmachine/ads/networks/gam/d;Lio/bidmachine/ads/networks/gam/d$a;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/d;->b:Lio/bidmachine/ads/networks/gam/d$b;

    .line 20
    .line 21
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam/d;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 22
    .line 23
    invoke-virtual {p2, p5, p1}, Lio/bidmachine/ads/networks/gam/o;->n(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/k0;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
