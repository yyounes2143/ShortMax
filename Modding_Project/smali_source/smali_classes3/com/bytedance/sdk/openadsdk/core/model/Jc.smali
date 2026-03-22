.class public Lcom/bytedance/sdk/openadsdk/core/model/Jc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;
    }
.end annotation


# instance fields
.field private Pfn:Lorg/json/JSONObject;

.field private ZYk:Ljava/lang/String;

.field private ba:Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;

.field private ex:Ljava/lang/String;

.field private oJ:Ljava/lang/String;

.field private tB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Jc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;-><init>()V

    .line 3
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->oJ:Ljava/lang/String;

    .line 4
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ex:Ljava/lang/String;

    .line 5
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->tB:Ljava/lang/String;

    .line 6
    const-string v1, "md5"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ZYk:Ljava/lang/String;

    .line 7
    const-string v1, "custom_components"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->Pfn:Lorg/json/JSONObject;

    .line 8
    const-string v1, "preload"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ba:Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public Pfn()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->Pfn:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ZYk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ba:Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public cFZ()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "id"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->oJ:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "md5"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ZYk:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "url"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->tB:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "data"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ex:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "custom_components"

    .line 35
    .line 36
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->Pfn:Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ba:Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    const-string v2, "preload"

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;->ex()Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    :cond_0
    return-object v0
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ex:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public tB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->tB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
