.class public Lcom/huawei/hms/support/api/hwid/RevokeAccessResult;
.super Lcom/huawei/hms/support/api/client/Result;
.source "RevokeAccessResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[HUAWEIIDSDK]RevokeAccessResult"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/support/api/client/Result;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private jsonToSuper(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "errorMsg"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, ""

    .line 27
    .line 28
    :goto_0
    new-instance v1, Lcom/huawei/hms/support/api/client/Status;

    .line 29
    .line 30
    invoke-direct {v1, v0, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/huawei/hms/support/api/client/Result;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const-string v0, "status"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    const-string v0, "statusCode"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string v1, "statusMessage"

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v1, Lcom/huawei/hms/support/api/client/Status;

    .line 59
    .line 60
    invoke-direct {v1, v0, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/huawei/hms/support/api/client/Result;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/api/hwid/RevokeAccessResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/huawei/hms/support/api/hwid/RevokeAccessResult;->jsonToSuper(Lorg/json/JSONObject;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public isSuccess()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->isSuccess()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
