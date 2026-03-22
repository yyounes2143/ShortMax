.class public Lcom/adjust/sdk/AdjustAdRevenue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/adjust/sdk/ILogger;


# instance fields
.field adImpressionsCount:Ljava/lang/Integer;

.field adRevenueNetwork:Ljava/lang/String;

.field adRevenuePlacement:Ljava/lang/String;

.field adRevenueUnit:Ljava/lang/String;

.field callbackParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field currency:Ljava/lang/String;

.field partnerParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field revenue:Ljava/lang/Double;

.field source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/adjust/sdk/AdjustAdRevenue;->logger:Lcom/adjust/sdk/ILogger;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/adjust/sdk/AdjustAdRevenue;->isValidSource(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/adjust/sdk/AdjustAdRevenue;->source:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private isValidSource(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/adjust/sdk/AdjustAdRevenue;->logger:Lcom/adjust/sdk/ILogger;

    .line 5
    .line 6
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v2, "Missing source"

    .line 9
    .line 10
    invoke-interface {p1, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    sget-object p1, Lcom/adjust/sdk/AdjustAdRevenue;->logger:Lcom/adjust/sdk/ILogger;

    .line 21
    .line 22
    new-array v1, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v2, "Source can\'t be empty"

    .line 25
    .line 26
    invoke-interface {p1, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    const/4 p1, 0x1

    .line 31
    return p1
.end method


# virtual methods
.method public addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    const-string v1, "Callback"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string/jumbo v0, "value"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->callbackParameters:Ljava/util/Map;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->callbackParameters:Ljava/util/Map;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->callbackParameters:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    sget-object p2, Lcom/adjust/sdk/AdjustAdRevenue;->logger:Lcom/adjust/sdk/ILogger;

    .line 44
    .line 45
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v0, "Key %s was overwritten"

    .line 50
    .line 51
    invoke-interface {p2, v0, p1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    const-string v1, "Partner"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string/jumbo v0, "value"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->partnerParameters:Ljava/util/Map;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->partnerParameters:Ljava/util/Map;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->partnerParameters:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    sget-object p2, Lcom/adjust/sdk/AdjustAdRevenue;->logger:Lcom/adjust/sdk/ILogger;

    .line 44
    .line 45
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v0, "Key %s was overwritten"

    .line 50
    .line 51
    invoke-interface {p2, v0, p1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public getAdImpressionsCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->adImpressionsCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdRevenueNetwork()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->adRevenueNetwork:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdRevenuePlacement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->adRevenuePlacement:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdRevenueUnit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->adRevenueUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallbackParameters()Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->callbackParameters:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPartnerParameters()Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->partnerParameters:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRevenue()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->revenue:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->source:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustAdRevenue;->source:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustAdRevenue;->isValidSource(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAdImpressionsCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustAdRevenue;->adImpressionsCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setAdRevenueNetwork(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustAdRevenue;->adRevenueNetwork:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdRevenuePlacement(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustAdRevenue;->adRevenuePlacement:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdRevenueUnit(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustAdRevenue;->adRevenueUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRevenue(Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustAdRevenue;->revenue:Ljava/lang/Double;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/adjust/sdk/AdjustAdRevenue;->currency:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method
