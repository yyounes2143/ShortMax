.class public final Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;
.super Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;
.source "MetricsTagPredicate.java"


# instance fields
.field private final a:Lcom/amazonaws/services/s3/model/Tag;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/Tag;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;->a:Lcom/amazonaws/services/s3/model/Tag;

    .line 5
    .line 6
    return-void
.end method
