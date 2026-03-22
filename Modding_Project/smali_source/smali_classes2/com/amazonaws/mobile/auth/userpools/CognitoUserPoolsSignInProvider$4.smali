.class Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;
.super Ljava/lang/Object;
.source "CognitoUserPoolsSignInProvider.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 6
    .line 7
    check-cast p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->k(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/content/Intent;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->r(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-class v1, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordActivity;

    .line 21
    .line 22
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->FORCE_CHANGE_PASSWORD_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 32
    .line 33
    iget v1, v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->value:I

    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 40
    .line 41
    const-string v0, "Not supported in this sample."

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->j(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/content/Intent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->r(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-class v1, Lcom/amazonaws/mobile/auth/userpools/MFAActivity;

    .line 15
    .line 16
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->MFA_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 26
    .line 27
    iget v1, v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->value:I

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->n(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->h(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->n(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->h(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {p2, v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->f()V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "Logged in. "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 30
    .line 31
    invoke-static {p2, p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->u(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->t(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    .line 37
    .line 38
    .line 39
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
    const-string v1, "Failed to login."

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    .line 9
    .line 10
    instance-of v0, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserNotConfirmedException;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->l(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    instance-of v0, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/UserNotFoundException;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget v0, Lcom/amazonaws/mobile/auth/userpools/R$string;->y:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    instance-of v0, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/NotAuthorizedException;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget v0, Lcom/amazonaws/mobile/auth/userpools/R$string;->d:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->w(Ljava/lang/Exception;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->t(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;

    .line 58
    .line 59
    .line 60
    return-void
.end method
