.class Lcom/amazonaws/mobile/client/AWSMobileClient$12;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->d(Lcom/amazonaws/mobile/client/Callback;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Z

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->b:Z

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
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->r()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "provider"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->e:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/Exception;

    .line 31
    .line 32
    const-string v2, "getTokens does not support retrieving tokens for federated sign-in"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->b:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->I()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/Exception;

    .line 56
    .line 57
    const-string v2, "getTokens does not support retrieving tokens while signed-out"

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->E()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/Exception;

    .line 77
    .line 78
    const-string v2, "You must be signed-in with Cognito Userpools to be able to use getTokens"

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s()Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->HOSTED_UI:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 103
    .line 104
    invoke-static {v0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->k(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->s()Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget-object v1, Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;->OAUTH2:Lcom/amazonaws/mobile/client/AWSMobileClient$SignInMode;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 123
    .line 124
    new-instance v1, Ljava/lang/Exception;

    .line 125
    .line 126
    const-string v2, "Tokens are not supported for OAuth2"

    .line 127
    .line 128
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/amazonaws/mobile/client/AWSMobileClient;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-instance v2, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;

    .line 148
    .line 149
    invoke-direct {v2, p0}, Lcom/amazonaws/mobile/client/AWSMobileClient$12$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$12;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->D(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$12;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 158
    .line 159
    invoke-interface {v1, v0}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    return-void
.end method
