.class public Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;
.super Ljava/lang/Object;
.source "S3RequesterChargedHeaderHandler.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/services/s3/internal/HeaderHandler<",
        "TT;>;"
    }
.end annotation


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
.method public bridge synthetic a(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;->b(Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;Lcom/amazonaws/http/HttpResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;Lcom/amazonaws/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string/jumbo v0, "x-amz-request-charged"

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p2, 0x0

    .line 17
    :goto_0
    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;->b(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
