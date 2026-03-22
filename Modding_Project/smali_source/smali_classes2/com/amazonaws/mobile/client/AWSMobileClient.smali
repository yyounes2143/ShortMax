.class public final Lcom/amazonaws/mobile/client/AWSMobileClient;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "AWSMobileClient"

.field private static volatile B:Lcom/amazonaws/mobile/client/AWSMobileClient;


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amazonaws/mobile/config/AWSConfiguration;

.field c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

.field d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

.field e:Ljava/lang/String;

.field f:Landroid/content/Context;

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/amazonaws/mobile/client/UserStateDetails;

.field private i:Ljava/util/concurrent/locks/Lock;

.field private volatile j:Ljava/util/concurrent/CountDownLatch;

.field k:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

.field private l:Z

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/mobile/client/UserStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Object;

.field private volatile o:Ljava/util/concurrent/CountDownLatch;

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field r:Lcom/amazonaws/mobile/client/KeyValueStore;

.field s:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

.field t:Lcom/amazonaws/mobile/client/DeviceOperations;

.field u:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

.field v:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

.field w:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->z:Z

    .line 6
    .line 7
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->B:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->a:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->e:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Ljava/util/concurrent/locks/Lock;

    .line 28
    .line 29
    new-instance v1, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->g:Ljava/util/Map;

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->m:Ljava/util/List;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/Object;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->n:Ljava/lang/Object;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/Object;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Ljava/lang/Object;

    .line 56
    .line 57
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->o:Ljava/util/concurrent/CountDownLatch;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/Object;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->q:Ljava/lang/Object;

    .line 70
    .line 71
    new-instance v0, Lcom/amazonaws/mobile/client/DummyStore;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/amazonaws/mobile/client/DummyStore;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 82
    .line 83
    .line 84
    throw v0
.end method

