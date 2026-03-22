.class final Lio/bidmachine/c1;
.super Ljava/lang/Object;
.source "AuctionResultImpl.java"

# interfaces
.implements Llp/c;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:D

.field private final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Ljava/util/Map;
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

.field private final j:Lio/bidmachine/CreativeFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final k:Ljava/util/Map;
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


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/protobuf/AdExtension;)V
    .locals 2
    .param p1    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/protobuf/AdExtension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lio/bidmachine/c1;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeat()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lio/bidmachine/c1;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPrice()D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lio/bidmachine/c1;->c:D

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDeal()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lio/bidmachine/c1;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lio/bidmachine/c1;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getCid()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lio/bidmachine/c1;->f:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainCount()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-lez p2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainList()Lcom/explorestack/protobuf/m1;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const/4 p3, 0x0

    .line 51
    new-array p3, p3, [Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, [Ljava/lang/String;

    .line 58
    .line 59
    iput-object p2, p0, Lio/bidmachine/c1;->g:[Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p2, 0x0

    .line 63
    iput-object p2, p0, Lio/bidmachine/c1;->g:[Ljava/lang/String;

    .line 64
    .line 65
    :goto_0
    invoke-direct {p0, p6}, Lio/bidmachine/c1;->e(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iput-object p2, p0, Lio/bidmachine/c1;->k:Ljava/util/Map;

    .line 70
    .line 71
    invoke-virtual {p5}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iput-object p2, p0, Lio/bidmachine/c1;->h:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, p4}, Lio/bidmachine/AdsType;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lio/bidmachine/c1;->d(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lio/bidmachine/c1;->i:Ljava/util/Map;

    .line 86
    .line 87
    invoke-static {p4}, Lio/bidmachine/c1;->f(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/CreativeFormat;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lio/bidmachine/c1;->j:Lio/bidmachine/CreativeFormat;

    .line 92
    .line 93
    return-void
.end method

.method private e(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/Map;
    .locals 1
    .param p1    # Lio/bidmachine/protobuf/AdExtension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/protobuf/AdExtension;",
            ")",
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
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCustomParamsMap()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    :cond_0
    return-object v0
.end method

.method static f(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/CreativeFormat;
    .locals 1
    .param p0    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    sget-object p0, Lio/bidmachine/CreativeFormat;->Native:Lio/bidmachine/CreativeFormat;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lio/bidmachine/CreativeFormat;->Banner:Lio/bidmachine/CreativeFormat;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_3

    .line 45
    .line 46
    sget-object p0, Lio/bidmachine/CreativeFormat;->Video:Lio/bidmachine/CreativeFormat;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/c1;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/util/Map;
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
    iget-object v0, p0, Lio/bidmachine/c1;->i:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lio/bidmachine/CreativeFormat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/c1;->j:Lio/bidmachine/CreativeFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method d(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/util/Map;
    .locals 1
    .param p1    # Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;",
            ")",
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
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getClientParamsMap()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/c1;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
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
    iget-object v0, p0, Lio/bidmachine/c1;->k:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeal()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/c1;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/c1;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/c1;->c:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/c1;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", demandSource="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/bidmachine/c1;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", price="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lio/bidmachine/c1;->c:D

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", creativeId="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/bidmachine/c1;->e:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", cid="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lio/bidmachine/c1;->f:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
