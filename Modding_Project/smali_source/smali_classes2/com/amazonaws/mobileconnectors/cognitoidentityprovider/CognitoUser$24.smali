.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->Y(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
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
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Z

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
    new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v6, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->a:Ljava/util/Map;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->m(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 37
    .line 38
    invoke-virtual {v9}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->e()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "PASSWORD_VERIFIER"

    .line 46
    .line 47
    invoke-virtual {v9}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->d()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->d()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->a:Ljava/util/Map;

    .line 68
    .line 69
    invoke-virtual {v9}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->e()Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->d()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v9}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->d()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v9}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->f()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->a:Ljava/util/Map;

    .line 94
    .line 95
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 96
    .line 97
    iget-boolean v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Z

    .line 98
    .line 99
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->V(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    goto :goto_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    const-string v1, "Failed to find password in authentication details to response to PASSWORD_VERIFIER challenge"

    .line 114
    .line 115
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_1
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 120
    .line 121
    iget-object v8, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->a:Ljava/util/Map;

    .line 122
    .line 123
    iget-object v10, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;

    .line 124
    .line 125
    iget-object v11, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 126
    .line 127
    iget-boolean v12, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Z

    .line 128
    .line 129
    invoke-static/range {v7 .. v12}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 138
    .line 139
    invoke-interface {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->onFailure(Ljava/lang/Exception;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const-string v3, "Device"

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_2

    .line 156
    .line 157
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 164
    .line 165
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 174
    .line 175
    invoke-static {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 183
    .line 184
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 185
    .line 186
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    iget-boolean v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->d:Z

    .line 191
    .line 192
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 193
    .line 194
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->a:Ljava/util/Map;

    .line 198
    .line 199
    invoke-virtual {v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->h(Ljava/util/Map;)V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->G()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-interface {v2, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 213
    .line 214
    invoke-interface {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->onFailure(Ljava/lang/Exception;)V

    .line 215
    .line 216
    .line 217
    :goto_2
    return-void
.end method
