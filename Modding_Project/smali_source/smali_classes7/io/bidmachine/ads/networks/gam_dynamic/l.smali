.class abstract Lio/bidmachine/ads/networks/gam_dynamic/l;
.super Lxq/h;
.source "GAMFullscreenAd.java"


# instance fields
.field protected final a:Lio/bidmachine/ads/networks/gam_dynamic/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected b:Lio/bidmachine/ads/networks/gam_dynamic/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/o;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lxq/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/l;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/l;->b:Lio/bidmachine/ads/networks/gam_dynamic/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getCustomParamsMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/l;->b:Lio/bidmachine/ads/networks/gam_dynamic/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->i()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/l;->b:Lio/bidmachine/ads/networks/gam_dynamic/x;

    .line 10
    .line 11
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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/l;->b:Lio/bidmachine/ads/networks/gam_dynamic/x;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->D()V

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
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/l;->b:Lio/bidmachine/ads/networks/gam_dynamic/x;

    .line 18
    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    const-string p1, "Fullscreen object is null"

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
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->p()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    const-string p1, "Fullscreen object is expired"

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
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/l;->b:Lio/bidmachine/ads/networks/gam_dynamic/x;

    .line 48
    .line 49
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->q()Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-nez p3, :cond_3

    .line 54
    .line 55
    const-string p1, "Fullscreen object not loaded"

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
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/l;->l()Lhm/o;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    if-nez p3, :cond_4

    .line 70
    .line 71
    const-string p1, "Fullscreen listener is null"

    .line 72
    .line 73
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/l;->b:Lio/bidmachine/ads/networks/gam_dynamic/x;

    .line 82
    .line 83
    invoke-virtual {p2, p1, p3}, Lio/bidmachine/ads/networks/gam_dynamic/x;->M(Landroid/app/Activity;Lhm/o;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method protected abstract l()Lhm/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
