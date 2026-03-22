.class Lio/bidmachine/ads/networks/gam_dynamic/m;
.super Lio/bidmachine/ads/networks/gam_dynamic/i;
.source "GAMFullscreenAdListener.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/u;
.implements Lhm/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InternalAdType:",
        "Lio/bidmachine/ads/networks/gam_dynamic/x;",
        ">",
        "Lio/bidmachine/ads/networks/gam_dynamic/i<",
        "TInternalAdType;",
        "Lxq/i;",
        ">;",
        "Lio/bidmachine/ads/networks/gam_dynamic/u<",
        "TInternalAdType;>;",
        "Lhm/o;"
    }
.end annotation


# instance fields
.field private final b:Lio/bidmachine/ads/networks/gam_dynamic/l;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lxq/i;Lio/bidmachine/ads/networks/gam_dynamic/l;)V
    .locals 0
    .param p1    # Lxq/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam_dynamic/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/i;-><init>(Lxq/c;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/m;->b:Lio/bidmachine/ads/networks/gam_dynamic/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/ads/networks/gam_dynamic/x;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/m;->d(Lio/bidmachine/ads/networks/gam_dynamic/x;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/i;->c()Lxq/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxq/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lxq/i;->b()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d(Lio/bidmachine/ads/networks/gam_dynamic/x;)V
    .locals 1
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInternalAdType;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/m;->b:Lio/bidmachine/ads/networks/gam_dynamic/l;

    .line 2
    .line 3
    iput-object p1, v0, Lio/bidmachine/ads/networks/gam_dynamic/l;->b:Lio/bidmachine/ads/networks/gam_dynamic/x;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/i;->c()Lxq/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lxq/i;

    .line 10
    .line 11
    invoke-interface {p1}, Lxq/i;->onAdLoaded()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/i;->c()Lxq/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxq/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lxq/i;->onAdClosed()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
