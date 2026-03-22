.class public Lcom/amazonaws/services/s3/AmazonS3Client;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonS3Client.java"

# interfaces
.implements Lcom/amazonaws/services/s3/AmazonS3;


# static fields
.field private static s:Lcom/amazonaws/logging/Log;

.field private static final t:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private static final u:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

.field private static final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final l:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

.field private final m:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Lcom/amazonaws/services/s3/S3ClientOptions;

.field private final o:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field volatile p:Ljava/lang/String;

.field private q:I

.field private final r:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    invoke-static {}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->b()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    const-string v0, "AWSS3V4SignerType"

    .line 21
    .line 22
    const-class v1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/amazonaws/auth/SignerFactory;->e(Ljava/lang/String;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->t:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 33
    .line 34
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->u:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    .line 40
    .line 41
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client$1;

    .line 42
    .line 43
    const v1, 0x3f8ccccd    # 1.1f

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    const/16 v3, 0x12c

    .line 48
    .line 49
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client$1;-><init>(IFZ)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Ljava/util/Map;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 5
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 6
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->m:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 7
    new-instance p2, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    const/16 p2, 0x400

    .line 8
    iput p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:I

    .line 9
    new-instance p2, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 10
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 11
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b0()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p3}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    .line 14
    invoke-direct {p0, p3, p4}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 15
    new-instance p4, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 16
    new-instance p4, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->m:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 17
    new-instance p4, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    const/16 p4, 0x400

    .line 18
    iput p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:I

    .line 19
    new-instance p4, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 20
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 21
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->c0(Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method private static J(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "+",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazonaws/services/s3/model/AccessControlList;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->e()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/amazonaws/services/s3/model/Grant;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->b()Lcom/amazonaws/services/s3/model/Permission;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->b()Lcom/amazonaws/services/s3/model/Permission;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Ljava/util/LinkedList;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->b()Lcom/amazonaws/services/s3/model/Permission;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/util/Collection;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->a()Lcom/amazonaws/services/s3/model/Grantee;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Lcom/amazonaws/services/s3/model/Permission;->values()[Lcom/amazonaws/services/s3/model/Permission;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    array-length v1, p1

    .line 71
    const/4 v2, 0x0

    .line 72
    move v3, v2

    .line 73
    :goto_1
    if-ge v3, v1, :cond_5

    .line 74
    .line 75
    aget-object v4, p1, v3

    .line 76
    .line 77
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Ljava/util/Collection;

    .line 88
    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    move v7, v2

    .line 99
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_3

    .line 104
    .line 105
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    check-cast v8, Lcom/amazonaws/services/s3/model/Grantee;

    .line 110
    .line 111
    if-nez v7, :cond_2

    .line 112
    .line 113
    const/4 v7, 0x1

    .line 114
    goto :goto_3

    .line 115
    :cond_2
    const-string v9, ", "

    .line 116
    .line 117
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :goto_3
    invoke-interface {v8}, Lcom/amazonaws/services/s3/model/Grantee;->getTypeIdentifier()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v9, "="

    .line 128
    .line 129
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v9, "\""

    .line 133
    .line 134
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-interface {v8}, Lcom/amazonaws/services/s3/model/Grantee;->getIdentifier()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/Permission;->getHeaderName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-interface {p0, v4, v5}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    return-void
.end method

.method private static K(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Ljava/util/Date;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static L(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static M(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method private static N(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->b(Ljava/util/List;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private O(Ljava/io/InputStream;)J
    .locals 6

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eq v4, v1, :cond_0

    .line 16
    .line 17
    int-to-long v4, v4

    .line 18
    add-long/2addr v2, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-wide v2

    .line 24
    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    .line 26
    .line 27
    const-string v1, "Could not calculate content length."

    .line 28
    .line 29
    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method private P(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "://"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "."

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "Invalid bucket name: "

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method private S(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/services/s3/internal/S3Signer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "/"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p2, v2

    .line 32
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object p3, v2

    .line 39
    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    new-instance p3, Lcom/amazonaws/services/s3/internal/S3Signer;

    .line 47
    .line 48
    invoke-interface {p1}, Lcom/amazonaws/Request;->j()Lcom/amazonaws/http/HttpMethodName;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p3, p1, p2}, Lcom/amazonaws/services/s3/internal/S3Signer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p3
.end method

.method private U(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->i()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "Bucket region cache doesn\'t have an entry for "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, ". Trying to get bucket region from Amazon S3."

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->W(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_1
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 56
    .line 57
    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->i()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "Region for "

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, " is "

    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {v0, p1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-object v1
.end method

.method private V(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->c(Lcom/amazonaws/event/ProgressEvent;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private W(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v4, Lcom/amazonaws/services/s3/model/HeadBucketRequest;

    .line 3
    .line 4
    invoke-direct {v4, p1}, Lcom/amazonaws/services/s3/model/HeadBucketRequest;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v5, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    .line 8
    .line 9
    new-instance v6, Ljava/net/URI;

    .line 10
    .line 11
    const-string v1, "https://s3-us-west-1.amazonaws.com"

    .line 12
    .line 13
    invoke-direct {v6, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->R(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->d0(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/amazonaws/services/s3/model/HeadBucketResult;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/HeadBucketResult;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v1

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 42
    .line 43
    const-string v2, "Error while creating URI"

    .line 44
    .line 45
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :goto_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->r()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->r()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string/jumbo v1, "x-amz-bucket-region"

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/String;

    .line 67
    .line 68
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 69
    .line 70
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 71
    .line 72
    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->i()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "Not able to derive region of the "

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, " from the HEAD Bucket requests."

    .line 94
    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {v1, p1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-object v0
.end method

.method private X(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "/"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_0
    return-object p1
.end method

.method private Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "/"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p2, ""

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private a0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-object v0
.end method

.method private b0()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "s3.amazonaws.com"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "s3"

    .line 7
    .line 8
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->i:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    .line 16
    .line 17
    const-string v2, "/com/amazonaws/services/s3/request.handlers"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->c(Ljava/lang/String;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    .line 27
    .line 28
    const-string v2, "/com/amazonaws/services/s3/request.handler2s"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private c0(Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 8
    .line 9
    const-string p2, "s3"

    .line 10
    .line 11
    iput-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->i:Ljava/lang/String;

    .line 12
    .line 13
    const-string p2, "s3.amazonaws.com"

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/regions/Region;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/amazonaws/handlers/HandlerChainFactory;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    .line 27
    .line 28
    const-string v0, "/com/amazonaws/services/s3/request.handlers"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/amazonaws/handlers/HandlerChainFactory;->c(Ljava/lang/String;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    .line 38
    .line 39
    const-string v0, "/com/amazonaws/services/s3/request.handler2s"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    sget-object p1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v0, "initialized with endpoint = "

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string p2, "Region cannot be null. Region is required to sign the request"

    .line 76
    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string p2, "Credentials cannot be null. Credentials is required to sign the request"

    .line 84
    .line 85
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method private d0(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request<",
            "TY;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TX;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 1
    const-string v0, "Content-Type"

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/amazonaws/Request;->r()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->u(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {p1, v3}, Lcom/amazonaws/Request;->f(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 16
    .line 17
    .line 18
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    :try_start_0
    iget-wide v5, p0, Lcom/amazonaws/AmazonWebServiceClient;->f:J

    .line 25
    .line 26
    invoke-interface {p1, v5, v6}, Lcom/amazonaws/Request;->o(J)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    const-string v5, "application/octet-stream"

    .line 40
    .line 41
    invoke-interface {p1, v0, v5}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception p2

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 50
    .line 51
    invoke-interface {p1}, Lcom/amazonaws/Request;->r()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->h0(Lcom/amazonaws/Request;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->U(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 64
    .line 65
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->i()Lcom/amazonaws/auth/AWSCredentials;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->i()Lcom/amazonaws/auth/AWSCredentials;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->T(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    invoke-virtual {v2, p4}, Lcom/amazonaws/http/ExecutionContext;->g(Lcom/amazonaws/auth/Signer;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Lcom/amazonaws/http/ExecutionContext;->f(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 87
    .line 88
    .line 89
    iget-object p4, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 92
    .line 93
    invoke-virtual {p4, p1, p2, v0, v2}, Lcom/amazonaws/http/AmazonHttpClient;->d(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p2
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p0, v3, p1, v4}, Lcom/amazonaws/AmazonWebServiceClient;->v(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 102
    .line 103
    .line 104
    return-object p2

    .line 105
    :goto_1
    :try_start_1
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->g()I

    .line 106
    .line 107
    .line 108
    move-result p4

    .line 109
    const/16 v0, 0x12d

    .line 110
    .line 111
    if-ne p4, v0, :cond_3

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->r()Ljava/util/Map;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    if-eqz p4, :cond_3

    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->r()Ljava/util/Map;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    const-string/jumbo v0, "x-amz-bucket-region"

    .line 124
    .line 125
    .line 126
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p4

    .line 130
    check-cast p4, Ljava/lang/String;

    .line 131
    .line 132
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Ljava/util/Map;

    .line 133
    .line 134
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    new-instance p3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v0, "The bucket is in this region: "

    .line 143
    .line 144
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string p4, ". Please use this region to retry the request"

    .line 151
    .line 152
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->i(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :goto_2
    invoke-virtual {p0, v3, p1, v4}, Lcom/amazonaws/AmazonWebServiceClient;->v(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 164
    .line 165
    .line 166
    throw p2
.end method

.method private e0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private f0(Ljava/net/URI;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "s3.amazonaws.com"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method static g0(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "\\."

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    array-length v1, p0

    .line 17
    move v2, v0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_4

    .line 19
    .line 20
    aget-object v3, p0, v2

    .line 21
    .line 22
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-ltz v3, :cond_3

    .line 27
    .line 28
    const/16 v4, 0xff

    .line 29
    .line 30
    if-le v3, v4, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    :cond_3
    :goto_1
    return v0

    .line 37
    :cond_4
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method private h0(Lcom/amazonaws/Request;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->f0(Ljava/net/URI;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a0()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method protected static i0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->E()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->i:Ljava/lang/String;

    .line 15
    .line 16
    const-string/jumbo v2, "x-amz-server-side-encryption"

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p1, "If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION"

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {p0, v2, v1}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->C()Ljava/util/Date;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    const-string v1, "Expires"

    .line 83
    .line 84
    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->d(Ljava/util/Date;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->L()Ljava/util/Map;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Ljava/lang/String;

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    :cond_5
    if-eqz v0, :cond_6

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :cond_6
    const-string/jumbo v2, "x-amz-tagging"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_4

    .line 149
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string/jumbo v3, "x-amz-meta-"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    return-void
.end method

.method protected static j0(Lcom/amazonaws/Request;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string/jumbo p1, "x-amz-request-payer"

    .line 4
    .line 5
    .line 6
    const-string v0, "requester"

    .line 7
    .line 8
    invoke-interface {p0, p1, v0}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static k0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/SSECustomerKey;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method private static l0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string/jumbo v0, "x-amz-server-side-encryption"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p0, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private n0(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->B()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private o0(Lcom/amazonaws/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "Content-Length"

    .line 7
    .line 8
    invoke-interface {p1, v1, v0}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private p0(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/model/AmazonS3Exception;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->d()Lcom/amazonaws/retry/RetryPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/amazonaws/retry/RetryPolicy;->c()Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->a:Lcom/amazonaws/retry/RetryPolicy;

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    :goto_0
    return v1
.end method

.method private q0(Ljava/net/URI;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isDNSBucketName(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->g0(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method private r0(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 6

    .line 1
    const/high16 v0, 0x40000

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    const/4 v4, -0x1

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-eq v5, v4, :cond_0

    .line 15
    .line 16
    add-int/2addr v3, v5

    .line 17
    sub-int/2addr v0, v5

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 31
    .line 32
    invoke-direct {p1, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    :try_start_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    .line 37
    .line 38
    const-string v0, "Input stream exceeds 256k buffer."

    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    :goto_1
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    .line 45
    .line 46
    const-string v1, "Failed to read from inputstream"

    .line 47
    .line 48
    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method private s0(Lcom/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectTagging;->b()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectTagging;->b()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/amazonaws/services/s3/model/Tag;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Tag;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v2, 0x3d

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Tag;->d()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1, v3}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    const-string v1, "&"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 81
    return-object p1
.end method


# virtual methods
.method protected Q(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazonaws/http/HttpMethodName;",
            ")",
            "Lcom/amazonaws/Request<",
            "TX;>;"
        }
    .end annotation

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->R(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method protected R(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazonaws/http/HttpMethodName;",
            "Ljava/net/URI;",
            ")",
            "Lcom/amazonaws/Request<",
            "TX;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    .line 2
    .line 3
    const-string v1, "Amazon S3"

    .line 4
    .line 5
    invoke-direct {v0, p3, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/S3ClientOptions;->b()Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/amazonaws/Request;->r()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 17
    .line 18
    .line 19
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/S3ClientOptions;->d()Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    const-string p3, "s3-accelerate.dualstack.amazonaws.com"

    .line 28
    .line 29
    iget-object p5, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 30
    .line 31
    invoke-static {p3, p5}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    .line 32
    .line 33
    .line 34
    move-result-object p5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p3, "s3-accelerate.amazonaws.com"

    .line 37
    .line 38
    iget-object p5, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 39
    .line 40
    invoke-static {p3, p5}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    .line 41
    .line 42
    .line 43
    move-result-object p5

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/S3ClientOptions;->d()Z

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->Z()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    const-string p5, "s3.dualstack.%s.amazonaws.com"

    .line 62
    .line 63
    invoke-static {p5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    iget-object p5, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 68
    .line 69
    invoke-static {p3, p5}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    .line 70
    .line 71
    .line 72
    move-result-object p5

    .line 73
    :cond_2
    :goto_0
    invoke-interface {v0, p4}, Lcom/amazonaws/Request;->k(Lcom/amazonaws/http/HttpMethodName;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0, p1, p2, p5}, Lcom/amazonaws/services/s3/AmazonS3Client;->m0(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 77
    .line 78
    .line 79
    return-object v0
.end method

.method protected T(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/auth/Signer;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazonaws/AmazonWebServiceClient;->C(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->e0()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_6

    .line 25
    .line 26
    instance-of v1, v0, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->h0(Lcom/amazonaws/Request;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    .line 50
    .line 51
    :goto_1
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-static {v1}, Lcom/amazonaws/regions/RegionUtils;->a(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "s3"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/amazonaws/regions/Region;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 64
    .line 65
    invoke-static {v2, v3}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->m0(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 70
    .line 71
    .line 72
    check-cast v0, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    .line 73
    .line 74
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->n0(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_2
    invoke-interface {p1}, Lcom/amazonaws/Request;->r()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->D()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-nez v1, :cond_5

    .line 86
    .line 87
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    .line 88
    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->D()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_2
    if-eqz v1, :cond_6

    .line 108
    .line 109
    new-instance p1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    .line 110
    .line 111
    invoke-direct {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->n0(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_6
    instance-of v1, v0, Lcom/amazonaws/services/s3/internal/S3Signer;

    .line 119
    .line 120
    if-eqz v1, :cond_7

    .line 121
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->S(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    :cond_7
    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "s3.amazonaws.com"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string/jumbo v0, "us-east-1"

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :try_start_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->a(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/amazonaws/regions/Region;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v2, "No valid region has been specified. Unable to return region name"

    .line 46
    .line 47
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v1
.end method

.method public a(Lcom/amazonaws/regions/Region;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Lcom/amazonaws/regions/Region;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->d()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "s3-accelerate.amazonaws.com"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "s3.amazonaws.com"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "s3"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/amazonaws/util/AwsHostNameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public g(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1
    const-string v0, "The GetObjectRequest parameter must be specified when requesting an object"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->r()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "The bucket name parameter must be specified when requesting an object"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "The key parameter must be specified when requesting an object"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->r()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->Q(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->C()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    const-string/jumbo v1, "versionId"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->C()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->y()[J

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v2, 0x1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v4, "bytes="

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    aget-wide v4, v1, v4

    .line 73
    .line 74
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v4, "-"

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    aget-wide v4, v1, v2

    .line 91
    .line 92
    const-wide/16 v6, 0x0

    .line 93
    .line 94
    cmp-long v4, v4, v6

    .line 95
    .line 96
    if-ltz v4, :cond_1

    .line 97
    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    aget-wide v5, v1, v2

    .line 107
    .line 108
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :cond_1
    const-string v1, "Range"

    .line 120
    .line 121
    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->D()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->j0(Lcom/amazonaws/Request;Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->z()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .line 132
    .line 133
    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->M(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 136
    .line 137
    .line 138
    const-string v3, "If-Modified-Since"

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->u()Ljava/util/Date;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-static {v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->K(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 145
    .line 146
    .line 147
    const-string v3, "If-Unmodified-Since"

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->B()Ljava/util/Date;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-static {v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->K(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 154
    .line 155
    .line 156
    const-string v3, "If-Match"

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->t()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->N(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    const-string v3, "If-None-Match"

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->v()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->N(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->A()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 175
    .line 176
    .line 177
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->k0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->f()Lcom/amazonaws/event/ProgressListener;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-static {v3}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->d(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    :try_start_0
    new-instance v4, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;

    .line 189
    .line 190
    invoke-direct {v4}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->r()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-direct {p0, v0, v4, v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->d0(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/amazonaws/services/s3/model/S3Object;

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->r()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v0, v4}, Lcom/amazonaws/services/s3/model/S3Object;->r(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->s(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->k()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    new-instance v4, Lcom/amazonaws/util/ServiceClientHolderInputStream;

    .line 226
    .line 227
    invoke-direct {v4, p1, p0}, Lcom/amazonaws/util/ServiceClientHolderInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/AmazonWebServiceClient;)V

    .line 228
    .line 229
    .line 230
    if-eqz v3, :cond_3

    .line 231
    .line 232
    new-instance p1, Lcom/amazonaws/event/ProgressReportingInputStream;

    .line 233
    .line 234
    invoke-direct {p1, v4, v3}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v2}, Lcom/amazonaws/event/ProgressReportingInputStream;->p(Z)V

    .line 238
    .line 239
    .line 240
    iget v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:I

    .line 241
    .line 242
    invoke-virtual {p1, v4}, Lcom/amazonaws/event/ProgressReportingInputStream;->q(I)V

    .line 243
    .line 244
    .line 245
    const/4 v4, 0x2

    .line 246
    invoke-direct {p0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->V(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 247
    .line 248
    .line 249
    move-object v4, p1

    .line 250
    goto :goto_0

    .line 251
    :catch_0
    move-exception p1

    .line 252
    goto :goto_1

    .line 253
    :cond_3
    :goto_0
    new-instance p1, Lcom/amazonaws/util/LengthCheckInputStream;

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->q()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->u()J

    .line 260
    .line 261
    .line 262
    move-result-wide v5

    .line 263
    invoke-direct {p1, v4, v5, v6, v2}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    .line 264
    .line 265
    .line 266
    new-instance v2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 267
    .line 268
    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->t(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .line 273
    .line 274
    return-object v0

    .line 275
    :goto_1
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->g()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    const/16 v2, 0x19c

    .line 280
    .line 281
    if-eq v0, v2, :cond_5

    .line 282
    .line 283
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->g()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    const/16 v2, 0x130

    .line 288
    .line 289
    if-ne v0, v2, :cond_4

    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_4
    const/16 v0, 0x8

    .line 293
    .line 294
    invoke-direct {p0, v3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->V(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 295
    .line 296
    .line 297
    throw p1

    .line 298
    :cond_5
    :goto_2
    const/16 p1, 0x10

    .line 299
    .line 300
    invoke-direct {p0, v3, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->V(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 301
    .line 302
    .line 303
    return-object v1
.end method

.method public h(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1
    const-string v0, "The request parameter must be specified when uploading a part"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->r()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->y()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->E()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->B()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->C()J

    .line 23
    .line 24
    .line 25
    move-result-wide v8

    .line 26
    const-string v4, "The bucket name parameter must be specified when uploading a part"

    .line 27
    .line 28
    invoke-static {v0, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v4, "The key parameter must be specified when uploading a part"

    .line 32
    .line 33
    invoke-static {v1, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v4, "The upload ID parameter must be specified when uploading a part"

    .line 37
    .line 38
    invoke-static {v2, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "The part number parameter must be specified when uploading a part"

    .line 46
    .line 47
    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "The part size parameter must be specified when uploading a part"

    .line 55
    .line 56
    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    .line 60
    .line 61
    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->Q(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-string/jumbo v4, "uploadId"

    .line 66
    .line 67
    .line 68
    invoke-interface {v11, v4, v2}, Lcom/amazonaws/Request;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v2, "partNumber"

    .line 72
    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-interface {v11, v2, v4}, Lcom/amazonaws/Request;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->A()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->i0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    const-string v2, "Content-Length"

    .line 90
    .line 91
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-interface {v11, v2, v4}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->F()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->j0(Lcom/amazonaws/Request;Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->D()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 106
    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->k0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->v()Ljava/io/InputStream;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_1

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->v()Ljava/io/InputStream;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->s()Ljava/io/File;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    :try_start_0
    new-instance v2, Lcom/amazonaws/services/s3/internal/InputSubstream;

    .line 130
    .line 131
    new-instance v5, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->s()Ljava/io/File;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-direct {v5, v4}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->t()J

    .line 141
    .line 142
    .line 143
    move-result-wide v6

    .line 144
    const/4 v10, 0x1

    .line 145
    move-object v4, v2

    .line 146
    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 147
    .line 148
    .line 149
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->z()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    if-nez v4, :cond_2

    .line 154
    .line 155
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 156
    .line 157
    invoke-static {p1, v4}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->f(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-nez v4, :cond_2

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_2

    .line 168
    .line 169
    :try_start_1
    invoke-static {v2}, Lcom/amazonaws/util/Md5Utils;->d(Ljava/io/InputStream;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    const-string v5, "Content-MD5"

    .line 174
    .line 175
    invoke-static {v11, v5, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :catch_0
    move-exception p1

    .line 183
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    .line 184
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v2, "Unable to calculate MD5 hash: "

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->f()Lcom/amazonaws/event/ProgressListener;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->d(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    if-eqz p1, :cond_3

    .line 219
    .line 220
    new-instance v4, Lcom/amazonaws/event/ProgressReportingInputStream;

    .line 221
    .line 222
    invoke-direct {v4, v2, p1}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 223
    .line 224
    .line 225
    iget v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:I

    .line 226
    .line 227
    invoke-virtual {v4, v2}, Lcom/amazonaws/event/ProgressReportingInputStream;->q(I)V

    .line 228
    .line 229
    .line 230
    const/16 v2, 0x400

    .line 231
    .line 232
    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->V(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 233
    .line 234
    .line 235
    move-object v2, v4

    .line 236
    :cond_3
    :try_start_2
    invoke-interface {v11, v2}, Lcom/amazonaws/Request;->b(Ljava/io/InputStream;)V

    .line 237
    .line 238
    .line 239
    new-instance v4, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    .line 240
    .line 241
    invoke-direct {v4}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-direct {p0, v11, v4, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d0(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 249
    .line 250
    const/16 v1, 0x800

    .line 251
    .line 252
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->V(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 253
    .line 254
    .line 255
    new-instance v1, Lcom/amazonaws/services/s3/model/UploadPartResult;

    .line 256
    .line 257
    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/UploadPartResult;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->z()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v1, v4}, Lcom/amazonaws/services/s3/model/UploadPartResult;->g(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->n(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->G()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->e(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->I()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->h(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->J()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->k(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->N()Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->b(Z)V
    :try_end_2
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    .line 297
    .line 298
    if-eqz v2, :cond_4

    .line 299
    .line 300
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 301
    .line 302
    .line 303
    :catch_1
    :cond_4
    return-object v1

    .line 304
    :catchall_0
    move-exception p1

    .line 305
    goto :goto_2

    .line 306
    :catch_2
    move-exception v0

    .line 307
    const/16 v1, 0x1000

    .line 308
    .line 309
    :try_start_4
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->V(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 310
    .line 311
    .line 312
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 313
    :goto_2
    if-eqz v2, :cond_5

    .line 314
    .line 315
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 316
    .line 317
    .line 318
    :catch_3
    :cond_5
    throw p1

    .line 319
    :catch_4
    move-exception p1

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 321
    .line 322
    const-string v1, "The specified file doesn\'t exist"

    .line 323
    .line 324
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    throw v0

    .line 328
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 329
    .line 330
    const-string v0, "A File or InputStream must be specified when uploading part"

    .line 331
    .line 332
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw p1
.end method

.method public i(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "Unable to cleanly close input stream: "

    .line 6
    .line 7
    const-string v3, "The PutObjectRequest parameter must be specified when uploading an object"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->u()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->A()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->B()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->z()Ljava/io/InputStream;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/AmazonWebServiceRequest;->f()Lcom/amazonaws/event/ProgressListener;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {v7}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->d(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    new-instance v5, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 39
    .line 40
    invoke-direct {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 41
    .line 42
    .line 43
    :cond_0
    const-string v8, "The bucket name parameter must be specified when uploading an object"

    .line 44
    .line 45
    invoke-static {v3, v8}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v8, "The key parameter must be specified when uploading an object"

    .line 49
    .line 50
    invoke-static {v4, v8}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v8, v1, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 54
    .line 55
    invoke-static {v0, v8}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->f(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->y()Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    const/4 v10, 0x1

    .line 64
    const/4 v11, 0x0

    .line 65
    if-eqz v9, :cond_4

    .line 66
    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->y()Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 72
    .line 73
    .line 74
    move-result-wide v12

    .line 75
    invoke-virtual {v5, v12, v13}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->S(J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->v()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    if-nez v9, :cond_1

    .line 83
    .line 84
    move v9, v10

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move v9, v11

    .line 87
    :goto_0
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->y()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    if-nez v12, :cond_2

    .line 92
    .line 93
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->a()Lcom/amazonaws/services/s3/util/Mimetypes;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-virtual {v12, v6}, Lcom/amazonaws/services/s3/util/Mimetypes;->b(Ljava/io/File;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-virtual {v5, v12}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->V(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    if-eqz v9, :cond_3

    .line 105
    .line 106
    if-nez v8, :cond_3

    .line 107
    .line 108
    :try_start_0
    invoke-static {v6}, Lcom/amazonaws/util/Md5Utils;->c(Ljava/io/File;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v5, v8}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->U(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v4, "Unable to calculate MD5 hash: "

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    throw v2

    .line 144
    :cond_3
    :goto_1
    :try_start_1
    new-instance v8, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .line 145
    .line 146
    invoke-direct {v8, v6}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .line 148
    .line 149
    move-object v6, v8

    .line 150
    goto :goto_2

    .line 151
    :catch_1
    move-exception v0

    .line 152
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    .line 153
    .line 154
    const-string v3, "Unable to find file to upload"

    .line 155
    .line 156
    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    throw v2

    .line 160
    :cond_4
    :goto_2
    sget-object v8, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    .line 161
    .line 162
    invoke-virtual {v1, v3, v4, v0, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->Q(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->t()Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    if-eqz v9, :cond_5

    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->t()Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-static {v8, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->J(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->v()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    if-eqz v9, :cond_6

    .line 185
    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->v()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    const-string/jumbo v12, "x-amz-acl"

    .line 195
    .line 196
    .line 197
    invoke-interface {v8, v12, v9}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->F()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    if-eqz v9, :cond_7

    .line 205
    .line 206
    const-string/jumbo v9, "x-amz-storage-class"

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->F()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    invoke-interface {v8, v9, v12}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->C()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    if-eqz v9, :cond_8

    .line 221
    .line 222
    const-string/jumbo v9, "x-amz-website-redirect-location"

    .line 223
    .line 224
    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->C()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    invoke-interface {v8, v9, v12}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    if-nez v6, :cond_8

    .line 233
    .line 234
    invoke-direct {v1, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->o0(Lcom/amazonaws/Request;)V

    .line 235
    .line 236
    .line 237
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 238
    .line 239
    new-array v9, v11, [B

    .line 240
    .line 241
    invoke-direct {v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 242
    .line 243
    .line 244
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->G()Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    invoke-direct {v1, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->s0(Lcom/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    const-string/jumbo v12, "x-amz-tagging"

    .line 253
    .line 254
    .line 255
    invoke-static {v8, v12, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->k0()Z

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    invoke-static {v8, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->j0(Lcom/amazonaws/Request;Z)V

    .line 263
    .line 264
    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->E()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 266
    .line 267
    .line 268
    const/4 v9, 0x0

    .line 269
    invoke-static {v8, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->k0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 270
    .line 271
    .line 272
    const-string v9, "Content-Length"

    .line 273
    .line 274
    invoke-virtual {v5, v9}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->F(Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    check-cast v12, Ljava/lang/Long;

    .line 279
    .line 280
    if-nez v12, :cond_a

    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    .line 283
    .line 284
    .line 285
    move-result v11

    .line 286
    if-nez v11, :cond_9

    .line 287
    .line 288
    sget-object v11, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 289
    .line 290
    const-string v12, "No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors."

    .line 291
    .line 292
    invoke-interface {v11, v12}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    invoke-direct {v1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->r0(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    .line 300
    .line 301
    .line 302
    move-result v11

    .line 303
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    invoke-interface {v8, v9, v11}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-interface {v8, v10}, Lcom/amazonaws/Request;->s(Z)V

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_9
    invoke-direct {v1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->O(Ljava/io/InputStream;)J

    .line 315
    .line 316
    .line 317
    move-result-wide v10

    .line 318
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    invoke-interface {v8, v9, v10}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_a
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 327
    .line 328
    .line 329
    move-result-wide v13

    .line 330
    const-wide/16 v15, 0x0

    .line 331
    .line 332
    cmp-long v10, v13, v15

    .line 333
    .line 334
    if-ltz v10, :cond_b

    .line 335
    .line 336
    new-instance v10, Lcom/amazonaws/util/LengthCheckInputStream;

    .line 337
    .line 338
    invoke-direct {v10, v6, v13, v14, v11}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    invoke-interface {v8, v9, v6}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    move-object v6, v10

    .line 349
    :cond_b
    :goto_4
    if-eqz v7, :cond_c

    .line 350
    .line 351
    new-instance v9, Lcom/amazonaws/event/ProgressReportingInputStream;

    .line 352
    .line 353
    invoke-direct {v9, v6, v7}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 354
    .line 355
    .line 356
    iget v6, v1, Lcom/amazonaws/services/s3/AmazonS3Client;->q:I

    .line 357
    .line 358
    invoke-virtual {v9, v6}, Lcom/amazonaws/event/ProgressReportingInputStream;->q(I)V

    .line 359
    .line 360
    .line 361
    const/4 v6, 0x2

    .line 362
    invoke-direct {v1, v7, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->V(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 363
    .line 364
    .line 365
    move-object v6, v9

    .line 366
    :cond_c
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->y()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    if-nez v9, :cond_d

    .line 371
    .line 372
    const-string v9, "application/octet-stream"

    .line 373
    .line 374
    invoke-virtual {v5, v9}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->V(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    :cond_d
    invoke-static {v8, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->i0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->D()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v8, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->l0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v8, v6}, Lcom/amazonaws/Request;->b(Ljava/io/InputStream;)V

    .line 388
    .line 389
    .line 390
    :try_start_2
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    .line 391
    .line 392
    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-direct {v1, v8, v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->d0(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    move-object v3, v0

    .line 400
    check-cast v3, Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_2
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    .line 402
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lcom/amazonaws/AbortedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 403
    .line 404
    .line 405
    goto :goto_5

    .line 406
    :catch_2
    move-exception v0

    .line 407
    move-object v4, v0

    .line 408
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 409
    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-interface {v0, v2, v4}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 430
    .line 431
    .line 432
    :catch_3
    :goto_5
    const/4 v0, 0x4

    .line 433
    invoke-direct {v1, v7, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->V(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 434
    .line 435
    .line 436
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 437
    .line 438
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;-><init>()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->M()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/PutObjectResult;->d(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->G()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->e(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->I()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->h(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->J()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->k(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->A()Ljava/util/Date;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/PutObjectResult;->j(Ljava/util/Date;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->B()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/PutObjectResult;->i(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->z()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/PutObjectResult;->g(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/PutObjectResult;->n(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->N()Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/PutObjectResult;->b(Z)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->v()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/PutObjectResult;->f(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    return-object v0

    .line 508
    :catchall_0
    move-exception v0

    .line 509
    move-object v3, v0

    .line 510
    goto :goto_6

    .line 511
    :catch_4
    move-exception v0

    .line 512
    const/16 v3, 0x8

    .line 513
    .line 514
    :try_start_4
    invoke-direct {v1, v7, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->V(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 515
    .line 516
    .line 517
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 518
    :goto_6
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Lcom/amazonaws/AbortedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 519
    .line 520
    .line 521
    goto :goto_7

    .line 522
    :catch_5
    move-exception v0

    .line 523
    move-object v4, v0

    .line 524
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 525
    .line 526
    new-instance v5, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    invoke-interface {v0, v2, v4}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 546
    .line 547
    .line 548
    :catch_6
    :goto_7
    throw v3
.end method

.method public k(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "The request parameter must be specified when completing a multipart upload"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->r()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->s()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->u()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "The bucket name parameter must be specified when completing a multipart upload"

    .line 20
    .line 21
    invoke-static {v1, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v4, "The key parameter must be specified when completing a multipart upload"

    .line 25
    .line 26
    invoke-static {v2, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v4, "The upload ID parameter must be specified when completing a multipart upload"

    .line 30
    .line 31
    invoke-static {v3, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->t()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "The part ETags parameter must be specified when completing a multipart upload"

    .line 39
    .line 40
    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    move v5, v4

    .line 45
    :goto_0
    sget-object v6, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    .line 46
    .line 47
    invoke-virtual {p0, v1, v2, p1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->Q(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string/jumbo v7, "uploadId"

    .line 52
    .line 53
    .line 54
    invoke-interface {v6, v7, v3}, Lcom/amazonaws/Request;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->v()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-static {v6, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->j0(Lcom/amazonaws/Request;Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->t()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-static {v7}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->a(Ljava/util/List;)[B

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    const-string v8, "Content-Type"

    .line 73
    .line 74
    const-string v9, "application/xml"

    .line 75
    .line 76
    invoke-interface {v6, v8, v9}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    array-length v8, v7

    .line 80
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    const-string v9, "Content-Length"

    .line 85
    .line 86
    invoke-interface {v6, v9, v8}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 90
    .line 91
    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v6, v8}, Lcom/amazonaws/Request;->b(Ljava/io/InputStream;)V

    .line 95
    .line 96
    .line 97
    new-instance v7, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    .line 98
    .line 99
    new-instance v8, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;

    .line 100
    .line 101
    invoke-direct {v8}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v9, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    .line 105
    .line 106
    invoke-direct {v9}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v10, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    .line 110
    .line 111
    invoke-direct {v10}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v11, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    .line 115
    .line 116
    invoke-direct {v11}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v12, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    .line 120
    .line 121
    invoke-direct {v12}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    .line 122
    .line 123
    .line 124
    const/4 v13, 0x4

    .line 125
    new-array v13, v13, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    .line 126
    .line 127
    aput-object v9, v13, v4

    .line 128
    .line 129
    aput-object v10, v13, v0

    .line 130
    .line 131
    const/4 v9, 0x2

    .line 132
    aput-object v11, v13, v9

    .line 133
    .line 134
    const/4 v9, 0x3

    .line 135
    aput-object v12, v13, v9

    .line 136
    .line 137
    invoke-direct {v7, v8, v13}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, v6, v7, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->d0(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    .line 145
    .line 146
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->o()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    if-eqz v7, :cond_0

    .line 151
    .line 152
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->o()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    return-object p1

    .line 157
    :cond_0
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->n()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    add-int/lit8 v8, v5, 0x1

    .line 162
    .line 163
    invoke-direct {p0, p1, v7, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->p0(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/model/AmazonS3Exception;I)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_1

    .line 168
    .line 169
    move v5, v8

    .line 170
    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->n()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    throw p1
.end method

.method public l(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "The request parameter must be specified when initiating a multipart upload"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->s()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "The bucket name parameter must be specified when initiating a multipart upload"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->u()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "The key parameter must be specified when initiating a multipart upload"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->s()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->u()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    .line 34
    .line 35
    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->Q(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string/jumbo v2, "uploads"

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->A()Lcom/amazonaws/services/s3/model/StorageClass;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->A()Lcom/amazonaws/services/s3/model/StorageClass;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string/jumbo v4, "x-amz-storage-class"

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, v4, v2}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->v()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    const-string/jumbo v2, "x-amz-website-redirect-location"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->v()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v1, v2, v4}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->r()Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->r()Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->J(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->t()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->t()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string/jumbo v4, "x-amz-acl"

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, v4, v2}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_0
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->h:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 117
    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->i0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->B()Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->s0(Lcom/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const-string/jumbo v4, "x-amz-tagging"

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v4, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->C()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->j0(Lcom/amazonaws/Request;Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->z()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 145
    .line 146
    .line 147
    invoke-static {v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->k0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->y()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->l0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->o0(Lcom/amazonaws/Request;)V

    .line 158
    .line 159
    .line 160
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 161
    .line 162
    new-array v3, v0, [B

    .line 163
    .line 164
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v1, v2}, Lcom/amazonaws/Request;->b(Ljava/io/InputStream;)V

    .line 168
    .line 169
    .line 170
    new-instance v2, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    .line 171
    .line 172
    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;

    .line 173
    .line 174
    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v4, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    .line 178
    .line 179
    invoke-direct {v4}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    .line 180
    .line 181
    .line 182
    const/4 v5, 0x1

    .line 183
    new-array v5, v5, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    .line 184
    .line 185
    aput-object v4, v5, v0

    .line 186
    .line 187
    invoke-direct {v2, v3, v5}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->s()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->u()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {p0, v1, v2, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d0(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    .line 203
    .line 204
    return-object p1
.end method

.method public m0(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    iget-object p4, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    .line 4
    .line 5
    :cond_0
    invoke-direct {p0, p4, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->q0(Ljava/net/URI;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "Using virtual style addressing. Endpoint = "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p4, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->P(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->u(Ljava/net/URI;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->d(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "Using path style addressing. Endpoint = "

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, p4}, Lcom/amazonaws/Request;->u(Ljava/net/URI;)V

    .line 71
    .line 72
    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->d(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    sget-object p2, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    .line 83
    .line 84
    new-instance p4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v0, "Key: "

    .line 90
    .line 91
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p3, "; Request: "

    .line 98
    .line 99
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public o(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1
    const-string v0, "The request parameter must be specified when aborting a multipart upload"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->r()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "The bucket name parameter must be specified when aborting a multipart upload"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->s()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "The key parameter must be specified when aborting a multipart upload"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->t()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "The upload ID parameter must be specified when aborting a multipart upload"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->r()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->s()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->Q(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string/jumbo v3, "uploadId"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->t()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->u()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->j0(Lcom/amazonaws/Request;Z)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->m:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 65
    .line 66
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d0(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public p(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 7
    .line 8
    return-void
.end method

.method protected final u(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->G(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/amazonaws/AmazonWebServiceClient;->E()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    .line 20
    .line 21
    invoke-direct {v0, v1, p1, p0}, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
