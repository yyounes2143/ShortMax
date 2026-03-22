.class final Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;JLcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;

.field final synthetic ZYk:Ljava/lang/String;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic oJ:J

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;->oJ:J

    .line 2
    .line 3
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;->ZYk:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;->Pfn:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "duration"

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;->oJ:J

    .line 13
    .line 14
    sub-long/2addr v2, v4

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    const-string v1, "from"

    .line 19
    .line 20
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;->ZYk:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "track_load_vast_success"

    .line 36
    .line 37
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;->Pfn:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    const-string v2, "error_code"

    .line 46
    .line 47
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/ZYk$oJ;->oJ:I

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$4;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "track_load_vast_fail"

    .line 59
    .line 60
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :catch_0
    return-void
.end method
