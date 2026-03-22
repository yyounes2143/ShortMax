.class public final Lcom/bytedance/bdtracker/t2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/u2;


# instance fields
.field public a:I

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/bytedance/bdtracker/t2;->b:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/bytedance/bdtracker/t2;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/bytedance/bdtracker/t2;->d:J

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/bytedance/bdtracker/t2;->a:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/bytedance/bdtracker/t2;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "launch_id"

    const-string v1, "process_id"

    const-string v2, "metrics_category"

    const-string v3, "metrics_name"

    const-string v4, "dims_0"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v5, "process_id"

    const-string v6, "err_code"

    const-string v1, "metrics_category"

    const-string v2, "metrics_name"

    const-string v3, "dims_0"

    const-string v4, "launch_id"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/bytedance/bdtracker/t2;->b:J

    const-string v2, "dims_0"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/bdtracker/t2;->c:Ljava/lang/String;

    const-string v1, "process_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/bytedance/applog/monitor/MonitorSampling;->INSTANCE:Lcom/bytedance/applog/monitor/MonitorSampling;

    invoke-virtual {v0}, Lcom/bytedance/applog/monitor/MonitorSampling;->getGlobalColdLaunchId$agent_liteGlobalRelease()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launch_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/bytedance/bdtracker/t2;->b:J

    const-wide/16 v2, 0xd

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bytedance/bdtracker/t2;->a:I

    const-string v1, "err_code"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "event_process"

    .line 2
    .line 3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    return v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/bytedance/bdtracker/p2$a;->a(Lcom/bytedance/bdtracker/p2;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/bdtracker/l0$b;->d()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/bdtracker/t2;->d:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
