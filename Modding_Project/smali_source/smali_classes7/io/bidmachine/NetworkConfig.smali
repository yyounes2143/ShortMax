.class public abstract Lio/bidmachine/NetworkConfig;
.super Ljava/lang/Object;
.source "NetworkConfig.java"


# static fields
.field static final CONFIG_SKIP_INITIALIZATION:Ljava/lang/String; = "skip_initialization"


# instance fields
.field private baseMediationConfig:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
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

.field private mergedAdsTypes:[Lio/bidmachine/AdsType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final networkConfigParams:Lio/bidmachine/NetworkConfigParams;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final networkKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final networkParams:Ljava/util/Map;
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

.field private supportedAdsTypes:[Lio/bidmachine/AdsType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private typedMediationConfigs:Ljava/util/EnumMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    new-instance v0, Lio/bidmachine/NetworkConfig$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lio/bidmachine/NetworkConfig$a;-><init>(Lio/bidmachine/NetworkConfig;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->networkConfigParams:Lio/bidmachine/NetworkConfigParams;

    .line 10
    .line 11
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->networkKey:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lio/bidmachine/NetworkConfig;->withNetworkParams(Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/NetworkConfig;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/NetworkConfig;)Ljava/util/EnumMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lio/bidmachine/NetworkConfig;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/NetworkConfig;->prepareTypedMediationConfig(Ljava/util/Map;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p1, v2

    .line 7
    .line 8
    if-ne v3, p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method private prepareTypedMediationConfig(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->useNetworkParamsAsMediationBase()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method


# virtual methods
.method public createNetworkAdUnitList(Lio/bidmachine/AdsType;Lxq/d;Lio/bidmachine/AdContentType;Lio/bidmachine/NetworkAdapter;)Ljava/util/List;
    .locals 6
    .param p1    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lxq/d;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "TT;",
            "Lio/bidmachine/AdContentType;",
            "Lio/bidmachine/NetworkAdapter;",
            ")",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lio/bidmachine/AdsFormat;

    .line 35
    .line 36
    invoke-virtual {v3, p1, p2, p3}, Lio/bidmachine/AdsFormat;->isMatch(Lio/bidmachine/AdsType;Lxq/d;Lio/bidmachine/AdContentType;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/List;

    .line 48
    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/util/Map;

    .line 67
    .line 68
    new-instance v5, Lio/bidmachine/NetworkAdUnit;

    .line 69
    .line 70
    invoke-direct {p0, v4}, Lio/bidmachine/NetworkConfig;->prepareTypedMediationConfig(Ljava/util/Map;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-direct {v5, p4, v3, v4}, Lio/bidmachine/NetworkAdUnit;-><init>(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdsFormat;Ljava/util/Map;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    return-object v0
.end method

.method protected abstract createNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    check-cast p1, Lio/bidmachine/NetworkConfig;

    .line 19
    .line 20
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public varargs forAdTypes([Lio/bidmachine/AdsType;)Lio/bidmachine/NetworkConfig;
    .locals 0
    .param p1    # [Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->supportedAdsTypes:[Lio/bidmachine/AdsType;

    .line 2
    .line 3
    return-object p0
.end method

.method getNetworkConfigParams()Lio/bidmachine/NetworkConfigParams;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkConfigParams:Lio/bidmachine/NetworkConfigParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getSupportedAdsTypes(Lio/bidmachine/NetworkAdapter;)[Lio/bidmachine/AdsType;
    .locals 6
    .param p1    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->mergedAdsTypes:[Lio/bidmachine/AdsType;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lio/bidmachine/NetworkAdapter;->getSupportedTypes()[Lio/bidmachine/AdsType;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    array-length v1, p1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_2

    .line 18
    .line 19
    aget-object v4, p1, v3

    .line 20
    .line 21
    iget-object v5, p0, Lio/bidmachine/NetworkConfig;->supportedAdsTypes:[Lio/bidmachine/AdsType;

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, v5, v4}, Lio/bidmachine/NetworkConfig;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-array p1, v2, [Lio/bidmachine/AdsType;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, [Lio/bidmachine/AdsType;

    .line 44
    .line 45
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->mergedAdsTypes:[Lio/bidmachine/AdsType;

    .line 46
    .line 47
    :cond_3
    iget-object p1, p0, Lio/bidmachine/NetworkConfig;->mergedAdsTypes:[Lio/bidmachine/AdsType;

    .line 48
    .line 49
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method protected internalSetSkipInitialization(Z)Lio/bidmachine/NetworkConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(Z)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "skip_initialization"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/NetworkConfig;->setNetworkParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/NetworkConfig;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public setBaseMediationParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/NetworkConfig;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public setNetworkParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/NetworkConfig;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected useNetworkParamsAsMediationBase()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public withBaseMediationConfig(Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/NetworkConfig;->baseMediationConfig:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .locals 2
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/AdsFormat;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    .line 5
    :cond_1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lio/bidmachine/NetworkConfig;->typedMediationConfigs:Ljava/util/EnumMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-object p0
.end method

.method public withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;Lio/bidmachine/Orientation;)Lio/bidmachine/NetworkConfig;
    .locals 0
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/Orientation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/Orientation;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    const-string p3, "The parameter \'orientation\' is no longer supported and has no effect."

    invoke-static {p3}, Lio/bidmachine/core/a;->l(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object p1

    return-object p1
.end method

.method public withNetworkParams(Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/NetworkConfig;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/NetworkConfig;->networkParams:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object p0
.end method
