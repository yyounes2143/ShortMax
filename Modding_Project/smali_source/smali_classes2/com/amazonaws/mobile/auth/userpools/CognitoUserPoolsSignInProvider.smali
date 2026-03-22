.class public Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;
.super Ljava/lang/Object;
.source "CognitoUserPoolsSignInProvider.java"

# interfaces
.implements Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;,
        Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String; = "CognitoUserPoolsSignInProvider"

.field private static q:I

.field private static r:Z

.field private static s:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

.field private c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

.field private d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/Activity;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

.field private k:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

.field private l:Lcom/amazonaws/mobile/config/AWSConfiguration;

.field private m:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

.field private n:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

.field private o:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;-><init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->m:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    .line 10
    .line 11
    new-instance v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$2;-><init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->n:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/GenericHandler;

    .line 17
    .line 18
    new-instance v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$4;-><init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->o:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 24
    .line 25
    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$3;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$3;-><init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->S(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private C()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->e:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Lcom/amazonaws/mobile/auth/userpools/SignUpConfirmActivity;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "username"

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v1, "destination"

    .line 19
    .line 20
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f:Landroid/app/Activity;

    .line 26
    .line 27
    sget-object v2, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->VERIFICATION_REQUEST_CODE:Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;

    .line 28
    .line 29
    iget v2, v2, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RequestCodes;->value:I

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic g(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic j(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic k(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic l(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->m:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic p(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic r(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static synthetic u(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->k:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 2
    .line 3
    return-object p1
.end method

.method static v()I
    .locals 1

    .line 1
    sget v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->q:I

    .line 2
    .line 3
    return v0
.end method

.method static w(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "(Service"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne p0, v1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method static x()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static z()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->r:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method protected B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->g:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->o:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->E(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->e:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->l:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 4
    .line 5
    sget-object v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->p:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "Initializing Cognito User Pools"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;-><init>(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string p2, "cognito-idp."

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, "Region"

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, ".amazonaws.com/"

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->i:Ljava/lang/String;

    .line 57
    .line 58
    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/view/View;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->f:Landroid/app/Activity;

    .line 2
    .line 3
    sget p3, Lcom/amazonaws/mobile/auth/userpools/R$id;->r:I

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->getBackgroundColor()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    sput p3, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->q:I

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->getFontFamily()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    sput-object p3, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->s:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->b()Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    sput-boolean p3, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->r:Z

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->getSignUpTextView()Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    new-instance v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$5;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$5;-><init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->getForgotPasswordTextView()Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    new-instance v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$6;-><init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    new-instance p3, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$7;

    .line 54
    .line 55
    invoke-direct {p3, p0, p1}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$7;-><init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    return-object p3
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Amazon Cognito Your User Pools"

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->k:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    new-instance v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, v2}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;-><init>(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$1;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->C(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;->e(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;->e(Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider$RefreshSessionAuthenticationHandler;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->k:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 39
    .line 40
    sget-object v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->p:Ljava/lang/String;

    .line 41
    .line 42
    const-string v2, "refreshUserSignInState: Signed in with Cognito."

    .line 43
    .line 44
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_1
    sget-object v0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->p:Ljava/lang/String;

    .line 49
    .line 50
    const-string v1, "refreshUserSignInState: Not signed in with Cognito."

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->k:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->k:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    return-object v0
.end method

.method protected y(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->l:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 2
    .line 3
    const-string v1, "CognitoUserPool"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "Cannot find the CognitoUserPool "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " from the AWSConfiguration file."

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v1
.end method
