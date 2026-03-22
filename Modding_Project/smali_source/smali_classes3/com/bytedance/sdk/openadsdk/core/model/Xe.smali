.class public Lcom/bytedance/sdk/openadsdk/core/model/Xe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZYk:I

.field private oJ:I

.field private tB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Next Ad"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->tB:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Xe;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Xe;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "endcard_show_time"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7
    const-string v3, "is_allow_pause"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 8
    const-string v3, "endcard_next_ad_text"

    const-string v4, "Next Ad"

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->ZYk(I)V

    .line 10
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->oJ(I)V

    .line 11
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->oJ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method


# virtual methods
.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->tB:Ljava/lang/String;

    return-object v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->oJ:I

    return-void
.end method

.method public ex()Lorg/json/JSONObject;
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
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->oJ:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    const-string v2, "endcard_show_time"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string v1, "is_allow_pause"

    .line 17
    .line 18
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->ZYk:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->tB:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    const-string v1, "endcard_next_ad_text"

    .line 32
    .line 33
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->tB:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :cond_1
    return-object v0

    .line 39
    :catchall_0
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public oJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->ZYk:I

    return v0
.end method

.method public oJ(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->ZYk:I

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->tB:Ljava/lang/String;

    return-void
.end method

.method public tB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->oJ:I

    .line 2
    .line 3
    return v0
.end method
