.class Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;
.super Ljava/lang/Object;
.source "CognitoUserPoolsSignInProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->b(Landroid/app/Activity;Landroid/view/View;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;

.field final synthetic b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;->a:Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;->a:Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->getEnteredUserName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->o(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->n(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    if-ge p1, v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "Missing username."

    .line 30
    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget v2, Lcom/amazonaws/mobile/auth/userpools/R$string;->w:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {p1, v1, v0}, Lcom/amazonaws/mobile/auth/core/internal/util/ViewHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->p(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->n(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;->b:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->m(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->w(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
