.class public Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;
.super Ljava/lang/Object;
.source "GetAssistTokenRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserIdentify()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUserIdentify(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "accessToken"

    .line 15
    .line 16
    iget-object v2, p0, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const-string v1, "userIdentify"

    .line 30
    .line 31
    iget-object v2, p0, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    const-string v1, "sessionId"

    .line 45
    .line 46
    iget-object v2, p0, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->c:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
