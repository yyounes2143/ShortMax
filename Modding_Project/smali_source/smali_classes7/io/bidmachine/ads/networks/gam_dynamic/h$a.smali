.class final Lio/bidmachine/ads/networks/gam_dynamic/h$a;
.super Lio/bidmachine/ads/networks/gam_dynamic/i;
.source "GAMBannerAd.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/w;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/gam_dynamic/i<",
        "Lio/bidmachine/ads/networks/gam_dynamic/v;",
        "Lxq/f;",
        ">;",
        "Lio/bidmachine/ads/networks/gam_dynamic/w;"
    }
.end annotation


# instance fields
.field private final b:Lio/bidmachine/ads/networks/gam_dynamic/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lxq/f;Lio/bidmachine/ads/networks/gam_dynamic/h;)V
    .locals 0
    .param p1    # Lxq/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam_dynamic/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/i;-><init>(Lxq/c;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/h$a;->b:Lio/bidmachine/ads/networks/gam_dynamic/h;

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
    check-cast p1, Lio/bidmachine/ads/networks/gam_dynamic/v;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/h$a;->d(Lio/bidmachine/ads/networks/gam_dynamic/v;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lio/bidmachine/ads/networks/gam_dynamic/v;)V
    .locals 2
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/h$a;->b:Lio/bidmachine/ads/networks/gam_dynamic/h;

    .line 2
    .line 3
    iput-object p1, v0, Lio/bidmachine/ads/networks/gam_dynamic/h;->c:Lio/bidmachine/ads/networks/gam_dynamic/v;

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->m()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getOverrideCallbacks()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/i;->c()Lxq/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lxq/f;

    .line 20
    .line 21
    sget-object v1, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lxq/c;->setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/i;->c()Lxq/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lxq/f;

    .line 31
    .line 32
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/v;->K()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v0, p1}, Lxq/f;->onAdLoaded(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
