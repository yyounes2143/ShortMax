.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->T(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;

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
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

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
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->a:Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;

    .line 25
    .line 26
    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$2;

    .line 32
    .line 33
    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;Ljava/lang/Exception;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
