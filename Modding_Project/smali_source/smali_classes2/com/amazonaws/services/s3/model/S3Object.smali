.class public Lcom/amazonaws/services/s3/model/S3Object;
.super Ljava/lang/Object;
.source "S3Object.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Serializable;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private transient d:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->a:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->b:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->c:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->k()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->k()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->d:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->c:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 2
    .line 3
    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public t(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->d:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "S3Object [key="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->d()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ",bucket="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3Object;->b:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string v1, "<Unknown>"

    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "]"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public v(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
