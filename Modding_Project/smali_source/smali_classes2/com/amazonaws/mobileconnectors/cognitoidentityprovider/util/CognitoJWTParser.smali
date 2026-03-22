.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoJWTParser;
.super Ljava/lang/Object;
.source "CognitoJWTParser.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoJWTParser;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :catch_0
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    .line 19
    .line 20
    const-string p1, "invalid token"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoJWTParser;->c(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "\\."

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x1

    .line 11
    aget-object p0, p0, v0

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "UTF-8"

    .line 22
    .line 23
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :catch_2
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    .line 37
    .line 38
    const-string v0, "error in parsing JSON"

    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :goto_0
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :goto_1
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v0, p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "\\."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length p0, p0

    .line 8
    const/4 v0, 0x3

    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;

    .line 13
    .line 14
    const-string v0, "not a JSON Web Token"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoParameterInvalidException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method
