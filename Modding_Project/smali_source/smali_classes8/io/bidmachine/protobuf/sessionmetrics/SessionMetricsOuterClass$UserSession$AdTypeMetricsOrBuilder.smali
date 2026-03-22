.class public interface abstract Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AdTypeMetricsOrBuilder;
.super Ljava/lang/Object;
.source "SessionMetricsOuterClass.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdTypeMetricsOrBuilder"
.end annotation


# virtual methods
.method public abstract getAdRequests()I
.end method

.method public abstract getAdType()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;
.end method

.method public abstract getAdTypeValue()I
.end method

.method public abstract getAuctions(I)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Auction;
.end method

.method public abstract getAuctionsCount()I
.end method

.method public abstract getAuctionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Auction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuctionsOrBuilder(I)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AuctionOrBuilder;
.end method

.method public abstract getAuctionsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AuctionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBids()I
.end method

.method public abstract getCumulativeBidPrice()F
.end method

.method public abstract getCumulativeLurlPrice()F
.end method

.method public abstract getCumulativeNurlPrice()F
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getEcpm()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$Ecpm;
.end method

.method public abstract getEcpmOrBuilder()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$EcpmOrBuilder;
.end method

.method public abstract getImpressions()I
.end method

.method public abstract getLosses()I
.end method

.method public abstract getLurls()I
.end method

.method public abstract getNurls()I
.end method

.method public abstract getWins()I
.end method

.method public abstract hasEcpm()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
