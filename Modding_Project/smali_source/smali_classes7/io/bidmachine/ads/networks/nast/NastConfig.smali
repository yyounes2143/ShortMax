.class public Lio/bidmachine/ads/networks/nast/NastConfig;
.super Lio/bidmachine/NetworkConfig;
.source "NastConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "nast"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lio/bidmachine/NetworkConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method protected createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/nast/NastAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/ads/networks/nast/NastAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
