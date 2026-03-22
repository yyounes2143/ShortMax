.class public Lio/bidmachine/NetworkAdUnit;
.super Ljava/lang/Object;
.source "NetworkAdUnit.java"


# instance fields
.field private final adsFormat:Lio/bidmachine/AdsFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mediationConfig:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final networkAdapter:Lio/bidmachine/NetworkAdapter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdsFormat;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/NetworkAdapter;",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lio/bidmachine/NetworkAdUnit;->id:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lio/bidmachine/NetworkAdUnit;->networkAdapter:Lio/bidmachine/NetworkAdapter;

    .line 15
    .line 16
    iput-object p2, p0, Lio/bidmachine/NetworkAdUnit;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 17
    .line 18
    iput-object p3, p0, Lio/bidmachine/NetworkAdUnit;->mediationConfig:Ljava/util/Map;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method clearAuction()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lio/bidmachine/NetworkAdapter;->clearAuction(Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getAdsFormat()Lio/bidmachine/AdsFormat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediationConfig()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->mediationConfig:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediationParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->mediationConfig:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public getNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->networkAdapter:Lio/bidmachine/NetworkAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->networkAdapter:Lio/bidmachine/NetworkAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method onLossAuction()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lio/bidmachine/NetworkAdapter;->onLossAuction(Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method onWinAuction()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lio/bidmachine/NetworkAdapter;->onWinAuction(Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
