.class public final Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;
.super Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;
.source "MetricsPrefixPredicate.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method
