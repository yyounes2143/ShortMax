.class public Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;
.super Ljava/lang/Object;
.source "ServerSideEncryptionHeaderHandler.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;",
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
    check-cast p1, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;->b(Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;Lcom/amazonaws/http/HttpResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;Lcom/amazonaws/http/HttpResponse;)V
    .locals 2
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
    move-result-object v0

    .line 5
    const-string/jumbo v1, "x-amz-server-side-encryption"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string/jumbo v1, "x-amz-server-side-encryption-customer-algorithm"

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->h(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string/jumbo v0, "x-amz-server-side-encryption-customer-key-MD5"

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->k(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
