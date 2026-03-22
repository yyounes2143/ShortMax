.class public Lio/bidmachine/ads/networks/gam/GAMConfig;
.super Lio/bidmachine/NetworkConfig;
.source "GAMConfig.java"


# virtual methods
.method protected createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/gam/GAMAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/ads/networks/gam/GAMAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
