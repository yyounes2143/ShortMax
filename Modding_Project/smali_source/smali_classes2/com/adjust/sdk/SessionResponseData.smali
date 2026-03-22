.class public Lcom/adjust/sdk/SessionResponseData;
.super Lcom/adjust/sdk/ResponseData;
.source "SourceFile"


# instance fields
.field public deeplink:Landroid/net/Uri;

.field private sdkPlatform:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getSdkPrefixPlatform(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/adjust/sdk/SessionResponseData;->sdkPlatform:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getFailureResponseData()Lcom/adjust/sdk/AdjustSessionFailure;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/adjust/sdk/ResponseData;->success:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Lcom/adjust/sdk/AdjustSessionFailure;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/adjust/sdk/AdjustSessionFailure;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->sdkPlatform:Ljava/lang/String;

    .line 13
    .line 14
    const-string/jumbo v2, "unity"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_5

    .line 22
    .line 23
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v2

    .line 31
    :goto_0
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->message:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object v1, v2

    .line 39
    :goto_1
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->timestamp:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    move-object v2, v1

    .line 46
    :cond_3
    iput-object v2, v0, Lcom/adjust/sdk/AdjustSessionFailure;->adid:Ljava/lang/String;

    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    .line 49
    .line 50
    iput-boolean v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->willRetry:Z

    .line 51
    .line 52
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .line 61
    .line 62
    :goto_2
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->jsonResponse:Lorg/json/JSONObject;

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_5
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->message:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->timestamp:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->adid:Ljava/lang/String;

    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    .line 78
    .line 79
    iput-boolean v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->willRetry:Z

    .line 80
    .line 81
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 82
    .line 83
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->jsonResponse:Lorg/json/JSONObject;

    .line 84
    .line 85
    return-object v0
.end method

.method public getSuccessResponseData()Lcom/adjust/sdk/AdjustSessionSuccess;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/adjust/sdk/ResponseData;->success:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Lcom/adjust/sdk/AdjustSessionSuccess;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/adjust/sdk/AdjustSessionSuccess;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->sdkPlatform:Ljava/lang/String;

    .line 13
    .line 14
    const-string/jumbo v2, "unity"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_5

    .line 22
    .line 23
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v2

    .line 31
    :goto_0
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->message:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object v1, v2

    .line 39
    :goto_1
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->timestamp:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    move-object v2, v1

    .line 46
    :cond_3
    iput-object v2, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->adid:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .line 57
    .line 58
    :goto_2
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->jsonResponse:Lorg/json/JSONObject;

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_5
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->message:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->timestamp:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->adid:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 74
    .line 75
    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->jsonResponse:Lorg/json/JSONObject;

    .line 76
    .line 77
    return-object v0
.end method
