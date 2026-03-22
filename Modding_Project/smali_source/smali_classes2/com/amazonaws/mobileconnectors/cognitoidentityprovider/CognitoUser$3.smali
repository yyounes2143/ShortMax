.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->x(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

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
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->a:Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->n(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 27
    .line 28
    new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v4, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;

    .line 44
    .line 45
    invoke-direct {v1, p0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$2;

    .line 51
    .line 52
    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;Ljava/lang/Exception;)V

    .line 53
    .line 54
    .line 55
    move-object v1, v2

    .line 56
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
