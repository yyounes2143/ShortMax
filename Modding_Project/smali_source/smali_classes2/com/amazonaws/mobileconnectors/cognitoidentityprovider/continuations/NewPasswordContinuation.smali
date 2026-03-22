.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;
.super Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;
.source "NewPasswordContinuation.java"


# instance fields
.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 2
    .line 3
    .line 4
    iput-object p8, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;->m:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->a()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo p2, "userAttributes"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;->d(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->a()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "requiredAttributes"

    .line 27
    .line 28
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;->c(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;->k:Ljava/util/List;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ge p1, v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;->k:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string/jumbo v3, "userAttributes."

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x1

    .line 37
    aget-object v2, v2, v3

    .line 38
    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;->m:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 47
    .line 48
    invoke-interface {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->onFailure(Ljava/lang/Exception;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;->l:Ljava/util/Map;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;->l:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;->m:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->onFailure(Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
