.class public Lcom/adjust/sdk/EventResponseData;
.super Lcom/adjust/sdk/ResponseData;
.source "SourceFile"


# instance fields
.field private callbackId:Ljava/lang/String;

.field private eventToken:Ljava/lang/String;

.field private sdkPlatform:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "event_token"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/adjust/sdk/EventResponseData;->eventToken:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "event_callback_id"

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/adjust/sdk/EventResponseData;->callbackId:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getSdkPrefixPlatform(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/adjust/sdk/EventResponseData;->sdkPlatform:Ljava/lang/String;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public getFailureResponseData()Lcom/adjust/sdk/AdjustEventFailure;
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
    new-instance v0, Lcom/adjust/sdk/AdjustEventFailure;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/adjust/sdk/AdjustEventFailure;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->sdkPlatform:Ljava/lang/String;

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
    if-eqz v1, :cond_7

    .line 22
    .line 23
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->eventToken:Ljava/lang/String;

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
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->eventToken:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

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
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->message:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move-object v1, v2

    .line 47
    :goto_2
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->timestamp:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    move-object v1, v2

    .line 55
    :goto_3
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->adid:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->callbackId:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    move-object v2, v1

    .line 62
    :cond_5
    iput-object v2, v0, Lcom/adjust/sdk/AdjustEventFailure;->callbackId:Ljava/lang/String;

    .line 63
    .line 64
    iget-boolean v1, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    .line 65
    .line 66
    iput-boolean v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->willRetry:Z

    .line 67
    .line 68
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 69
    .line 70
    if-eqz v1, :cond_6

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    .line 74
    .line 75
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .line 77
    .line 78
    :goto_4
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->jsonResponse:Lorg/json/JSONObject;

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_7
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->eventToken:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->eventToken:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->message:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->timestamp:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->adid:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->callbackId:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->callbackId:Ljava/lang/String;

    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    .line 102
    .line 103
    iput-boolean v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->willRetry:Z

    .line 104
    .line 105
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 106
    .line 107
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->jsonResponse:Lorg/json/JSONObject;

    .line 108
    .line 109
    return-object v0
.end method

.method public getSuccessResponseData()Lcom/adjust/sdk/AdjustEventSuccess;
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
    new-instance v0, Lcom/adjust/sdk/AdjustEventSuccess;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/adjust/sdk/AdjustEventSuccess;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->sdkPlatform:Ljava/lang/String;

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
    if-eqz v1, :cond_7

    .line 22
    .line 23
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->eventToken:Ljava/lang/String;

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
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->eventToken:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

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
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->message:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move-object v1, v2

    .line 47
    :goto_2
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->timestamp:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    move-object v1, v2

    .line 55
    :goto_3
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->adid:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->callbackId:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    move-object v2, v1

    .line 62
    :cond_5
    iput-object v2, v0, Lcom/adjust/sdk/AdjustEventSuccess;->callbackId:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 65
    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    .line 70
    .line 71
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .line 73
    .line 74
    :goto_4
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->jsonResponse:Lorg/json/JSONObject;

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_7
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->eventToken:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->eventToken:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->message:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->timestamp:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->adid:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->callbackId:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->callbackId:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 98
    .line 99
    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->jsonResponse:Lorg/json/JSONObject;

    .line 100
    .line 101
    return-object v0
.end method