.method private synthetic F(Lcom/amazonaws/mobile/client/internal/InternalCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->c(Lcom/amazonaws/mobile/client/Callback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private G(Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Using the SignInProviderConfig from `awsconfiguration.json`."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    const-string v1, "CognitoUserPool"

    .line 13
    .line 14
    invoke-direct {p0, v1, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->z(Ljava/lang/String;Lcom/amazonaws/mobile/config/AWSConfiguration;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-class v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const-string v1, "FacebookSignIn"

    .line 26
    .line 27
    invoke-direct {p0, v1, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->z(Ljava/lang/String;Lcom/amazonaws/mobile/config/AWSConfiguration;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-class v1, Lcom/amazonaws/mobile/auth/facebook/FacebookSignInProvider;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const-string v1, "GoogleSignIn"

    .line 39
    .line 40
    invoke-direct {p0, v1, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->z(Ljava/lang/String;Lcom/amazonaws/mobile/config/AWSConfiguration;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const-class p1, Lcom/amazonaws/mobile/auth/google/GoogleSignInProvider;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/internal/InternalCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->F(Lcom/amazonaws/mobile/client/internal/InternalCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Lcom/amazonaws/mobile/client/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/Tokens;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;->getCurrentUser()Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    .line 8
    .line 9
    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient$13;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$13;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;->setAuthHandler(Lcom/amazonaws/mobileconnectors/cognitoauth/handlers/AuthHandler;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;->getSessionWithoutWebUI()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private d(Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/results/Tokens;",
            ">;Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient$12;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "initialize: Cognito HostedUI client detected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, "Scopes"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->x:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->m(Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->z:Z

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setPersistenceEnabled(Z)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$3;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$3;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setAuthHandler(Lcom/amazonaws/mobileconnectors/cognitoauth/handlers/AuthHandler;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->build()Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "User pool Id must be available through user pool setting"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method static synthetic g(Lcom/amazonaws/mobile/client/AWSMobileClient;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->q:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->G(Lcom/amazonaws/mobile/config/AWSConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic j(Lcom/amazonaws/mobile/client/AWSMobileClient;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->f(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->c(Lcom/amazonaws/mobile/client/Callback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private p()Lcom/amazonaws/mobile/client/results/Tokens;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/amazonaws/mobile/client/a;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lcom/amazonaws/mobile/client/a;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/internal/InternalCallback;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/amazonaws/mobile/client/results/Tokens;

    .line 16
    .line 17
    return-object v0
.end method

.method public static declared-synchronized q()Lcom/amazonaws/mobile/client/AWSMobileClient;
    .locals 2

    .line 1
    const-class v0, Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->B:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->B:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->B:Lcom/amazonaws/mobile/client/AWSMobileClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method private w(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->g:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "hasFederatedToken: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " provider: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return p2

    .line 51
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 52
    return p1
.end method

.method private z(Ljava/lang/String;Lcom/amazonaws/mobile/config/AWSConfiguration;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    const-string v1, "GoogleSignIn"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const-string v1, "ClientId-WebApp"

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    :cond_0
    return v0

    .line 27
    :cond_1
    if-eqz p2, :cond_2

    .line 28
    .line 29
    move v0, v2

    .line 30
    :cond_2
    return v0

    .line 31
    :catch_0
    sget-object p2, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " not found in `awsconfiguration.json`"

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v0
.end method


# virtual methods
.method A()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 2
    .line 3
    const-string v1, "isFederationEnabled"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v1, "true"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0
.end method

.method B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method protected C(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "Could not access network state"

    .line 37
    .line 38
    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    return v1
.end method

.method D(Ljava/lang/Exception;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    const-string v1, "No cached session."

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    return v0
.end method

.method E()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 4
    .line 5
    const-string v2, "provider"

    .line 6
    .line 7
    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected H(Lcom/amazonaws/mobile/client/UserStateDetails;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->h:Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->h:Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->m:Ljava/util/List;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->m:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/amazonaws/mobile/client/UserStateListener;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/Thread;

    .line 33
    .line 34
    new-instance v4, Lcom/amazonaws/mobile/client/AWSMobileClient$4;

    .line 35
    .line 36
    invoke-direct {v4, p0, v2, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$4;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/UserStateListener;Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    monitor-exit v0

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_2
    return-void
.end method

.method protected I()Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->u(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v5, "waitForSignIn: userState:"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/UserStateDetails;->b()Lcom/amazonaws/mobile/client/UserState;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    sget-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient$29;->a:[I

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/UserStateDetails;->b()Lcom/amazonaws/mobile/client/UserState;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    if-eq v3, v1, :cond_4

    .line 59
    .line 60
    const/4 v1, 0x2

    .line 61
    if-eq v3, v1, :cond_1

    .line 62
    .line 63
    const/4 v1, 0x3

    .line 64
    if-eq v3, v1, :cond_1

    .line 65
    .line 66
    const/4 v1, 0x4

    .line 67
    if-eq v3, v1, :cond_0

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    if-eq v3, v1, :cond_0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Ljava/util/concurrent/locks/Lock;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    .line 76
    .line 77
    return v0

    .line 78
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->H(Lcom/amazonaws/mobile/client/UserStateDetails;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Ljava/util/concurrent/locks/Lock;

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    .line 85
    .line 86
    return v0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_3

    .line 89
    :catch_0
    move-exception v0

    .line 90
    goto :goto_2

    .line 91
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/UserStateDetails;->a()Ljava/lang/Exception;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/UserStateDetails;->a()Ljava/lang/Exception;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->D(Ljava/lang/Exception;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {v2}, Lcom/amazonaws/mobile/client/UserStateDetails;->a()Ljava/lang/Exception;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    throw v0

    .line 113
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->H(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->j:Ljava/util/concurrent/CountDownLatch;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->u(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/UserStateDetails;->b()Lcom/amazonaws/mobile/client/UserState;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {p0, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->H(Lcom/amazonaws/mobile/client/UserStateDetails;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Ljava/util/concurrent/locks/Lock;

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    .line 143
    .line 144
    return v1

    .line 145
    :goto_2
    :try_start_3
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    .line 146
    .line 147
    const-string v2, "Operation requires a signed-in state"

    .line 148
    .line 149
    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    :goto_3
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->i:Ljava/util/concurrent/locks/Lock;

    .line 154
    .line 155
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 156
    .line 157
    .line 158
    throw v0
.end method

.method b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 2
    .line 3
    const-string v1, "cognitoIdentityId"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method protected e(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazonaws/mobile/config/AWSConfiguration;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p3, p2, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$2;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Lcom/amazonaws/mobile/config/AWSConfiguration;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 5

    .line 1
    const-string v0, "Failed to get credentials from Cognito Identity"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->B()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e()Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->I()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "getCredentials: Validated user is signed-in"

    .line 35
    .line 36
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :catch_1
    move-exception v1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 51
    .line 52
    const-string v3, "cognitoIdentityId"

    .line 53
    .line 54
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v2, v3, v4}, Lcom/amazonaws/mobile/client/KeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :goto_1
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    .line 65
    .line 66
    invoke-direct {v2, v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw v2

    .line 70
    :goto_2
    sget-object v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 71
    .line 72
    const-string v3, "getCredentials: Failed to getCredentials from Cognito Identity"

    .line 73
    .line 74
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    .line 78
    .line 79
    invoke-direct {v2, v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw v2

    .line 83
    :cond_2
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    .line 84
    .line 85
    const-string v1, "Cognito Identity not configured"

    .line 86
    .line 87
    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->w(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    sget-object v1, Lcom/amazonaws/mobile/client/IdentityProvider;->DEVELOPER:Lcom/amazonaws/mobile/client/IdentityProvider;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/amazonaws/mobile/client/IdentityProvider;->equals(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->s:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 21
    .line 22
    const-string v3, "cognitoIdentityId"

    .line 23
    .line 24
    invoke-interface {v2, v3}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2, p2}, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->s:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->o()V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 40
    .line 41
    const-string v2, "customRoleArn"

    .line 42
    .line 43
    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->q(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->s(Ljava/util/Map;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->m()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 77
    .line 78
    const-string p2, "cognitoIdentityId"

    .line 79
    .line 80
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->e()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {p1, p2, v1}, Lcom/amazonaws/mobile/client/KeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->g()Ljava/util/Map;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->g:Ljava/util/Map;

    .line 96
    .line 97
    :cond_2
    monitor-exit v0

    .line 98
    return-void

    .line 99
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p1
.end method

.method m(Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "Scopes"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v3, v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setApplicationContext(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->x:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setUserPoolId(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v3, "AppClientId"

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setAppClientId(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v3, "AppClientSecret"

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setAppClientSecret(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v3, "WebDomain"

    .line 69
    .line 70
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setAppCognitoWebDomain(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v3, "SignInRedirectURI"

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setSignInRedirect(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v3, "SignOutRedirectURI"

    .line 89
    .line 90
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0, v3}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setSignOutRedirect(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setScopes(Ljava/util/Set;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setAdvancedSecurityDataCollection(Z)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "IdentityProvider"

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setIdentityProvider(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v1, "IdpIdentifier"

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;->setIdpIdentifier(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoauth/Auth$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    return-object p1
.end method

.method n(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    const-string v0, "hostedUI"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->o(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 9
    .line 10
    invoke-interface {v2, v0}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v2

    .line 21
    :try_start_2
    sget-object v3, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 22
    .line 23
    const-string v4, "Failed to parse HostedUI settings from store"

    .line 24
    .line 25
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    move-object v3, v1

    .line 29
    :goto_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-eq v2, v4, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_1
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 56
    .line 57
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {p1, v0, v2}, Lcom/amazonaws/mobile/client/KeyValueStore;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    .line 63
    .line 64
    :cond_1
    return-object v3

    .line 65
    :goto_2
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 66
    .line 67
    const-string v2, "getHostedUIJSON: Failed to read config"

    .line 68
    .line 69
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    return-object v1
.end method

.method o(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    const-string v0, "Auth"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string v0, "OAuth"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    sget-object v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "getHostedUIJSONFromJSON: Failed to read config"

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method r()Ljava/util/Map;
    .locals 3
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
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 2
    .line 3
    const-string v1, "provider"

    .line 4
    .line 5
    const-string/jumbo v2, "token"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/KeyValueStore;->c([Ljava/lang/String;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method s()Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 2
    .line 3
    const-string v1, "signInMode"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/KeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->fromString(Ljava/lang/String;)Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method protected t(Z)Lcom/amazonaws/mobile/client/results/Tokens;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->d(Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/amazonaws/mobile/client/results/Tokens;

    .line 15
    .line 16
    return-object p1
.end method

.method protected u(Z)Lcom/amazonaws/mobile/client/UserStateDetails;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->r()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "provider"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v3, "token"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->A()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    sget-object v7, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 31
    .line 32
    const-string v8, "Inspecting user state details"

    .line 33
    .line 34
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    const/4 v9, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v9, v8

    .line 45
    :goto_0
    const/4 v10, 0x0

    .line 46
    if-nez p1, :cond_15

    .line 47
    .line 48
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->C(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s()Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v11, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->HOSTED_UI:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 63
    .line 64
    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 73
    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    :cond_2
    const-string p1, "_hostedUISignIn without federation: Putting provider and token in store"

    .line 77
    .line 78
    new-array v2, v8, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->p()Lcom/amazonaws/mobile/client/results/Tokens;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/results/Tokens;->a()Lcom/amazonaws/mobile/client/results/Token;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/results/Token;->a()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->e:Ljava/lang/String;

    .line 103
    .line 104
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 108
    .line 109
    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/KeyValueStore;->b(Ljava/util/Map;)V

    .line 110
    .line 111
    .line 112
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 113
    .line 114
    new-instance v1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 115
    .line 116
    invoke-direct {v1, p1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    return-object v1

    .line 120
    :catch_0
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 121
    .line 122
    new-instance v0, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 123
    .line 124
    invoke-direct {v0, p1, v10}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_3
    if-eqz v9, :cond_a

    .line 129
    .line 130
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->e:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_a

    .line 137
    .line 138
    if-nez v6, :cond_4

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->c(Landroid/content/Context;)Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->d()Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->e()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    invoke-interface {p1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->getToken()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    const-string p1, "Token was refreshed using drop-in UI internal mechanism"

    .line 168
    .line 169
    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :catch_1
    move-exception p1

    .line 174
    goto :goto_3

    .line 175
    :cond_5
    :goto_1
    if-nez v4, :cond_6

    .line 176
    .line 177
    const-string p1, "Token used for federation has become null"

    .line 178
    .line 179
    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 183
    .line 184
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_FEDERATED_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 185
    .line 186
    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 187
    .line 188
    .line 189
    return-object p1

    .line 190
    :cond_6
    invoke-direct {p0, v2, v4}, Lcom/amazonaws/mobile/client/AWSMobileClient;->w(Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_7

    .line 195
    .line 196
    const-string p1, "getUserStateDetails: token already federated just fetch credentials"

    .line 197
    .line 198
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 202
    .line 203
    if-eqz p1, :cond_8

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_7
    invoke-virtual {p0, v2, v4}, Lcom/amazonaws/mobile/client/AWSMobileClient;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_8
    :goto_2
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 213
    .line 214
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 215
    .line 216
    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    .line 218
    .line 219
    return-object p1

    .line 220
    :goto_3
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 221
    .line 222
    const-string v2, "Failed to federate the tokens."

    .line 223
    .line 224
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .line 226
    .line 227
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 228
    .line 229
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->D(Ljava/lang/Exception;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_9

    .line 234
    .line 235
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_FEDERATED_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 236
    .line 237
    :cond_9
    new-instance v2, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 238
    .line 239
    invoke-direct {v2, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, p1}, Lcom/amazonaws/mobile/client/UserStateDetails;->c(Ljava/lang/Exception;)V

    .line 243
    .line 244
    .line 245
    return-object v2

    .line 246
    :cond_a
    if-eqz v9, :cond_12

    .line 247
    .line 248
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 249
    .line 250
    if-eqz p1, :cond_12

    .line 251
    .line 252
    :try_start_2
    invoke-virtual {p0, v8}, Lcom/amazonaws/mobile/client/AWSMobileClient;->t(Z)Lcom/amazonaws/mobile/client/results/Tokens;

    .line 253
    .line 254
    .line 255
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    :try_start_3
    invoke-virtual {p1}, Lcom/amazonaws/mobile/client/results/Tokens;->a()Lcom/amazonaws/mobile/client/results/Token;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/results/Token;->a()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    if-nez v6, :cond_b

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_b
    invoke-direct {p0, v2, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->w(Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    if-eqz v3, :cond_c

    .line 275
    .line 276
    :try_start_4
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 277
    .line 278
    if-eqz v1, :cond_d

    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->d()Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :catch_2
    move-exception v1

    .line 285
    :try_start_5
    sget-object v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 286
    .line 287
    const-string v3, "Failed to get or refresh credentials from Cognito Identity"

    .line 288
    .line 289
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :catch_3
    move-exception v1

    .line 294
    goto :goto_6

    .line 295
    :cond_c
    iget-object v3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 296
    .line 297
    if-eqz v3, :cond_d

    .line 298
    .line 299
    invoke-virtual {p0, v2, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 300
    .line 301
    .line 302
    :cond_d
    :goto_4
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 303
    .line 304
    invoke-virtual {p0, v10}, Lcom/amazonaws/mobile/client/AWSMobileClient;->D(Ljava/lang/Exception;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_e

    .line 309
    .line 310
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 311
    .line 312
    :cond_e
    new-instance v1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 313
    .line 314
    invoke-direct {v1, p1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 315
    .line 316
    .line 317
    :goto_5
    invoke-virtual {v1, v10}, Lcom/amazonaws/mobile/client/UserStateDetails;->c(Ljava/lang/Exception;)V

    .line 318
    .line 319
    .line 320
    return-object v1

    .line 321
    :catch_4
    move-exception v1

    .line 322
    move-object p1, v10

    .line 323
    :goto_6
    :try_start_6
    sget-object v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->A:Ljava/lang/String;

    .line 324
    .line 325
    if-nez p1, :cond_f

    .line 326
    .line 327
    const-string p1, "Tokens are invalid, please sign-in again."

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_f
    const-string p1, "Failed to federate the tokens"

    .line 331
    .line 332
    :goto_7
    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 333
    .line 334
    .line 335
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 336
    .line 337
    invoke-virtual {p0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->D(Ljava/lang/Exception;)Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-eqz v2, :cond_10

    .line 342
    .line 343
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 344
    .line 345
    :cond_10
    new-instance v2, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 346
    .line 347
    invoke-direct {v2, p1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v1}, Lcom/amazonaws/mobile/client/UserStateDetails;->c(Ljava/lang/Exception;)V

    .line 351
    .line 352
    .line 353
    return-object v2

    .line 354
    :catchall_0
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 355
    .line 356
    invoke-virtual {p0, v10}, Lcom/amazonaws/mobile/client/AWSMobileClient;->D(Ljava/lang/Exception;)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-eqz v1, :cond_11

    .line 361
    .line 362
    sget-object p1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT_USER_POOLS_TOKENS_INVALID:Lcom/amazonaws/mobile/client/UserState;

    .line 363
    .line 364
    :cond_11
    new-instance v1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 365
    .line 366
    invoke-direct {v1, p1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 367
    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_12
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 371
    .line 372
    if-nez p1, :cond_13

    .line 373
    .line 374
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 375
    .line 376
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT:Lcom/amazonaws/mobile/client/UserState;

    .line 377
    .line 378
    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 379
    .line 380
    .line 381
    return-object p1

    .line 382
    :cond_13
    if-eqz v5, :cond_14

    .line 383
    .line 384
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 385
    .line 386
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->GUEST:Lcom/amazonaws/mobile/client/UserState;

    .line 387
    .line 388
    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 389
    .line 390
    .line 391
    return-object p1

    .line 392
    :cond_14
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 393
    .line 394
    sget-object v0, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT:Lcom/amazonaws/mobile/client/UserState;

    .line 395
    .line 396
    invoke-direct {p1, v0, v10}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 397
    .line 398
    .line 399
    return-object p1

    .line 400
    :cond_15
    :goto_8
    if-eqz v9, :cond_16

    .line 401
    .line 402
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 403
    .line 404
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->SIGNED_IN:Lcom/amazonaws/mobile/client/UserState;

    .line 405
    .line 406
    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 407
    .line 408
    .line 409
    return-object p1

    .line 410
    :cond_16
    if-eqz v5, :cond_17

    .line 411
    .line 412
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 413
    .line 414
    sget-object v1, Lcom/amazonaws/mobile/client/UserState;->GUEST:Lcom/amazonaws/mobile/client/UserState;

    .line 415
    .line 416
    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 417
    .line 418
    .line 419
    return-object p1

    .line 420
    :cond_17
    new-instance p1, Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 421
    .line 422
    sget-object v0, Lcom/amazonaws/mobile/client/UserState;->SIGNED_OUT:Lcom/amazonaws/mobile/client/UserState;

    .line 423
    .line 424
    invoke-direct {p1, v0, v10}, Lcom/amazonaws/mobile/client/UserStateDetails;-><init>(Lcom/amazonaws/mobile/client/UserState;Ljava/util/Map;)V

    .line 425
    .line 426
    .line 427
    return-object p1
.end method

.method public v(Landroid/content/Intent;)Z
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->v:Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;->getTokens(Landroid/net/Uri;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoauth/Auth;->handleFlowCancelled()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return v1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->d(Landroid/net/Uri;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    return v1

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public x(Landroid/content/Context;Lcom/amazonaws/mobile/client/Callback;)V
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/amazonaws/mobile/config/AWSConfiguration;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->y(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/mobile/client/Callback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public y(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/mobile/client/Callback;)V
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazonaws/mobile/config/AWSConfiguration;",
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/UserStateDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
