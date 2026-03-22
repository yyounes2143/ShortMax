.class public Lio/bidmachine/ads/networks/gam_dynamic/GAMConfig;
.super Lio/bidmachine/NetworkConfig;
.source "GAMConfig.java"


# virtual methods
.method protected createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
