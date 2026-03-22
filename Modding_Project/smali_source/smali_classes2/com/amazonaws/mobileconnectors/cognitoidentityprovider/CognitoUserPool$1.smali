.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;
.super Ljava/lang/Object;
.source "CognitoUserPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->l(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;

.field final synthetic g:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->g:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->d:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->e:Ljava/util/Map;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->g:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;)Landroid/content/Context;

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
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->g:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->a:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->d:Ljava/util/Map;

    .line 25
    .line 26
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->e:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static/range {v2 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->g:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->f(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;

    .line 41
    .line 42
    invoke-direct {v3, p0, v2, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$1;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    new-instance v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$2;

    .line 48
    .line 49
    invoke-direct {v3, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool$1;Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method
