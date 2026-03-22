.class public interface abstract Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession$AuctionOrBuilder;
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
    name = "AuctionOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getLosersBidderId(I)I
.end method

.method public abstract getLosersBidderIdCount()I
.end method

.method public abstract getLosersBidderIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSourceRequestId()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getWinnerBidderId()I
.end method

.method public abstract synthetic isInitialized()Z
.end method
