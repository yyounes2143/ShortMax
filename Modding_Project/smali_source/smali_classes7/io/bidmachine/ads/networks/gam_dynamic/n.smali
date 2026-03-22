.class Lio/bidmachine/ads/networks/gam_dynamic/n;
.super Lio/bidmachine/ads/networks/gam_dynamic/l;
.source "GAMInterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/n$a;
    }
.end annotation


# instance fields
.field c:Lio/bidmachine/ads/networks/gam_dynamic/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
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
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/l;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/o;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/n;->m(Lio/bidmachine/ContextProvider;Lxq/i;Lxq/j;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/n;->c:Lio/bidmachine/ads/networks/gam_dynamic/y;

    .line 3
    .line 4
    invoke-super {p0}, Lio/bidmachine/ads/networks/gam_dynamic/l;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected l()Lhm/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/n;->c:Lio/bidmachine/ads/networks/gam_dynamic/y;

    .line 2
    .line 3
    return-object v0
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
    new-instance p1, Lio/bidmachine/ads/networks/gam_dynamic/n$a;

    .line 2
    .line 3
    invoke-direct {p1, p2, p0}, Lio/bidmachine/ads/networks/gam_dynamic/n$a;-><init>(Lxq/i;Lio/bidmachine/ads/networks/gam_dynamic/l;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/n;->c:Lio/bidmachine/ads/networks/gam_dynamic/y;

    .line 7
    .line 8
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/l;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 9
    .line 10
    invoke-interface {p2, p5, p1}, Lio/bidmachine/ads/networks/gam_dynamic/o;->e(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/y;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
