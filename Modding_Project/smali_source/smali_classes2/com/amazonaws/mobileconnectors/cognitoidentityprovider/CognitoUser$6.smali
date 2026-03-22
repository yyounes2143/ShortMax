.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->N(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$4;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$4;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$3;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$3;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 24
    .line 25
    invoke-interface {v0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 24
    .line 25
    invoke-interface {v0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$5;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$5;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->onFailure(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
