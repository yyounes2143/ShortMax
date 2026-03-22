.class public Lcom/amazonaws/services/s3/model/GetObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private f:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

.field private g:[J

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Date;

.field private k:Ljava/util/Date;

.field private l:Lcom/amazonaws/event/ProgressListener;

.field private m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 3
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->f:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->h:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->i:Ljava/util/List;

    .line 6
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->E(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->F(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->H(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public B()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->j:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->f:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public E(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->f:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->f:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->g(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public G(JJ)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-wide p1, v0, v1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    aput-wide p3, v0, p1

    .line 9
    .line 10
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->g:[J

    .line 11
    .line 12
    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->f:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->h(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f()Lcom/amazonaws/event/ProgressListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->l:Lcom/amazonaws/event/ProgressListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Lcom/amazonaws/event/ProgressListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->l:Lcom/amazonaws/event/ProgressListener;

    .line 2
    .line 3
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->f:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->f:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->k:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->g:[J

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [J

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method public z()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
