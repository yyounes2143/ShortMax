.class Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;
.super Ljava/lang/Object;
.source "CognitoUserPoolsSignInProvider.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;


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
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->q(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/content/Intent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->r(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-class v1, Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordActivity;

    .line 15
    .line 16
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->FORGOT_PASSWORD_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

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

.method public onFailure(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Password change failed."

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    .line 9
    .line 10
    instance-of v0, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidParameterException;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget v0, Lcom/amazonaws/mobile/auth/userpools/R$string;->f:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->w(Ljava/lang/Exception;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget v2, Lcom/amazonaws/mobile/auth/userpools/R$string;->v:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;->a:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    sget v4, Lcom/amazonaws/mobile/auth/userpools/R$string;->e:I

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, " "

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v0, v1, p1}, Lcom/amazonaws/mobile/auth/core/internal/util/ViewHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
