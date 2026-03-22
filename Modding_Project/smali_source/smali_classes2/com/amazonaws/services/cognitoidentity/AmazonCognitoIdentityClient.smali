.class public Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonCognitoIdentityClient.java"

# interfaces
.implements Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;


# instance fields
.field private l:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/transform/JsonErrorUnmarshaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 0

    .line 3
    invoke-static {p2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->J(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->l:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 5
    invoke-direct {p0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->K()V

    return-void
.end method

.method private static J(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 1
    return-object p0
.end method

.method private K()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/ConcurrentModificationExceptionUnmarshaller;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/ConcurrentModificationExceptionUnmarshaller;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/DeveloperUserAlreadyRegisteredExceptionUnmarshaller;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/DeveloperUserAlreadyRegisteredExceptionUnmarshaller;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 27
    .line 28
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/ExternalServiceExceptionUnmarshaller;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/ExternalServiceExceptionUnmarshaller;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 37
    .line 38
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/InternalErrorExceptionUnmarshaller;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/InternalErrorExceptionUnmarshaller;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 47
    .line 48
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/InvalidIdentityPoolConfigurationExceptionUnmarshaller;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/InvalidIdentityPoolConfigurationExceptionUnmarshaller;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 57
    .line 58
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/InvalidParameterExceptionUnmarshaller;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/InvalidParameterExceptionUnmarshaller;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 67
    .line 68
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/LimitExceededExceptionUnmarshaller;

    .line 69
    .line 70
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 77
    .line 78
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/NotAuthorizedExceptionUnmarshaller;

    .line 79
    .line 80
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/NotAuthorizedExceptionUnmarshaller;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 87
    .line 88
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/ResourceConflictExceptionUnmarshaller;

    .line 89
    .line 90
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/ResourceConflictExceptionUnmarshaller;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 97
    .line 98
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/ResourceNotFoundExceptionUnmarshaller;

    .line 99
    .line 100
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 107
    .line 108
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/transform/TooManyRequestsExceptionUnmarshaller;

    .line 109
    .line 110
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/transform/TooManyRequestsExceptionUnmarshaller;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 117
    .line 118
    new-instance v1, Lcom/amazonaws/transform/JsonErrorUnmarshaller;

    .line 119
    .line 120
    invoke-direct {v1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    const-string v0, "cognito-identity.us-east-1.amazonaws.com"

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Lcom/amazonaws/AmazonWebServiceClient;->b(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v0, "cognito-identity"

    .line 132
    .line 133
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->i:Ljava/lang/String;

    .line 134
    .line 135
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    .line 136
    .line 137
    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    .line 141
    .line 142
    const-string v2, "/com/amazonaws/services/cognitoidentity/request.handlers"

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->c(Ljava/lang/String;)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    .line 152
    .line 153
    const-string v2, "/com/amazonaws/services/cognitoidentity/request.handler2s"

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method private L(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 3
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
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TX;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->u(Ljava/net/URI;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->f:J

    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->o(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->l:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 21
    .line 22
    invoke-interface {v2}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/amazonaws/Request;->r()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->i()Lcom/amazonaws/auth/AWSCredentials;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->i()Lcom/amazonaws/auth/AWSCredentials;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_0
    invoke-virtual {p3, v2}, Lcom/amazonaws/http/ExecutionContext;->f(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/amazonaws/http/JsonErrorResponseHandler;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->m:Ljava/util/List;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/amazonaws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    .line 56
    .line 57
    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/amazonaws/http/AmazonHttpClient;->d(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    sget-object p2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method


# virtual methods
.method public c(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->u(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 17
    .line 18
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    .line 20
    .line 21
    :try_start_1
    new-instance v6, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;

    .line 22
    .line 23
    invoke-direct {v6}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/Request;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->f(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_3
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;

    .line 37
    .line 38
    invoke-direct {v5}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/amazonaws/http/JsonResponseHandler;

    .line 42
    .line 43
    invoke-direct {v6, v5}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, v6, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->L(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, p1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object v7, v4

    .line 65
    move-object v4, p1

    .line 66
    move-object p1, v7

    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catchall_2
    move-exception v0

    .line 71
    move-object p1, v4

    .line 72
    :goto_0
    :try_start_4
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 75
    .line 76
    .line 77
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :catchall_3
    move-exception v0

    .line 79
    move-object p1, v4

    .line 80
    :goto_1
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, v4, p1, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method public j(Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->u(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 17
    .line 18
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    .line 20
    .line 21
    :try_start_1
    new-instance v6, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;

    .line 22
    .line 23
    invoke-direct {v6}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazonaws/Request;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->f(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_3
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;

    .line 37
    .line 38
    invoke-direct {v5}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/amazonaws/http/JsonResponseHandler;

    .line 42
    .line 43
    invoke-direct {v6, v5}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, v6, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;->L(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, p1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object v7, v4

    .line 65
    move-object v4, p1

    .line 66
    move-object p1, v7

    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catchall_2
    move-exception v0

    .line 71
    move-object p1, v4

    .line 72
    :goto_0
    :try_start_4
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 75
    .line 76
    .line 77
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :catchall_3
    move-exception v0

    .line 79
    move-object p1, v4

    .line 80
    :goto_1
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, v4, p1, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method
