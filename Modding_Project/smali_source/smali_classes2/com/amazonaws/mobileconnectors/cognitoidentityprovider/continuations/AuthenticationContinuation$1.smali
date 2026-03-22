.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1;
.super Ljava/lang/Object;
.source "AuthenticationContinuation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 35
    .line 36
    invoke-static {v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->N(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 42
    .line 43
    .line 44
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1$1;

    .line 48
    .line 49
    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation$1;Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    move-object v1, v2

    .line 53
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method
