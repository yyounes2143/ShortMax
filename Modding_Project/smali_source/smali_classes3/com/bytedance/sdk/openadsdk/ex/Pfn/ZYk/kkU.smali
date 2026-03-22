.class public Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;


# instance fields
.field private Pfn:Ljava/lang/String;

.field private ZYk:J

.field private ba:Ljava/lang/String;

.field private ex:I

.field private oJ:Ljava/lang/String;

.field private tB:J


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


# virtual methods
.method public ZYk(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->tB:J

    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->Pfn:Ljava/lang/String;

    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->ex:I

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->ZYk:J

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->oJ:Ljava/lang/String;

    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    const-string v0, "preload_url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->oJ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v0, "preload_size"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->ZYk:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6
    const-string v0, "load_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->tB:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    const-string v0, "error_code"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->ex:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    const-string v0, "error_message"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->Pfn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v0, "error_message_server"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->ba:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    const-string v0, "LoadVideoErrorModel"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tB(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
