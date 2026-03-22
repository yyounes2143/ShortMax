.class public Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "InitiateMultipartUploadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field public h:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private i:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private j:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private k:Lcom/amazonaws/services/s3/model/StorageClass;

.field private l:Ljava/lang/String;

.field private m:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

.field private n:Z

.field private o:Lcom/amazonaws/services/s3/model/ObjectTagging;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->f:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->g:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public A()Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->k:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Lcom/amazonaws/services/s3/model/ObjectTagging;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->o:Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public D(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->h:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 2
    .line 3
    return-void
.end method

.method public E(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->m:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 2
    .line 3
    return-void
.end method

.method public F(Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->o:Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 2
    .line 3
    return-void
.end method

.method public G(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->i:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 2
    .line 3
    return-object p0
.end method

.method public H(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->D(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public I(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->E(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public J(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->F(Lcom/amazonaws/services/s3/model/ObjectTagging;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public r()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->j:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->i:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->m:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
