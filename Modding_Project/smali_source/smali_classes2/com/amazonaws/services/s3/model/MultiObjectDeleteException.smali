.class public Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;
.super Lcom/amazonaws/services/s3/model/AmazonS3Exception;
.source "MultiObjectDeleteException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;
    }
.end annotation


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/amazonaws/AmazonServiceException;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
