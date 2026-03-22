.class public abstract Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Llp/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AdRequestBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType::",
        "Llp/f;",
        "ReturnType:",
        "Lio/bidmachine/AdRequest<",
        "TReturnType;TAdRequestParametersType;*>;AdRequestParametersType:",
        "Lio/bidmachine/AdRequestParameters;",
        ">",
        "Ljava/lang/Object;",
        "Llp/f<",
        "TSelfType;TReturnType;>;"
    }
.end annotation


# instance fields
.field bidPayload:Lio/bidmachine/protobuf/ResponsePayload;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field customParams:Lio/bidmachine/CustomParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field listener:Lio/bidmachine/AdRequest$AdRequestListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TReturnType;>;"
        }
    .end annotation
.end field

.field networkConfigList:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field placementId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field priceFloorParams:Lio/bidmachine/PriceFloorParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field targetingParams:Lio/bidmachine/TargetingParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field timeOutMs:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private fillAdRequestParameters(Lio/bidmachine/AdRequestParameters;)V
    .locals 2
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestParametersType;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/AdRequestParameters;->getAdsFormat()Lio/bidmachine/AdsFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdsFormat;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->placementId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lio/bidmachine/AdPlacementConfig$Builder;->withPlacementId(Ljava/lang/String;)Lio/bidmachine/AdPlacementConfig$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->customParams:Lio/bidmachine/CustomParams;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/bidmachine/AdPlacementConfig$Builder;->withCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/AdPlacementConfig$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setAdPlacementConfig(Lio/bidmachine/AdPlacementConfig;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setTargetingParams(Lio/bidmachine/TargetingParams;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->networkConfigList:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setNetworkConfigList(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->timeOutMs:Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setTimeOutMs(Ljava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequestParameters;->setBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/AdRequest;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TReturnType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    invoke-static {v0}, Lio/bidmachine/s2;->j(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/AdRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->createAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->build(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdRequest;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->fillAdRequestParameters(Lio/bidmachine/AdRequestParameters;)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->listener:Lio/bidmachine/AdRequest$AdRequestListener;

    invoke-virtual {v0, v1}, Lio/bidmachine/AdRequest;->addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    return-object v0
.end method

.method protected abstract build(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdRequest;
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestParametersType;)TReturnType;"
        }
    .end annotation
.end method

.method protected abstract createAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestParametersType;"
        }
    .end annotation
.end method

.method fillNetworkConfigs(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->networkConfigList:Ljava/util/List;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->networkConfigList:Ljava/util/List;

    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public setBidPayload(Ljava/lang/String;)Llp/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lio/bidmachine/protobuf/ResponsePayload;->parseFrom([B)Lio/bidmachine/protobuf/ResponsePayload;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->bidPayload:Lio/bidmachine/protobuf/ResponsePayload;

    .line 32
    .line 33
    :cond_1
    return-object p0
.end method

.method public setCustomParams(Lio/bidmachine/CustomParams;)Llp/f;
    .locals 0
    .param p1    # Lio/bidmachine/CustomParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/CustomParams;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->customParams:Lio/bidmachine/CustomParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Llp/f;
    .locals 0
    .param p1    # Lio/bidmachine/AdRequest$AdRequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TReturnType;>;)TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->listener:Lio/bidmachine/AdRequest$AdRequestListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLoadingTimeOut(Ljava/lang/Integer;)Llp/f;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->timeOutMs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNetworks(Ljava/lang/String;)Llp/f;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSelfType;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 6
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 7
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/j2;->g()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lio/bidmachine/r4;->h(Landroid/content/Context;Lorg/json/JSONObject;)Lio/bidmachine/NetworkConfig;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 9
    :goto_2
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 10
    :cond_2
    :goto_3
    invoke-virtual {p0, v1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->fillNetworkConfigs(Ljava/util/List;)V

    return-object p0
.end method

.method public setNetworks(Ljava/util/List;)Llp/f;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)TSelfType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->fillNetworkConfigs(Ljava/util/List;)V

    return-object p0
.end method

.method public setPlacementId(Ljava/lang/String;)Llp/f;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Llp/f;
    .locals 0
    .param p1    # Lio/bidmachine/PriceFloorParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/PriceFloorParams;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSessionAdParams(Lio/bidmachine/SessionAdParams;)Llp/f;
    .locals 0
    .param p1    # Lio/bidmachine/SessionAdParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/SessionAdParams;",
            ")TSelfType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-object p0
.end method

.method public setTargetingParams(Lio/bidmachine/TargetingParams;)Llp/f;
    .locals 0
    .param p1    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TargetingParams;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    .line 2
    .line 3
    return-object p0
.end method
