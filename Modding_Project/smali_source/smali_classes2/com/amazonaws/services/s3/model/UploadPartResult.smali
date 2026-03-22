.class public Lcom/amazonaws/services/s3/model/UploadPartResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "UploadPartResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->d:I

    .line 2
    .line 3
    return-void
.end method
