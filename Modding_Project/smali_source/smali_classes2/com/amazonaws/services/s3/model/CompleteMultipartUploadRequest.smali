.class public Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CompleteMultipartUploadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->f:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->g:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->h:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->i:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->j:Z

    .line 2
    .line 3
    return v0
.end method
