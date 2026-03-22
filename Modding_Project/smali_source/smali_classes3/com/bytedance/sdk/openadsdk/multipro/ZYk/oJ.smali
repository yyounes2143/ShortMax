.class public Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ$oJ;
    }
.end annotation


# instance fields
.field public Pfn:J

.field public ZYk:Z

.field public ba:J

.field public cFZ:J

.field public ex:Z

.field public oJ:Z

.field public tB:Z


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

.method public static oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;-><init>()V

    .line 12
    const-string v1, "isCompleted"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 13
    const-string v1, "isFromVideoDetailPage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->tB(Z)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 14
    const-string v1, "isFromDetailPage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->ex(Z)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 15
    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->oJ(J)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 16
    const-string v1, "totalPlayDuration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->ZYk(J)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 17
    const-string v1, "currentPlayPosition"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->tB(J)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    .line 18
    const-string v1, "isAutoPlay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->oJ(Z)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;

    return-object v0
.end method


# virtual methods
.method public ZYk(J)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->ba:J

    return-object p0
.end method

.method public ZYk(Z)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->oJ:Z

    return-object p0
.end method

.method public ex(Z)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->tB:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public oJ(J)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->Pfn:J

    return-object p0
.end method

.method public oJ(Z)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->ex:Z

    return-object p0
.end method

.method public oJ()Lorg/json/JSONObject;
    .locals 4

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    const-string v1, "isCompleted"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->oJ:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5
    const-string v1, "isFromVideoDetailPage"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->ZYk:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    const-string v1, "isFromDetailPage"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->tB:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->Pfn:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8
    const-string v1, "totalPlayDuration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->ba:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 9
    const-string v1, "currentPlayPosition"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->cFZ:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 10
    const-string v1, "isAutoPlay"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->ex:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public tB(J)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->cFZ:J

    return-object p0
.end method

.method public tB(Z)Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/ZYk/oJ;->ZYk:Z

    return-object p0
.end method
