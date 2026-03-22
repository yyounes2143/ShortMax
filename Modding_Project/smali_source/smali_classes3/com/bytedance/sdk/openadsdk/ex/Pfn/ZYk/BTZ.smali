.class public Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/BTZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;


# instance fields
.field private ZYk:J

.field private ex:J

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
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/BTZ;->tB:J

    .line 2
    .line 3
    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/BTZ;->ZYk:J

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/BTZ;->oJ:Ljava/lang/String;

    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    const-string v0, "preload_url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/BTZ;->oJ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v0, "preload_size"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/BTZ;->ZYk:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 5
    const-string v0, "load_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/BTZ;->tB:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6
    const-string v0, "local_cache"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/BTZ;->ex:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    const-string v0, "LoadVideoSuccessModel"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tB(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/BTZ;->ex:J

    .line 2
    .line 3
    return-void
.end method
