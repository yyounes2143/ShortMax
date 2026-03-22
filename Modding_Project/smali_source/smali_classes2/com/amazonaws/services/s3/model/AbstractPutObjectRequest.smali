.class public abstract Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AbstractPutObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/io/File;

.field private transient i:Ljava/io/InputStream;

.field private j:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private k:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private l:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

.field private p:Lcom/amazonaws/services/s3/model/ObjectTagging;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->f:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->g:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->h:Ljava/io/File;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->j:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public D()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->o:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public G()Lcom/amazonaws/services/s3/model/ObjectTagging;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->p:Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 2
    .line 3
    return-object v0
.end method

.method public H(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->l:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 2
    .line 3
    return-void
.end method

.method public I(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->k:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 2
    .line 3
    return-void
.end method

.method public J(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->i:Ljava/io/InputStream;

    .line 2
    .line 3
    return-void
.end method

.method public K(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->j:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 2
    .line 3
    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public M(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->o:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 2
    .line 3
    return-void
.end method

.method public N(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0

    .line 1
    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public P(Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->p:Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 2
    .line 3
    return-void
.end method

.method public Q(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/AccessControlList;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->H(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public S(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/CannedAccessControlList;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->I(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public U(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->J(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public V(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->K(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public W(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public X(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->M(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public Y(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Lcom/amazonaws/services/s3/model/SSECustomerKey;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->N(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public Z(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->O(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public bridge synthetic b()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->r()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->r()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public r()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->b()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 6
    .line 7
    return-object v0
.end method

.method protected final s(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceRequest;->e(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->B()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->t()Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->Q(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->v()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->S(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->z()Ljava/io/InputStream;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->U(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    move-object v0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->q()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->V(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->C()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->W(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->F()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->Z(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->D()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->X(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->E()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->Y(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method

.method public t()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->l:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->k:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->h:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->i:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method
