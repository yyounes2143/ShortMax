.class public interface abstract Lio/bidmachine/protobuf/Waterfall$ResultOrBuilder;
.super Ljava/lang/Object;
.source "Waterfall.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/Waterfall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultOrBuilder"
.end annotation


# virtual methods
.method public abstract getAdUnitResults(I)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
.end method

.method public abstract getAdUnitResultsCount()I
.end method

.method public abstract getAdUnitResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdUnitResultsOrBuilder(I)Lio/bidmachine/protobuf/Waterfall$Result$AdUnitOrBuilder;
.end method

.method public abstract getAdUnitResultsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/Waterfall$Result$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCachedAdUnits(I)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit;
.end method

.method public abstract getCachedAdUnitsCount()I
.end method

.method public abstract getCachedAdUnitsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCachedAdUnitsOrBuilder(I)Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnitOrBuilder;
.end method

.method public abstract getCachedAdUnitsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/Waterfall$Result$CachedAdUnitOrBuilder;",
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

.method public abstract getFormat()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getFormatOrBuilder()Lcom/explorestack/protobuf/w1;
.end method

.method public abstract getServerParams()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getServerParamsOrBuilder()Lcom/explorestack/protobuf/w1;
.end method

.method public abstract getWaterfallId()Ljava/lang/String;
.end method

.method public abstract getWaterfallIdBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract hasExt()Z
.end method

.method public abstract hasFormat()Z
.end method

.method public abstract hasServerParams()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
