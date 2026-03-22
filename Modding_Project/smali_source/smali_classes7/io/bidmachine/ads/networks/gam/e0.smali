.class public abstract Lio/bidmachine/ads/networks/gam/e0;
.super Lio/bidmachine/ads/networks/gam/InternalGAMAd;
.source "InternalGAMBannerAd.java"


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/t;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/ads/networks/gam/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;-><init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected abstract H()Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
