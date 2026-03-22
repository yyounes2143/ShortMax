.class public interface abstract Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$TimestampsOrBuilder;
.super Ljava/lang/Object;
.source "SessionMetricsOuterClass.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimestampsOrBuilder"
.end annotation


# virtual methods
.method public abstract getDayBuckets(I)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$Timestamps$DayBucket;
.end method

.method public abstract getDayBucketsCount()I
.end method

.method public abstract getDayBucketsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$Timestamps$DayBucket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDayBucketsOrBuilder(I)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$Timestamps$DayBucketOrBuilder;
.end method

.method public abstract getDayBucketsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$Timestamps$DayBucketOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getDeltas(I)I
.end method

.method public abstract getDeltasCount()I
.end method

.method public abstract getDeltasList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastTimestamp()J
.end method

.method public abstract synthetic isInitialized()Z
.end method
