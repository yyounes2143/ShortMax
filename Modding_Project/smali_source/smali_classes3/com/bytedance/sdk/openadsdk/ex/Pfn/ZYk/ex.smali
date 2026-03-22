.class public Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;


# instance fields
.field public ZYk:J

.field public ex:I

.field public oJ:J

.field public tB:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->ex:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public ZYk(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->ex:I

    return-void
.end method

.method public ZYk(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->ZYk:J

    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->tB:I

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->oJ:J

    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    const-string v0, "total_duration"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->oJ:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4
    const-string v0, "buffers_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->ZYk:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 5
    const-string v0, "break_reason"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->tB:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    const-string v0, "video_backup"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->ex:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    const-string v0, "FeedBreakModel"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
