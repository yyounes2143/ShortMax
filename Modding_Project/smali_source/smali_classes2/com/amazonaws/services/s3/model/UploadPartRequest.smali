.class public Lcom/amazonaws/services/s3/model/UploadPartRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "UploadPartRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private f:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:J

.field private n:Ljava/lang/String;

.field private transient o:Ljava/io/InputStream;

.field private p:Ljava/io/File;

.field private q:J

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->f:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public C()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public D()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public G(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p:Ljava/io/File;

    .line 2
    .line 3
    return-void
.end method

.method public H(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->q:J

    .line 2
    .line 3
    return-void
.end method

.method public I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public J(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public K(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->G(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public L(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->H(J)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public M(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->g:I

    .line 2
    .line 3
    return-object p0
.end method

.method public N(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public O(Z)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->I(Z)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public P(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->h:I

    .line 2
    .line 3
    return-object p0
.end method

.method public Q(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->l:I

    .line 2
    .line 3
    return-object p0
.end method

.method public S(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->m:J

    .line 2
    .line 3
    return-object p0
.end method

.method public U(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->p:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->q:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public v()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->o:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
