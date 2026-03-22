.class public Lcom/amazonaws/auth/CognitoCredentialsProvider;
.super Ljava/lang/Object;
.source "CognitoCredentialsProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field private static final n:Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

.field private final c:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

.field protected d:Lcom/amazonaws/auth/AWSSessionCredentials;

.field protected e:Ljava/util/Date;

.field protected f:Ljava/lang/String;

.field protected g:I

.field protected h:I

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected final l:Z

.field protected final m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->n:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .locals 0

    .line 2
    invoke-static {p3, p2}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->b:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 5
    invoke-virtual {p2}, Lcom/amazonaws/AmazonWebServiceClient;->z()Lcom/amazonaws/regions/Regions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->i:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->j:Ljava/lang/String;

    const/16 p1, 0xe10

    .line 9
    iput p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g:I

    const/16 p1, 0x1f4

    .line 10
    iput p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->h:I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->l:Z

    .line 12
    new-instance p2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p2, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method private a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->g()Lcom/amazonaws/RequestClientOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/amazonaws/RequestClientOptions;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static c(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    .line 2
    .line 3
    new-instance v1, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/amazonaws/regions/Region;->e(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Lcom/amazonaws/AmazonWebServiceClient;->a(Lcom/amazonaws/regions/Region;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private k(Ljava/lang/String;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->h()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    new-instance p1, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->v(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->y(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->k:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->u(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->b:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->c(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    .line 52
    .line 53
    .line 54
    move-result-object p1
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentity/model/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "ValidationException"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->o()Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    throw p1

    .line 75
    :catch_1
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->o()Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->b()Lcom/amazonaws/services/cognitoidentity/model/Credentials;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Lcom/amazonaws/auth/BasicSessionCredentials;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->b()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->e()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->f()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-direct {v1, v2, v3, v4}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->d()Ljava/util/Date;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->t(Ljava/util/Date;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->d()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->d()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->r(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->j:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->i:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    new-instance v1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->D(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->B(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "ProviderSession"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->C(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g:I

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->A(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->i()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    throw p1
.end method

.method private o()Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->p()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->h()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g()Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    new-instance v1, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->v(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->y(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->k:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->u(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->b:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 58
    .line 59
    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->c(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method private p()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->r(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSIdentityProvider;->g()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public d()Lcom/amazonaws/auth/AWSSessionCredentials;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->j()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->u()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :goto_1
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->h()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/amazonaws/regions/Regions;->CN_NORTH_1:Lcom/amazonaws/regions/Regions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "cognito-identity.cn-north-1.amazonaws.com.cn"

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const-string v0, "cognito-identity.amazonaws.com"

    .line 19
    .line 20
    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected j()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->d:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static {}, Lcom/amazonaws/SDKGlobalConfiguration;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    const-wide/16 v6, 0x3e8

    .line 16
    .line 17
    mul-long/2addr v4, v6

    .line 18
    sub-long/2addr v2, v4

    .line 19
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    sub-long/2addr v4, v2

    .line 26
    iget v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->h:I

    .line 27
    .line 28
    mul-int/lit16 v0, v0, 0x3e8

    .line 29
    .line 30
    int-to-long v2, v0

    .line 31
    cmp-long v0, v4, v2

    .line 32
    .line 33
    if-gez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    return v1
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public n(Lcom/amazonaws/auth/IdentityChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->b(Lcom/amazonaws/auth/IdentityChangedListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected r(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/amazonaws/auth/AWSCognitoIdentityProvider;->f(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public t(Ljava/util/Date;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->e:Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method protected u()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->c:Lcom/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSIdentityProvider;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentity/model/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "ValidationException"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->p()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    throw v0

    .line 31
    :catch_1
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->p()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    iget-boolean v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->l:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->k(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCredentialsProvider;->f:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->l(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method
