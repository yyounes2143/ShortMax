.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;
.super Ljava/lang/Object;
.source "CognitoUserSession.java"


# static fields
.field private static final d:Ljava/lang/String; = "CognitoUserSession"


# instance fields
.field private final a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

.field private final b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

.field private final c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoRefreshToken;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object v0

    .line 11
    :catch_0
    :cond_0
    return-object v1
.end method

.method public e()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "CognitoUserSession is not valid because idToken is null."

    .line 14
    .line 15
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "CognitoUserSession is not valid because accessToken is null."

    .line 26
    .line 27
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;->b()Ljava/util/Date;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->b()Ljava/util/Date;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 46
    .line 47
    .line 48
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    and-int/2addr v0, v2

    .line 50
    return v0

    .line 51
    :catch_0
    return v1
.end method

.method public f()Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "CognitoUserSession is not valid because idToken is null."

    .line 9
    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->d:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "CognitoUserSession is not valid because accessToken is null."

    .line 21
    .line 22
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-static {}, Lcom/amazonaws/SDKGlobalConfiguration;->a()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    const-wide/16 v5, 0x3e8

    .line 35
    .line 36
    mul-long/2addr v3, v5

    .line 37
    sub-long/2addr v1, v3

    .line 38
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoIdToken;->b()Ljava/util/Date;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    sub-long/2addr v3, v1

    .line 49
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;->b()Ljava/util/Date;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    sub-long/2addr v5, v1

    .line 60
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoIdentityProviderClientConfig;->a()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    cmp-long v1, v3, v1

    .line 65
    .line 66
    if-lez v1, :cond_2

    .line 67
    .line 68
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoIdentityProviderClientConfig;->a()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    cmp-long v1, v5, v1

    .line 73
    .line 74
    if-lez v1, :cond_2

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    :catch_0
    :cond_2
    return v0
.end method
