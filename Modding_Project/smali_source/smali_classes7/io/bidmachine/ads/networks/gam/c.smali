.class Lio/bidmachine/ads/networks/gam/c;
.super Lio/bidmachine/ads/networks/gam/b;
.source "GAMFullscreenAdListener.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam/c0;
.implements Lio/bidmachine/ads/networks/gam/i0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GAMAdType:",
        "Lio/bidmachine/ads/networks/gam/h0;",
        ">",
        "Lio/bidmachine/ads/networks/gam/b<",
        "TGAMAdType;",
        "Lxq/i;",
        ">;",
        "Lio/bidmachine/ads/networks/gam/c0<",
        "TGAMAdType;>;",
        "Lio/bidmachine/ads/networks/gam/i0;"
    }
.end annotation


# direct methods
.method constructor <init>(Lxq/i;)V
    .locals 0
    .param p1    # Lxq/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam/b;-><init>(Lxq/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/b;->c()Lxq/c;

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

.method public d(Lio/bidmachine/ads/networks/gam/h0;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/h0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGAMAdType;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/b;->c()Lxq/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lxq/i;

    .line 6
    .line 7
    invoke-interface {p1}, Lxq/i;->onAdLoaded()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/b;->c()Lxq/c;

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
