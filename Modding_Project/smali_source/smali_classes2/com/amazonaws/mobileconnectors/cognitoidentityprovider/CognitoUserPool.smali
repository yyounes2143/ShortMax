.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;
.super Ljava/lang/Object;
.source "CognitoUserPool.java"


# static fields
.field private static final k:Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/Context;

.field private e:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->k:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h:Z

    .line 3
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->i:Z

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->i(Landroid/content/Context;)V

    .line 5
    const-string v0, "CognitoUserPool"

    invoke-virtual {p2, v0}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Landroid/content/Context;

    .line 7
    const-string v1, "PoolId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 8
    const-string v1, "AppClientId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b:Ljava/lang/String;

    .line 9
    const-string v1, "AppClientSecret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c:Ljava/lang/String;

    .line 10
    const-string v1, "PinpointAppId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoPinpointSharedContext;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Ljava/lang/String;

    .line 11
    new-instance p1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {p1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    .line 12
    invoke-virtual {p2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/ClientConfiguration;->l(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/ClientConfiguration;->m(Ljava/lang/String;)V

    .line 14
    new-instance p2, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    new-instance v1, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {p2, v1, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 15
    const-string p1, "Region"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/regions/Region;->e(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/regions/Region;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to read PoolId, AppClientId, AppClientSecret, or Region from AWSConfiguration please check your setup or awsconfiguration.json file"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h:Z

    .line 19
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->i:Z

    .line 20
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->i(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Landroid/content/Context;

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x37

    if-gt v0, v1, :cond_1

    const-string v0, "^[\\w-]+_[0-9a-zA-Z]+$"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 28
    invoke-static {p1, p6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoPinpointSharedContext;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Ljava/lang/String;

    if-eqz p7, :cond_0

    .line 29
    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    invoke-interface {p1, p7}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid userPoolId format."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both UserPoolId and ClientId are required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->m(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private i(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2
    .line 3
    const-string v1, "CognitoIdentityProviderCache"

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->i:Z

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->i:Z

    .line 13
    .line 14
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->m(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;"
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    new-instance v2, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    .line 29
    .line 30
    invoke-direct {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->f(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    :cond_1
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1, p4, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f:Ljava/lang/String;

    .line 65
    .line 66
    new-instance p4, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 67
    .line 68
    invoke-direct {p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->L(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    invoke-virtual {p4, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->H(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p2, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->F(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p2, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->I(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->b()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p2, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->J(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->M(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2, p5}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->G(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->K(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    if-eqz p2, :cond_2

    .line 120
    .line 121
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 122
    .line 123
    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->d(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->C(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 133
    .line 134
    invoke-interface {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->f(Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1
.end method


# virtual methods
.method public c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CognitoIdentityProvider."

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ".LastAuthUser"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
    .locals 9

    .line 1
    new-instance v8, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 8
    .line 9
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Landroid/content/Context;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v0, v8

    .line 14
    move-object v1, p0

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-object v8
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    new-instance v8, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->e:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 30
    .line 31
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Landroid/content/Context;

    .line 32
    .line 33
    move-object v0, v8

    .line 34
    move-object v1, p0

    .line 35
    move-object v2, p1

    .line 36
    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    return-object v8
.end method

.method protected g(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->c()Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->i:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r(Z)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->m(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v6, p5

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->l(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v9, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;

    .line 4
    .line 5
    move-object v1, v9

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    move-object/from16 v8, p6

    .line 13
    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
