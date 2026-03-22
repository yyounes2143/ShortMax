.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->W(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
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
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->d:Z

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
    .locals 13

    .line 1
    :try_start_0
    new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->H()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {v6, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->a:Ljava/util/Map;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 17
    .line 18
    invoke-static {v0, v1, v2, v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->m(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 33
    .line 34
    invoke-virtual {v9}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->e()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "PASSWORD_VERIFIER"

    .line 42
    .line 43
    invoke-virtual {v9}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->d()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->d()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->a:Ljava/util/Map;

    .line 64
    .line 65
    invoke-virtual {v9}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->e()Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->d()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v9}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->d()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v9}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->f()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->a:Ljava/util/Map;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 92
    .line 93
    iget-boolean v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->d:Z

    .line 94
    .line 95
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->V(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    const-string v1, "Failed to find password in authentication details to response to PASSWORD_VERIFIER challenge"

    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_1
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 114
    .line 115
    iget-object v8, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->a:Ljava/util/Map;

    .line 116
    .line 117
    iget-object v10, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 118
    .line 119
    iget-object v11, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 120
    .line 121
    iget-boolean v12, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->d:Z

    .line 122
    .line 123
    invoke-static/range {v7 .. v12}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 132
    .line 133
    invoke-interface {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->onFailure(Ljava/lang/Exception;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    return-void
.end method
