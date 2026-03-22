.class public Lcom/applovin/impl/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/MaxAd;


# instance fields
.field private final a:Lcom/applovin/impl/x2;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/applovin/impl/h;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    invoke-direct {v6, v0, v0, v0, v0}, Lcom/applovin/impl/h;-><init>(IIII)V

    .line 8
    .line 9
    .line 10
    new-instance v7, Lcom/applovin/impl/x2;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    move-object v0, v7

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/x2;-><init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/h;)V

    .line 28
    .line 29
    .line 30
    iput-object v7, p0, Lcom/applovin/impl/u3;->a:Lcom/applovin/impl/x2;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/applovin/impl/u3;->b:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public getAdReviewCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/u3;->a:Lcom/applovin/impl/x2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAdValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAdValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getDspId()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getDspName()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getFormat()Lcom/applovin/mediation/MaxAdFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/u3;->a:Lcom/applovin/impl/x2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNativeAd()Lcom/applovin/mediation/nativeAds/MaxNativeAd;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkPlacement()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/u3;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestLatencyMillis()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRevenue()D
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRevenuePrecision()Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "undefined"

    .line 2
    .line 3
    .line 4
    return-object v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/u3;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getWaterfall()Lcom/applovin/mediation/MaxAdWaterfallInfo;
    .locals 12

    .line 1
    new-instance v11, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;

    .line 2
    .line 3
    new-instance v6, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v7, p0, Lcom/applovin/impl/u3;->a:Lcom/applovin/impl/x2;

    .line 9
    .line 10
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    .line 12
    const-string v9, ""

    .line 13
    .line 14
    const-string v10, ""

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, ""

    .line 18
    .line 19
    const-string v3, ""

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    move-object v0, v11

    .line 24
    invoke-direct/range {v0 .. v10}, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;-><init>(Lcom/applovin/impl/v2;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/x2;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v11
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "MaxAd{adUnitId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/applovin/impl/u3;->a:Lcom/applovin/impl/x2;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", format="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/applovin/impl/u3;->a:Lcom/applovin/impl/x2;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "}"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
