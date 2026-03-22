.class public interface abstract Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$SessionMetricsOrBuilder;
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
    name = "SessionMetricsOrBuilder"
.end annotation


# virtual methods
.method public abstract getAdRequests(I)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdRequestMetrics;
.end method

.method public abstract getAdRequestsCount()I
.end method

.method public abstract getAdRequestsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdRequestMetrics;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdRequestsOrBuilder(I)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdRequestMetricsOrBuilder;
.end method

.method public abstract getAdRequestsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdRequestMetricsOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentSession()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession;
.end method

.method public abstract getCurrentSessionOrBuilder()Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSessionOrBuilder;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getImpressions(I)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$ImpressionMetrics;
.end method

.method public abstract getImpressionsCount()I
.end method

.method public abstract getImpressionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$ImpressionMetrics;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImpressionsOrBuilder(I)Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$ImpressionMetricsOrBuilder;
.end method

.method public abstract getImpressionsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$ImpressionMetricsOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCurrentSession()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
