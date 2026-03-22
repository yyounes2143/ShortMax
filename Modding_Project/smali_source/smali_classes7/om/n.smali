.class public abstract Lom/n;
.super Ljava/lang/Object;
.source "PlacementBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdRequestParamsType::",
        "Lxq/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/AdContentType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lom/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lom/g<",
            "TUnifiedAdRequestParamsType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/AdContentType;)V
    .locals 0
    .param p1    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lom/n;->a:Lio/bidmachine/AdContentType;

    .line 5
    .line 6
    new-instance p1, Lom/g;

    .line 7
    .line 8
    invoke-direct {p1}, Lom/g;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lom/n;->b:Lom/g;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lom/n;->h(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic h(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lio/bidmachine/CustomParams;->fillStructBuilder(Lcom/explorestack/protobuf/Struct$Builder;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setCustomData(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract b(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method c(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;
    .locals 1
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lom/n;->b:Lom/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lom/g;->a(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method d(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 8
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;I)",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lom/n;->b:Lom/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Lom/n;->g()Lio/bidmachine/AdContentType;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Lom/g;->b(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Ljava/util/Collection;Ljava/util/List;I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public abstract e(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)Lcom/explorestack/protobuf/Message$Builder;
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;",
            "Lio/bidmachine/AdPlacementConfig;",
            "I)",
            "Lcom/explorestack/protobuf/Message$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method f(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/sdk/Placement;
    .locals 3
    .param p1    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Placement;->newBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getAdsFormat()Lio/bidmachine/AdsFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lio/bidmachine/AdsFormat;->getAdsType()Lio/bidmachine/AdsType;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setAdType(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getPlacementId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-static {v1}, Lcom/explorestack/protobuf/StringValue;->of(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setPlacementId(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getCustomParams()Lio/bidmachine/CustomParams;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v1, Lom/m;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lom/m;-><init>(Lio/bidmachine/protobuf/sdk/Placement$Builder;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->build()Lio/bidmachine/protobuf/sdk/Placement;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public g()Lio/bidmachine/AdContentType;
    .locals 1

    .line 1
    iget-object v0, p0, Lom/n;->a:Lio/bidmachine/AdContentType;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lom/n;->b:Lom/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lom/g;->c(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
