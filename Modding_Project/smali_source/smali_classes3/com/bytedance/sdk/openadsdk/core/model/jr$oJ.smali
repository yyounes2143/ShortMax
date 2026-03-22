.class public Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/jr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private Pfn:I

.field private ZYk:I

.field private ex:I

.field private oJ:I

.field private tB:I


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

.method public static oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    const-string v1, "padding_left"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->oJ:I

    .line 3
    const-string v1, "padding_right"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->ZYk:I

    .line 4
    const-string v1, "padding_top"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->tB:I

    .line 5
    const-string v1, "padding_bottom"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->ex:I

    .line 6
    const-string v1, "card_spacing"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->Pfn:I

    return-object v0
.end method


# virtual methods
.method public Pfn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->Pfn:I

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->tB:I

    .line 2
    .line 3
    return v0
.end method

.method public ba()Lorg/json/JSONObject;
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
    const-string v1, "padding_left"

    .line 7
    .line 8
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->oJ:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "padding_right"

    .line 14
    .line 15
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->ZYk:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "padding_top"

    .line 21
    .line 22
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->tB:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "padding_bottom"

    .line 28
    .line 29
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->ex:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "card_spacing"

    .line 35
    .line 36
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->Pfn:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :catch_0
    return-object v0
.end method

.method public ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->ZYk:I

    .line 2
    .line 3
    return v0
.end method

.method public oJ()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->ex:I

    return v0
.end method

.method public tB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/jr$oJ;->oJ:I

    .line 2
    .line 3
    return v0
.end method
