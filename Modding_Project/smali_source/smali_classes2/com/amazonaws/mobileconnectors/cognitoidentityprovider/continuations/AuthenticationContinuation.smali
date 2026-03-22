.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;
.super Ljava/lang/Object;
.source "AuthenticationContinuation.java"


# instance fields
.field private final a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field private final d:Z

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->b:Landroid/content/Context;

    .line 10
    .line 11
    iput-boolean p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->d:Z

    .line 12
    .line 13
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 14
    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->e:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->e:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public f()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Thread;

    .line 6
    .line 7
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->e:Ljava/util/Map;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->N(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$2;

    .line 35
    .line 36
    invoke-direct {v1, p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    move-object v0, v1

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void
.end method

.method public g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 2
    .line 3
    return-void
.end method

.method public h(Ljava/util/Map;)V
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
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->e:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
