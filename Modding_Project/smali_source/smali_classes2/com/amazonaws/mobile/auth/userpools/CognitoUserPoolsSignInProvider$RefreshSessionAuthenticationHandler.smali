.class Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;
.super Ljava/lang/Object;
.source "CognitoUserPoolsSignInProvider.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshSessionAuthenticationHandler"
.end annotation


# instance fields
.field private a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;-><init>()V

    return-void
.end method

.method static synthetic e(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;->f()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private f()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "Refresh flow can not trigger request for authentication challenge."

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "Refresh flow can not trigger request for MFA code."

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "Can\'t refresh the session silently, due to authentication details needed."

    .line 6
    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 2
    .line 3
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Can\'t refresh session."

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method
