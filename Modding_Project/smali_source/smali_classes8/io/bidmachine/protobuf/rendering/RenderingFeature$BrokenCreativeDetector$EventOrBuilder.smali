.class public interface abstract Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$EventOrBuilder;
.super Ljava/lang/Object;
.source "RenderingFeature.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlgorithmsResults(I)Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$AlgorithmResult;
.end method

.method public abstract getAlgorithmsResultsCount()I
.end method

.method public abstract getAlgorithmsResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$AlgorithmResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlgorithmsResultsOrBuilder(I)Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$AlgorithmResultOrBuilder;
.end method

.method public abstract getAlgorithmsResultsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$AlgorithmResultOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getComponent()Ljava/lang/String;
.end method

.method public abstract getComponentBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getDuration()D
.end method

.method public abstract getPhase()I
.end method

.method public abstract getResult()I
.end method

.method public abstract synthetic isInitialized()Z
.end method
