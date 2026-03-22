.class Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/AWSMobileClient$12;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$12;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$12;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private e(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "signalTokensNotAvailable"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$12;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/Exception;

    .line 15
    .line 16
    const-string v2, "No cached session."

    .line 17
    .line 18
    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->e(Ljava/lang/Exception;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->e(Ljava/lang/Exception;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->e(Ljava/lang/Exception;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$12;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->k:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 8
    .line 9
    new-instance v0, Lcom/amazonaws/mobile/client/results/Tokens;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->c()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;->c()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, v1, v2, p1}, Lcom/amazonaws/mobile/client/results/Tokens;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, v0}, Lcom/amazonaws/mobile/client/Callback;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    iget-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->a:Lcom/amazonaws/mobile/client/AWSMobileClient$12;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 46
    .line 47
    invoke-interface {p2, p1}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;->e(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
