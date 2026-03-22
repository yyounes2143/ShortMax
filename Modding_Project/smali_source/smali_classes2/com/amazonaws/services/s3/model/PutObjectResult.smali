.class public Lcom/amazonaws/services/s3/model/PutObjectResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "PutObjectResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Lcom/amazonaws/services/s3/internal/S3VersionResult;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private j:Z


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
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public j(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->f:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public n(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectResult;->i:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 2
    .line 3
    return-void
.end method
