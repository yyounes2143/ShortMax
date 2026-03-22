.class public Lcom/bytedance/sdk/openadsdk/core/model/Id;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Pfn:I

.field private ZYk:I

.field private ba:I

.field private cFZ:I

.field private ex:I

.field private jFA:I

.field private kkU:I

.field private oJ:Ljava/lang/String;

.field private so:I

.field private tB:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "horizontal"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->oJ:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ZYk:I

    .line 10
    .line 11
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->tB:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ex:I

    .line 15
    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->Pfn:I

    .line 17
    .line 18
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ba:I

    .line 19
    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->cFZ:I

    .line 21
    .line 22
    const/16 v1, 0x1388

    .line 23
    .line 24
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->so:I

    .line 25
    .line 26
    const/16 v1, 0x1f4

    .line 27
    .line 28
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->jFA:I

    .line 29
    .line 30
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->kkU:I

    .line 31
    .line 32
    return-void
.end method

.method public static oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Id;
    .locals 4

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Id;-><init>()V

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Id;-><init>()V

    .line 4
    const-string v1, "direction"

    const-string v2, "horizontal"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->oJ:Ljava/lang/String;

    .line 5
    const-string v1, "auto_loop"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ZYk:I

    .line 6
    const-string v1, "allow_manual_loop"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->tB:I

    .line 7
    const-string v1, "unlimited_loop"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ex:I

    .line 8
    const-string v1, "left_margin"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->Pfn:I

    .line 9
    const-string v1, "right_margin"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ba:I

    .line 10
    const-string v1, "ad_margin"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->cFZ:I

    .line 11
    const-string v1, "loop_interval_time"

    const/16 v3, 0x1388

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->so:I

    .line 12
    const-string v1, "flip_speed"

    const/16 v3, 0x1f4

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->jFA:I

    .line 13
    const-string v1, "stop_auto_loop"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->kkU:I

    return-object v0
.end method


# virtual methods
.method public Pfn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->Pfn:I

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ZYk:I

    .line 2
    .line 3
    return v0
.end method

.method public ba()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ba:I

    .line 2
    .line 3
    return v0
.end method

.method public cFZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->cFZ:I

    .line 2
    .line 3
    return v0
.end method

.method public dLZ()Lorg/json/JSONObject;
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
    const-string v1, "direction"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->oJ:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "auto_loop"

    .line 14
    .line 15
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ZYk:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "allow_manual_loop"

    .line 21
    .line 22
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->tB:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "unlimited_loop"

    .line 28
    .line 29
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ex:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "left_margin"

    .line 35
    .line 36
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->Pfn:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "right_margin"

    .line 42
    .line 43
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ba:I

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "ad_margin"

    .line 49
    .line 50
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->cFZ:I

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "loop_interval_time"

    .line 56
    .line 57
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->so:I

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "flip_speed"

    .line 63
    .line 64
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->jFA:I

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "stop_auto_loop"

    .line 70
    .line 71
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->kkU:I

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    :catchall_0
    return-object v0
.end method

.method public ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->ex:I

    .line 2
    .line 3
    return v0
.end method

.method public jFA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->jFA:I

    .line 2
    .line 3
    return v0
.end method

.method public kkU()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->kkU:I

    .line 2
    .line 3
    return v0
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public so()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->so:I

    .line 2
    .line 3
    return v0
.end method

.method public tB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Id;->tB:I

    .line 2
    .line 3
    return v0
.end method
