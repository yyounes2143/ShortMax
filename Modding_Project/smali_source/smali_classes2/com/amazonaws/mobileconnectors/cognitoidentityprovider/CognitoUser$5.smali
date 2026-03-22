.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->E(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

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
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->z()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;)V
    :try_end_0
    .catch Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$3;

    .line 29
    .line 30
    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$3;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;Ljava/lang/Exception;)V

    .line 31
    .line 32
    .line 33
    move-object v1, v2

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
