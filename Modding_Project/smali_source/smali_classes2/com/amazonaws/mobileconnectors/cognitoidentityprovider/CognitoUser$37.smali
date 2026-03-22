.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->X(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic d:Z

.field final synthetic e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->d:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->a:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->m(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->m(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->e()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "USER_ID_FOR_SRP"

    .line 28
    .line 29
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->a:Ljava/util/Map;

    .line 41
    .line 42
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 45
    .line 46
    iget-boolean v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->d:Z

    .line 47
    .line 48
    invoke-static/range {v2 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 58
    .line 59
    invoke-interface {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->onFailure(Ljava/lang/Exception;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method
