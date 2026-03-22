.class public Lcom/amazonaws/services/s3/model/analytics/AnalyticsAndOperator;
.super Lcom/amazonaws/services/s3/model/analytics/AnalyticsNAryOperator;
.source "AnalyticsAndOperator.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsNAryOperator;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
