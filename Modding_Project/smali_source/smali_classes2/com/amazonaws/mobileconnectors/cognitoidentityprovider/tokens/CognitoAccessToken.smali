.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoAccessToken;
.super Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;
.source "CognitoAccessToken.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()Ljava/util/Date;
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "exp"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoJWTParser;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/16 v2, 0x3e8

    .line 20
    .line 21
    mul-long/2addr v0, v2

    .line 22
    new-instance v2, Ljava/util/Date;

    .line 23
    .line 24
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-object v2

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/tokens/CognitoUserToken;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "username"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoJWTParser;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
