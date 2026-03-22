.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
.super Ljava/lang/Object;
.source "CognitoUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;
    }
.end annotation


# static fields
.field private static final k:Lcom/amazonaws/logging/Log;

.field private static final l:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

.field private i:Ljava/lang/String;

.field private j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 5
    .line 6
    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 22
    .line 23
    return-void
.end method

.method private A(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->B(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method private B(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->g()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 32
    .line 33
    invoke-direct {p1, v1, v2, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V

    .line 34
    .line 35
    .line 36
    return-object p1
.end method

.method private F()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->g(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private I(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v2, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    .line 2
    .line 3
    invoke-direct {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->h(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->f()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->j(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->g(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->e()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {v2, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->i(Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p1

    .line 36
    move-object v3, p3

    .line 37
    move-object v4, p4

    .line 38
    move v5, p5

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->J(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-object p1

    .line 44
    :catch_0
    move-exception p1

    .line 45
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;

    .line 46
    .line 47
    invoke-direct {p2, p0, p4, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$36;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V

    .line 48
    .line 49
    .line 50
    return-object p2
.end method

.method private J(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$26;

    .line 2
    .line 3
    invoke-direct {p3, p0, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$26;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object p3

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->e()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-direct {p0, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->Z(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->d()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-nez p3, :cond_3

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->A(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->q(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;->f()Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;

    .line 44
    .line 45
    invoke-direct {p2, p0, p4, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$27;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_1
    invoke-direct {p0, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->s(Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    if-eqz p3, :cond_2

    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;->d()Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-eqz p3, :cond_2

    .line 65
    .line 66
    new-instance p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->d()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v5, 0x0

    .line 73
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    move-object v0, p3

    .line 79
    move-object v6, p0

    .line 80
    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;

    .line 84
    .line 85
    invoke-direct {p2, p0, p4, p1, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$28;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :cond_2
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;

    .line 91
    .line 92
    invoke-direct {p2, p0, p4, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$29;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :cond_3
    const-string v0, "PASSWORD_VERIFIER"

    .line 98
    .line 99
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;

    .line 106
    .line 107
    invoke-direct {p1, p0, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 108
    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_4
    const-string v0, "SMS_MFA"

    .line 112
    .line 113
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_a

    .line 118
    .line 119
    const-string v0, "SOFTWARE_TOKEN_MFA"

    .line 120
    .line 121
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_5
    const-string v0, "SELECT_MFA_TYPE"

    .line 130
    .line 131
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;

    .line 138
    .line 139
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 140
    .line 141
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 146
    .line 147
    move-object v1, p1

    .line 148
    move-object v2, p0

    .line 149
    move-object v7, p2

    .line 150
    move v8, p5

    .line 151
    move-object v9, p4

    .line 152
    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 153
    .line 154
    .line 155
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;

    .line 156
    .line 157
    invoke-direct {p2, p0, p4, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$32;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChooseMfaContinuation;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :cond_6
    const-string v0, "MFA_SETUP"

    .line 163
    .line 164
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;

    .line 171
    .line 172
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 173
    .line 174
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 179
    .line 180
    move-object v1, p1

    .line 181
    move-object v2, p0

    .line 182
    move-object v7, p2

    .line 183
    move v8, p5

    .line 184
    move-object v9, p4

    .line 185
    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 186
    .line 187
    .line 188
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;

    .line 189
    .line 190
    invoke-direct {p2, p0, p4, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$33;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/RegisterMfaContinuation;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_1

    .line 194
    .line 195
    :cond_7
    const-string v0, "DEVICE_SRP_AUTH"

    .line 196
    .line 197
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_8

    .line 202
    .line 203
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->v(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    goto :goto_1

    .line 208
    :cond_8
    const-string v0, "NEW_PASSWORD_REQUIRED"

    .line 209
    .line 210
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p3

    .line 214
    if-eqz p3, :cond_9

    .line 215
    .line 216
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;

    .line 217
    .line 218
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 219
    .line 220
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 221
    .line 222
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 223
    .line 224
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v3, v4, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    move-object v0, p1

    .line 231
    move-object v1, p0

    .line 232
    move-object v6, p2

    .line 233
    move v7, p5

    .line 234
    move-object v8, p4

    .line 235
    invoke-direct/range {v0 .. v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 236
    .line 237
    .line 238
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;

    .line 239
    .line 240
    invoke-direct {p2, p0, p4, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$34;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/NewPasswordContinuation;)V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_9
    new-instance p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;

    .line 245
    .line 246
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 247
    .line 248
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 251
    .line 252
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v3, v4, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    move-object v0, p3

    .line 259
    move-object v1, p0

    .line 260
    move-object v6, p2

    .line 261
    move v7, p5

    .line 262
    move-object v8, p4

    .line 263
    invoke-direct/range {v0 .. v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->b(Ljava/util/Map;)V

    .line 267
    .line 268
    .line 269
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;

    .line 270
    .line 271
    invoke-direct {p2, p0, p4, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$35;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_a
    :goto_0
    new-instance p3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;

    .line 276
    .line 277
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 278
    .line 279
    move-object v0, p3

    .line 280
    move-object v1, p0

    .line 281
    move-object v3, p2

    .line 282
    move v4, p5

    .line 283
    move-object v5, p4

    .line 284
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;->a(Ljava/util/Map;)V

    .line 288
    .line 289
    .line 290
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;

    .line 291
    .line 292
    invoke-direct {p2, p0, p4, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$31;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V

    .line 293
    .line 294
    .line 295
    :goto_1
    return-object p2
.end method

.method private K(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;",
            ")",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CUSTOM_AUTH"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->B(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->D(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->E(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->a()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string v1, "SECRET_HASH"

    .line 28
    .line 29
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->e()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->c()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "SRP_A"

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b()Ljava/math/BigInteger;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    const/16 v1, 0x10

    .line 69
    .line 70
    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-interface {p1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->a()Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->C(Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->f()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->f()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-lez p1, :cond_3

    .line 99
    .line 100
    new-instance p1, Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->f()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    if-eqz p3, :cond_2

    .line 118
    .line 119
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    check-cast p3, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    .line 124
    .line 125
    invoke-virtual {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->b()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->d()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->E(Ljava/util/Map;)V

    .line 138
    .line 139
    .line 140
    :cond_3
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->F()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->F(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 145
    .line 146
    .line 147
    return-object v0
.end method

.method private L(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;",
            ")",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->E(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "DEVICE_SRP_AUTH"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->C(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->F(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->f()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->G(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "USERNAME"

    .line 27
    .line 28
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b()Ljava/math/BigInteger;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/16 p2, 0x10

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "SRP_A"

    .line 44
    .line 45
    invoke-virtual {v0, p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 46
    .line 47
    .line 48
    const-string p1, "DEVICE_KEY"

    .line 49
    .line 50
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 53
    .line 54
    .line 55
    const-string p1, "SECRET_HASH"

    .line 56
    .line 57
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->F()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->H(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method private M(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .locals 3

    .line 1
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "REFRESH_TOKEN"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1, p1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->j(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {p1, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->j(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 59
    .line 60
    :cond_1
    :goto_0
    const-string p1, "DEVICE_KEY"

    .line 61
    .line 62
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 65
    .line 66
    .line 67
    const-string p1, "SECRET_HASH"

    .line 68
    .line 69
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->D(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p1, "REFRESH_TOKEN_AUTH"

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->B(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 93
    .line 94
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->d(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->A(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->F()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->F(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 108
    .line 109
    .line 110
    return-object v0
.end method

.method private O(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            ")",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->d()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "USER_PASSWORD_AUTH"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->B(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->D(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->E(Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "USERNAME"

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->e()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 46
    .line 47
    .line 48
    const-string p1, "PASSWORD"

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->d()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {p1, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v1, "SECRET_HASH"

    .line 68
    .line 69
    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->f()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->f()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-lez p1, :cond_1

    .line 87
    .line 88
    new-instance p1, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->f()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    .line 107
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->b()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->d()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->E(Ljava/util/Map;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    return-object v0

    .line 129
    :cond_2
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    .line 130
    .line 131
    const-string p2, "User name and password are required"

    .line 132
    .line 133
    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
.end method

.method private P(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;",
            ")",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "USER_SRP_AUTH"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->B(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->D(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->E(Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "SECRET_HASH"

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 38
    .line 39
    .line 40
    const-string p1, "USERNAME"

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->e()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b()Ljava/math/BigInteger;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/16 p3, 0x10

    .line 54
    .line 55
    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string p3, "SRP_A"

    .line 60
    .line 61
    invoke-virtual {v0, p3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 65
    .line 66
    const-string p3, "DEVICE_KEY"

    .line 67
    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->e()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {p1, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->j(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0, p3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->f()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->f()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-lez p1, :cond_2

    .line 108
    .line 109
    new-instance p1, Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->f()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    if-eqz p3, :cond_1

    .line 127
    .line 128
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    check-cast p3, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    .line 133
    .line 134
    invoke-virtual {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->b()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;->d()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->E(Ljava/util/Map;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_3

    .line 156
    .line 157
    new-instance p2, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 158
    .line 159
    invoke-direct {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->d(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->A(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 166
    .line 167
    .line 168
    :cond_3
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->F()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->F(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 173
    .line 174
    .line 175
    return-object v0
.end method

.method private Q()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 9

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    const-string v1, "CognitoIdentityProvider."

    .line 4
    .line 5
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v3, v3, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v5, ".idToken"

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v6, ".accessToken"

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ".refreshToken"

    .line 93
    .line 94
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 104
    .line 105
    invoke-virtual {v1, v4}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const-string v6, " is null."

    .line 110
    .line 111
    const-string v7, "IdToken for "

    .line 112
    .line 113
    if-eqz v1, :cond_1

    .line 114
    .line 115
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    .line 125
    new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 126
    .line 127
    invoke-direct {v4, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :cond_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    .line 135
    .line 136
    new-instance v8, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-interface {v1, v4}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_1
    move-object v4, v3

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 159
    .line 160
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 161
    .line 162
    invoke-virtual {v1, v5}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_3

    .line 167
    .line 168
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 169
    .line 170
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 171
    .line 172
    invoke-virtual {v1, v5}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_2

    .line 177
    .line 178
    new-instance v5, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 179
    .line 180
    invoke-direct {v5, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_2
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    .line 185
    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-interface {v1, v5}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_3
    move-object v5, v3

    .line 208
    :goto_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 209
    .line 210
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_5

    .line 217
    .line 218
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 219
    .line 220
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 221
    .line 222
    invoke-virtual {v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    if-eqz v1, :cond_4

    .line 227
    .line 228
    new-instance v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 229
    .line 230
    invoke-direct {v3, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_4
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    .line 235
    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_5
    :goto_2
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 258
    .line 259
    invoke-direct {v0, v4, v5, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    .line 261
    .line 262
    move-object v2, v0

    .line 263
    goto :goto_4

    .line 264
    :goto_3
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    .line 265
    .line 266
    const-string v3, "Error while reading the tokens from the persistent store."

    .line 267
    .line 268
    invoke-interface {v1, v3, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    :goto_4
    return-object v2
.end method

.method private R(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->M(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->m(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->B(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    .line 31
    .line 32
    const-string/jumbo v0, "user is not authenticated"

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method private U(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->E(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->B(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->D(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->C(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->F()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->A(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 39
    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->d(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;->z(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 55
    .line 56
    invoke-interface {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->d(Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method private W(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$25;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method private X(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$37;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method private Y(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$24;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method private Z(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "USERNAME"

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->j(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method private a0(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;",
            ")",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;"
        }
    .end annotation

    .line 1
    const-string v0, "HmacSHA256"

    .line 2
    .line 3
    const-string v1, "USERNAME"

    .line 4
    .line 5
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    .line 11
    const-string v3, "USER_ID_FOR_SRP"

    .line 12
    .line 13
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    .line 19
    const-string v4, "SRP_B"

    .line 20
    .line 21
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ljava/lang/String;

    .line 26
    .line 27
    const-string v5, "SALT"

    .line 28
    .line 29
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Ljava/lang/String;

    .line 34
    .line 35
    const-string v6, "SECRET_BLOCK"

    .line 36
    .line 37
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Ljava/lang/String;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v2, v6, v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->j(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v2, v6, v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v2, Ljava/math/BigInteger;

    .line 72
    .line 73
    const/16 v6, 0x10

    .line 74
    .line 75
    invoke-direct {v2, v4, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a()Ljava/math/BigInteger;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 87
    .line 88
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_1

    .line 93
    .line 94
    new-instance v4, Ljava/math/BigInteger;

    .line 95
    .line 96
    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p6, v3, p3, v2, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->c(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    new-instance p6, Ljava/util/Date;

    .line 104
    .line 105
    invoke-direct {p6}, Ljava/util/Date;-><init>()V

    .line 106
    .line 107
    .line 108
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 113
    .line 114
    invoke-direct {v4, p3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 118
    .line 119
    .line 120
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 121
    .line 122
    invoke-virtual {p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    const-string v0, "_"

    .line 127
    .line 128
    const/4 v4, 0x2

    .line 129
    invoke-virtual {p3, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    const/4 v0, 0x1

    .line 134
    aget-object p3, p3, v0

    .line 135
    .line 136
    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 137
    .line 138
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {v2, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    invoke-virtual {v2, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 150
    .line 151
    .line 152
    invoke-static {p2}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-virtual {v2, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 157
    .line 158
    .line 159
    new-instance p3, Ljava/text/SimpleDateFormat;

    .line 160
    .line 161
    const-string v3, "EEE MMM d HH:mm:ss z yyyy"

    .line 162
    .line 163
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 164
    .line 165
    invoke-direct {p3, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 166
    .line 167
    .line 168
    const-string v3, "UTC"

    .line 169
    .line 170
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {p3, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, p6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 182
    .line 183
    .line 184
    move-result-object p6

    .line 185
    invoke-virtual {v2, p6}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 186
    .line 187
    .line 188
    move-result-object p6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    new-instance v2, Ljava/util/HashMap;

    .line 190
    .line 191
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v3, "PASSWORD_CLAIM_SECRET_BLOCK"

    .line 195
    .line 196
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    new-instance p2, Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {p6}, Lcom/amazonaws/util/Base64;->encode([B)[B

    .line 202
    .line 203
    .line 204
    move-result-object p6

    .line 205
    invoke-direct {p2, p6, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 206
    .line 207
    .line 208
    const-string p6, "PASSWORD_CLAIM_SIGNATURE"

    .line 209
    .line 210
    invoke-interface {v2, p6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    const-string p2, "TIMESTAMP"

    .line 214
    .line 215
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 219
    .line 220
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    const-string p2, "DEVICE_KEY"

    .line 224
    .line 225
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 226
    .line 227
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    const-string p2, "SECRET_HASH"

    .line 231
    .line 232
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 233
    .line 234
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    new-instance p2, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 238
    .line 239
    invoke-direct {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->C(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {p2, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->E(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, p5}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->G(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->D(Ljava/util/Map;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->F(Ljava/util/Map;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 260
    .line 261
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    if-eqz p1, :cond_0

    .line 266
    .line 267
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 268
    .line 269
    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->d(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p2, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->B(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 276
    .line 277
    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->F()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->H(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 283
    .line 284
    .line 285
    return-object p2

    .line 286
    :catch_0
    move-exception p1

    .line 287
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    .line 288
    .line 289
    const-string p3, "SRP error"

    .line 290
    .line 291
    invoke-direct {p2, p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    throw p2

    .line 295
    :cond_1
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    .line 296
    .line 297
    const-string p2, "SRP error, B cannot be zero"

    .line 298
    .line 299
    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw p1
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->U(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->P(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic f(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->Z(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a0(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic i(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->I(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic j(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic l(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->K(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic m(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->O(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic n(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->y(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic o(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 2
    .line 3
    return-object p0
.end method

.method private r()V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "CognitoIdentityProvider.%s.%s.idToken"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "CognitoIdentityProvider.%s.%s.accessToken"

    .line 16
    .line 17
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "CognitoIdentityProvider.%s.%s.refreshToken"

    .line 30
    .line 31
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 34
    .line 35
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->p(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->p(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->p(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    .line 67
    .line 68
    const-string v2, "Error while deleting from SharedPreferences"

    .line 69
    .line 70
    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method private s(Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;->e(Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->z()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->d()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string/jumbo v1, "verifier"

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v6, v1

    .line 39
    check-cast v6, Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "salt"

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    move-object v7, v1

    .line 48
    check-cast v7, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->k()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    move-object v3, p0

    .line 55
    invoke-direct/range {v3 .. v8}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->t(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;

    .line 56
    .line 57
    .line 58
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->d()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {v2, v3, v4, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v4, "secret"

    .line 85
    .line 86
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 91
    .line 92
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v2, v3, v0, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->b()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 110
    .line 111
    invoke-static {v0, v2, p1, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :catch_0
    move-exception p1

    .line 116
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    .line 117
    .line 118
    const-string v1, "Device confirmation failed: "

    .line 119
    .line 120
    invoke-interface {v0, v1, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    const/4 p1, 0x0

    .line 124
    return-object p1
.end method

.method private t(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    if-eqz p5, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;

    .line 25
    .line 26
    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->c()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->v(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->y(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p5}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->z(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->A(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 50
    .line 51
    invoke-interface {p1, p3}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->e(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_0
    if-nez p2, :cond_1

    .line 57
    .line 58
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    .line 59
    .line 60
    const-string p2, "Device key is null"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_1
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    .line 67
    .line 68
    const-string p2, "Device name is null"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_2
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    .line 75
    .line 76
    const-string p2, "User is not authorized"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method private v(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->l(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->i(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    new-instance v6, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;

    .line 30
    .line 31
    invoke-direct {v6, v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, p2, v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->L(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 39
    .line 40
    invoke-interface {v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->q(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v1, "DEVICE_PASSWORD_VERIFIER"

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->d()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    move-object v1, p0

    .line 57
    move-object v2, p1

    .line 58
    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->u(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 63
    .line 64
    invoke-interface {v2, v1}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->q(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const/4 v4, 0x0

    .line 69
    move-object v1, p0

    .line 70
    move-object v2, p1

    .line 71
    move-object v5, p3

    .line 72
    move v6, p4

    .line 73
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->J(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 v4, 0x0

    .line 81
    move-object v1, p0

    .line 82
    move-object v2, p1

    .line 83
    move-object v5, p3

    .line 84
    move v6, p4

    .line 85
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->J(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 86
    .line 87
    .line 88
    move-result-object v0
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-object v0

    .line 90
    :goto_0
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;

    .line 91
    .line 92
    invoke-direct {v1, p0, p3, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$39;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :catch_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    new-instance v7, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;

    .line 110
    .line 111
    move-object v1, v7

    .line 112
    move-object v2, p0

    .line 113
    move-object v3, p0

    .line 114
    move v4, p4

    .line 115
    move-object v5, p3

    .line 116
    move-object v6, p1

    .line 117
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/util/Map;)V

    .line 118
    .line 119
    .line 120
    return-object v7
.end method

.method private y(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->A(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->C(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->E(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->F()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->D(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->B(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->d()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 40
    .line 41
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->d(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;->z(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 51
    .line 52
    invoke-interface {p1, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->n(Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method


# virtual methods
.method public C(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->D(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public D(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->z()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {p2, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_2

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    invoke-interface {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->onFailure(Ljava/lang/Exception;)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :catch_2
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v0, p0, v1, v2, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->h(Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->G()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p2, v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    invoke-interface {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->onFailure(Ljava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    :goto_2
    return-void

    .line 44
    :cond_0
    new-instance p1, Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidParameterException;

    .line 45
    .line 46
    const-string p2, "callback is null"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public E(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Thread;

    .line 4
    .line 5
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    .line 18
    .line 19
    const-string v0, "callback is null"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public N(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    .line 2
    .line 3
    invoke-direct {v0, p0, p4, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;

    .line 13
    .line 14
    invoke-direct {p2, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$7;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    return-object p1
.end method

.method public S(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->T(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public T(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Thread;

    .line 4
    .line 5
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    .line 18
    .line 19
    const-string p2, "callback is null"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public V(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->u()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->u()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "DEVICE_KEY"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :catch_1
    move-exception p2

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 26
    .line 27
    invoke-interface {v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->q(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v1, p0

    .line 33
    move-object v2, p1

    .line 34
    move-object v5, p3

    .line 35
    move v6, p4

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->J(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p1

    .line 41
    :goto_1
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;

    .line 42
    .line 43
    invoke-direct {p2, p0, p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$23;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    return-object p2

    .line 47
    :goto_2
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Device"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->h()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->a:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {p2, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;

    .line 73
    .line 74
    move-object v2, p2

    .line 75
    move-object v3, p0

    .line 76
    move-object v4, p0

    .line 77
    move v5, p4

    .line 78
    move-object v6, p3

    .line 79
    move-object v7, p1

    .line 80
    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$21;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    return-object p2

    .line 84
    :cond_1
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;

    .line 85
    .line 86
    invoke-direct {p1, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$22;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/services/cognitoidentityprovider/model/ResourceNotFoundException;)V

    .line 87
    .line 88
    .line 89
    return-object p1
.end method

.method a(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;",
            "Z)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "PASSWORD_VERIFIER"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->Y(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    const-string v0, "CUSTOM_CHALLENGE"

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->b()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->W(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_1
    const-string v0, "USER_PASSWORD"

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;->b()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->X(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_2
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$8;

    .line 53
    .line 54
    invoke-direct {p1, p0, p3, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$8;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;)V

    .line 55
    .line 56
    .line 57
    return-object p1
.end method

.method p()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CognitoIdentityProvider."

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ".LastAuthUser"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    .line 37
    .line 38
    const-string v2, "Error while writing to SharedPreferences."

    .line 39
    .line 40
    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method q(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V
    .locals 7

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    const-string v1, "CognitoIdentityProvider."

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, ".idToken"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, ".accessToken"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, ".refreshToken"

    .line 87
    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ".LastAuthUser"

    .line 109
    .line 110
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 120
    .line 121
    iget-object v4, v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    const/4 v6, 0x0

    .line 128
    if-eqz v5, :cond_0

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;->c()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    goto :goto_0

    .line 139
    :catch_0
    move-exception p1

    .line 140
    goto :goto_2

    .line 141
    :cond_0
    move-object v5, v6

    .line 142
    :goto_0
    invoke-virtual {v4, v2, v5}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 146
    .line 147
    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    if-eqz v4, :cond_1

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->c()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    goto :goto_1

    .line 164
    :cond_1
    move-object v4, v6

    .line 165
    :goto_1
    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 169
    .line 170
    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    if-eqz v3, :cond_2

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;->a()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    :cond_2
    invoke-virtual {v2, v0, v6}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_3
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 190
    .line 191
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 192
    .line 193
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :goto_2
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->k:Lcom/amazonaws/logging/Log;

    .line 200
    .line 201
    const-string v1, "Error while writing to SharedPreferences."

    .line 202
    .line 203
    invoke-interface {v0, v1, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    :goto_3
    return-void
.end method

.method public u(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;",
            ")",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;"
        }
    .end annotation

    .line 1
    const-string v0, "SECRET_BLOCK"

    .line 2
    .line 3
    const-string v1, "HmacSHA256"

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->e()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "USERNAME"

    .line 10
    .line 11
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v2, Ljava/math/BigInteger;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->e()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "SRP_B"

    .line 26
    .line 27
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/String;

    .line 32
    .line 33
    const/16 v5, 0x10

    .line 34
    .line 35
    invoke-direct {v2, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a()Ljava/math/BigInteger;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    new-instance v4, Ljava/math/BigInteger;

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->e()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-string v7, "SALT"

    .line 61
    .line 62
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p5, v5, p3, v2, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->c(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    new-instance p5, Ljava/util/Date;

    .line 78
    .line 79
    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    .line 80
    .line 81
    .line 82
    :try_start_0
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 87
    .line 88
    invoke-direct {v4, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 92
    .line 93
    .line 94
    sget-object p3, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    invoke-virtual {p4, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    invoke-virtual {v2, p4}, Ljavax/crypto/Mac;->update([B)V

    .line 101
    .line 102
    .line 103
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p4, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 106
    .line 107
    .line 108
    move-result-object p4

    .line 109
    invoke-virtual {v2, p4}, Ljavax/crypto/Mac;->update([B)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->e()Ljava/util/Map;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    check-cast p4, Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {p4}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    invoke-virtual {v2, p4}, Ljavax/crypto/Mac;->update([B)V

    .line 127
    .line 128
    .line 129
    new-instance p4, Ljava/text/SimpleDateFormat;

    .line 130
    .line 131
    const-string v1, "EEE MMM d HH:mm:ss z yyyy"

    .line 132
    .line 133
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 134
    .line 135
    invoke-direct {p4, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "UTC"

    .line 139
    .line 140
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p4, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p4, p5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p4

    .line 151
    invoke-virtual {p4, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 152
    .line 153
    .line 154
    move-result-object p5

    .line 155
    invoke-virtual {v2, p5}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 156
    .line 157
    .line 158
    move-result-object p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->d:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v1, v2, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoSecretHash;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 170
    .line 171
    new-instance v1, Ljava/util/HashMap;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->e()Ljava/util/Map;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v2, "PASSWORD_CLAIM_SECRET_BLOCK"

    .line 185
    .line 186
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    new-instance v0, Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {p5}, Lcom/amazonaws/util/Base64;->encode([B)[B

    .line 192
    .line 193
    .line 194
    move-result-object p5

    .line 195
    invoke-direct {v0, p5, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 196
    .line 197
    .line 198
    const-string p3, "PASSWORD_CLAIM_SIGNATURE"

    .line 199
    .line 200
    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    const-string p3, "TIMESTAMP"

    .line 204
    .line 205
    invoke-interface {v1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->f:Ljava/lang/String;

    .line 209
    .line 210
    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    const-string p3, "DEVICE_KEY"

    .line 214
    .line 215
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->g:Ljava/lang/String;

    .line 216
    .line 217
    invoke-interface {v1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    const-string p3, "SECRET_HASH"

    .line 221
    .line 222
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->i:Ljava/lang/String;

    .line 223
    .line 224
    invoke-interface {v1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    new-instance p3, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;

    .line 228
    .line 229
    invoke-direct {p3}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->d()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p4

    .line 236
    invoke-virtual {p3, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->C(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->c:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {p3, p4}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->E(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->f()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->G(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3, v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->D(Ljava/util/Map;)V

    .line 252
    .line 253
    .line 254
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->F()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->H(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p3, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;->F(Ljava/util/Map;)V

    .line 262
    .line 263
    .line 264
    return-object p3

    .line 265
    :catch_0
    move-exception p1

    .line 266
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    .line 267
    .line 268
    const-string p3, "SRP error"

    .line 269
    .line 270
    invoke-direct {p2, p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    throw p2

    .line 274
    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    .line 275
    .line 276
    const-string p2, "SRP error, B cannot be zero"

    .line 277
    .line 278
    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p1
.end method

.method public w(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->x(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public x(Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Thread;

    .line 4
    .line 5
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p0, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    .line 18
    .line 19
    const-string p2, "callback is null"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method protected z()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    .locals 4

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->e:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->p()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->Q()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->f()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->p()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-object v1

    .line 46
    :cond_1
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 47
    .line 48
    .line 49
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->R(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->q(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->j:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
    :try_end_1
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/NotAuthorizedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/amazonaws/services/cognitoidentityprovider/model/UserNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    :try_start_2
    monitor-exit v0

    .line 64
    return-object v1

    .line 65
    :catch_0
    move-exception v1

    .line 66
    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    .line 68
    goto :goto_1

    .line 69
    :catch_2
    move-exception v1

    .line 70
    goto :goto_2

    .line 71
    :goto_0
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    .line 72
    .line 73
    const-string v3, "Failed to authenticate user"

    .line 74
    .line 75
    invoke-direct {v2, v3, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw v2

    .line 79
    :goto_1
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->r()V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    .line 83
    .line 84
    const-string v3, "User does not exist"

    .line 85
    .line 86
    invoke-direct {v2, v3, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v2

    .line 90
    :goto_2
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->r()V

    .line 91
    .line 92
    .line 93
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    .line 94
    .line 95
    const-string v3, "User is not authenticated"

    .line 96
    .line 97
    invoke-direct {v2, v3, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw v2

    .line 101
    :cond_2
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    .line 102
    .line 103
    const-string v2, "User is not authenticated"

    .line 104
    .line 105
    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v1

    .line 109
    :cond_3
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;

    .line 110
    .line 111
    const-string v2, "User-ID is null"

    .line 112
    .line 113
    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoNotAuthorizedException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v1

    .line 117
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    throw v1
.end method
