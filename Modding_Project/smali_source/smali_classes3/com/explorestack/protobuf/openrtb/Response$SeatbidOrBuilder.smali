.class public interface abstract Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SeatbidOrBuilder"
.end annotation


# virtual methods
.method public abstract getBid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
.end method

.method public abstract getBidCount()I
.end method

.method public abstract getBidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBidOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;
.end method

.method public abstract getBidOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getExt()Lcom/explorestack/protobuf/Struct;
.end method

.method public abstract getExtOrBuilder()Lcom/explorestack/protobuf/x1;
.end method

.method public abstract getExtProto(I)Lcom/explorestack/protobuf/Any;
.end method

.method public abstract getExtProtoCount()I
.end method

.method public abstract getExtProtoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/e;
.end method

.method public abstract getExtProtoOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackage()Z
.end method

.method public abstract getSeat()Ljava/lang/String;
.end method

.method public abstract getSeatBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract hasExt()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
