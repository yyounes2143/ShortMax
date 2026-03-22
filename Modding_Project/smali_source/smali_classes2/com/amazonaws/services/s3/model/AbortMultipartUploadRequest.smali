.class public Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AbortMultipartUploadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->f:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->g:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->h:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->i:Z

    .line 2
    .line 3
    return v0
.end method
