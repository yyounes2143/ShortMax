.class public abstract Lio/bidmachine/ads/networks/gam_dynamic/v;
.super Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
.source "InternalBannerAd.java"


# direct methods
.method public constructor <init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)V
    .locals 0
    .param p1    # Lhm/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lhm/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;-><init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected abstract K()Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
