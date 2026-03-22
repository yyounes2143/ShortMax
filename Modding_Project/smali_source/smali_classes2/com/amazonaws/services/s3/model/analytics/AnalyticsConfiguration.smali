.class public Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
.super Ljava/lang/Object;
.source "AnalyticsConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

.field private c:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->b:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public e(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->c:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    .line 2
    .line 3
    return-void
.end method
