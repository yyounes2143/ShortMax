.class public Lcom/amazonaws/services/s3/model/PutObjectRequest;
.super Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
.source "PutObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private q:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic Q(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->p0(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic S(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->q0(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic U(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->r0(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic V(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->s0(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic W(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->u0(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic X(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->v0(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic Y(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->x0(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic Z(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->y0(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public a0()Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->r()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->s(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 12
    .line 13
    return-object v0
.end method

.method public bridge synthetic b()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a0()Lcom/amazonaws/services/s3/model/PutObjectRequest;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a0()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public l0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public p0(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->Q(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method public q0(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->S(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic r()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->a0()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public r0(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->U(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method public s0(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->V(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method public u0(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->W(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method public v0(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->X(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method public x0(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->Y(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method public y0(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->Z(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 6
    .line 7
    return-object p1
.end method
