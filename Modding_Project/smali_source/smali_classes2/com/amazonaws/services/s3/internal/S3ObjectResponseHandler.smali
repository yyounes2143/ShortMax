.class public Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;
.super Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;
.source "S3ObjectResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler<",
        "Lcom/amazonaws/services/s3/model/S3Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public bridge synthetic b(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;->e(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "Lcom/amazonaws/services/s3/model/S3Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Object;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string/jumbo v3, "x-amz-website-redirect-location"

    .line 15
    .line 16
    .line 17
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->u(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string/jumbo v3, "x-amz-request-charged"

    .line 41
    .line 42
    .line 43
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->b(Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string/jumbo v3, "x-amz-tagging-count"

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->v(Ljava/lang/Integer;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->q()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p0, p1, v2}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->d(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->b()Ljava/io/InputStream;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->t(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lcom/amazonaws/AmazonWebServiceResponse;->d(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-object v1
.end method
