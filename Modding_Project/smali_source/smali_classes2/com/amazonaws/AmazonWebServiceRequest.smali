.class public abstract Lcom/amazonaws/AmazonWebServiceRequest;
.super Ljava/lang/Object;
.source "AmazonWebServiceRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lcom/amazonaws/event/ProgressListener;

.field private final b:Lcom/amazonaws/RequestClientOptions;

.field private c:Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private d:Lcom/amazonaws/auth/AWSCredentials;

.field private e:Lcom/amazonaws/AmazonWebServiceRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/RequestClientOptions;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/amazonaws/RequestClientOptions;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->b:Lcom/amazonaws/RequestClientOptions;

    .line 10
    .line 11
    return-void
.end method

.method private k(Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->e:Lcom/amazonaws/AmazonWebServiceRequest;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public b()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/amazonaws/AmazonWebServiceRequest;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/amazonaws/AmazonWebServiceRequest;->k(Lcom/amazonaws/AmazonWebServiceRequest;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v2, "Got a CloneNotSupportedException from Object.clone() even though we\'re Cloneable!"

    .line 15
    .line 16
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->b()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected final e(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->a:Lcom/amazonaws/event/ProgressListener;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonWebServiceRequest;->n(Lcom/amazonaws/event/ProgressListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->c:Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonWebServiceRequest;->q(Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public f()Lcom/amazonaws/event/ProgressListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->a:Lcom/amazonaws/event/ProgressListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lcom/amazonaws/RequestClientOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->b:Lcom/amazonaws/RequestClientOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->d:Lcom/amazonaws/auth/AWSCredentials;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->c:Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Lcom/amazonaws/event/ProgressListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->a:Lcom/amazonaws/event/ProgressListener;

    .line 2
    .line 3
    return-void
.end method

.method public q(Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->c:Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 2
    .line 3
    return-void
.end method
