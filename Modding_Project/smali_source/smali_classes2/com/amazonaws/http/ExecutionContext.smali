.class public Lcom/amazonaws/http/ExecutionContext;
.super Ljava/lang/Object;
.source "ExecutionContext.java"


# instance fields
.field private final a:Lcom/amazonaws/util/AWSRequestMetrics;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private final d:Lcom/amazonaws/AmazonWebServiceClient;

.field private e:Lcom/amazonaws/auth/AWSCredentials;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;Z",
            "Lcom/amazonaws/AmazonWebServiceClient;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->b:Ljava/util/List;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;-><init>()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/amazonaws/util/AWSRequestMetrics;

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/amazonaws/util/AWSRequestMetrics;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/amazonaws/http/ExecutionContext;->d:Lcom/amazonaws/AmazonWebServiceClient;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/util/AWSRequestMetrics;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->e:Lcom/amazonaws/auth/AWSCredentials;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->d:Lcom/amazonaws/AmazonWebServiceClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->C(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    return-object p1
.end method

.method public f(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->e:Lcom/amazonaws/auth/AWSCredentials;

    .line 2
    .line 3
    return-void
.end method

.method public g(Lcom/amazonaws/auth/Signer;)V
    .locals 0

    .line 1
    return-void
.end method
