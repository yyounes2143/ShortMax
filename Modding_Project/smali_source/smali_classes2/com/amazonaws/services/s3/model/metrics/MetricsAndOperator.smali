.class public final Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;
.super Lcom/amazonaws/services/s3/model/metrics/MetricsNAryOperator;
.source "MetricsAndOperator.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsNAryOperator;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
