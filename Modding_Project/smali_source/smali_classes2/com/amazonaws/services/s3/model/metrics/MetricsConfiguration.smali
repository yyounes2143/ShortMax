.class public Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;
.super Ljava/lang/Object;
.source "MetricsConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;


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
.method public b(Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->b:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
