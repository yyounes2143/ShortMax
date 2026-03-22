.class public Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;
.super Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;
.source "S3MetadataResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler<",
        "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
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
.method public bridge synthetic b(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;->e(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->d(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonWebServiceResponse;->d(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method
