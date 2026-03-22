.class public final Lcom/bytedance/bdtracker/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$f;


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/e4;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/t;->a:Lcom/bytedance/bdtracker/e4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/bdtracker/u3;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/t;->a:Lcom/bytedance/bdtracker/e4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/u3;->clone()Lcom/bytedance/bdtracker/u3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bytedance/bdtracker/e4;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "params"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const-string v2, "$page_duration"

    .line 27
    .line 28
    :try_start_0
    iget-wide v3, v0, Lcom/bytedance/bdtracker/e4;->s:J

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string v4, "JSON handle failed"

    .line 43
    .line 44
    invoke-interface {v2, v4, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    new-instance v0, Lcom/bytedance/bdtracker/b4;

    .line 48
    .line 49
    const-string v2, "$bav2b_page_leave"

    .line 50
    .line 51
    invoke-direct {v0, v2}, Lcom/bytedance/bdtracker/b4;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v2, 0x0

    .line 55
    .line 56
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/bdtracker/u3;->a(J)V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    .line 60
    .line 61
    return-object v0
.end method
