.class public Lcom/amazonaws/services/s3/internal/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;

.field protected static final b:Lcom/amazonaws/util/DateUtils;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    new-instance v0, Lcom/amazonaws/util/DateUtils;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->b:Lcom/amazonaws/util/DateUtils;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->d(Ljava/util/Date;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, ""

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", "

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->h(Ljava/lang/String;)Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->i(Ljava/lang/String;)Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "\""

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sub-int/2addr v0, v2

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :cond_2
    return-object p0
.end method

.method public static f(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/S3ClientOptions;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/S3ClientOptions;->c()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const-string p1, "com.amazonaws.services.s3.disableGetObjectMD5Validation"

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    instance-of p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    check-cast p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->y()[J

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->A()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    instance-of p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 39
    .line 40
    if-eqz p1, :cond_6

    .line 41
    .line 42
    check-cast p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->B()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->G()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    return v0

    .line 57
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->E()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->D()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_7

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->D()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->d()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-nez p1, :cond_5

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->D()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->b()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    if-eqz p0, :cond_7

    .line 85
    .line 86
    :cond_5
    return v0

    .line 87
    :cond_6
    instance-of p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 88
    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    check-cast p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->D()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 94
    .line 95
    .line 96
    :cond_7
    :goto_0
    return v1
.end method
