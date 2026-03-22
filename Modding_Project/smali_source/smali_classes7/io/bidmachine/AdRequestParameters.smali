.class public abstract Lio/bidmachine/AdRequestParameters;
.super Ljava/lang/Object;
.source "AdRequestParameters.java"


# instance fields
.field private adPlacementConfig:Lio/bidmachine/AdPlacementConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private bidPayload:Lio/bidmachine/protobuf/ResponsePayload;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private networkConfigList:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private priceFloorParams:Lio/bidmachine/PriceFloorParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private targetingParams:Lio/bidmachine/TargetingParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timeOutMs:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/bidmachine/AdPlacementConfig;)V
    .locals 0
    .param p1    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAdPlacementConfig()Lio/bidmachine/AdPlacementConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdsFormat()Lio/bidmachine/AdsFormat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig;->getAdsFormat()Lio/bidmachine/AdsFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAdsType()Lio/bidmachine/AdsType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequestParameters;->getAdsFormat()Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/AdsFormat;->getAdsType()Lio/bidmachine/AdsType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getBidPayload()Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomParams()Lio/bidmachine/CustomParams;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig;->getCustomParams()Lio/bidmachine/CustomParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNetworkConfigList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->networkConfigList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig;->getPlacementId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPriceFloorParams()Lio/bidmachine/PriceFloorParams;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionAdParams()Lio/bidmachine/SessionAdParams;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getTargetingParams()Lio/bidmachine/TargetingParams;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->targetingParams:Lio/bidmachine/TargetingParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeOutMs()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->timeOutMs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z
    .locals 1
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public abstract isPlacementObjectValid(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .param p1    # Lcom/explorestack/protobuf/adcom/Placement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public isPricePassedByPriceFloor(D)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Double;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    cmpl-double v2, p1, v2

    .line 43
    .line 44
    if-lez v2, :cond_2

    .line 45
    .line 46
    return v1

    .line 47
    :cond_3
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method setAdPlacementConfig(Lio/bidmachine/AdPlacementConfig;)V
    .locals 4
    .param p1    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig;->getAdsFormat()Lio/bidmachine/AdsFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getAdsFormat()Lio/bidmachine/AdsFormat;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "setAdPlacementConfig received different AdsFormat. Expected: "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, ", actual: "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lio/bidmachine/core/a;->l(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getPlacementId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getCustomParams()Lio/bidmachine/CustomParams;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1, v0, v1, v2}, Lio/bidmachine/AdPlacementConfig;->copy(Lio/bidmachine/AdsFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;)Lio/bidmachine/AdPlacementConfig;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_0
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    .line 54
    .line 55
    return-void
.end method

.method setBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V
    .locals 0
    .param p1    # Lio/bidmachine/protobuf/ResponsePayload;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    .line 2
    .line 3
    return-void
.end method

.method setNetworkConfigList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->networkConfigList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)V
    .locals 0
    .param p1    # Lio/bidmachine/PriceFloorParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    .line 2
    .line 3
    return-void
.end method

.method setTargetingParams(Lio/bidmachine/TargetingParams;)V
    .locals 0
    .param p1    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->targetingParams:Lio/bidmachine/TargetingParams;

    .line 2
    .line 3
    return-void
.end method

.method setTimeOutMs(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->timeOutMs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
