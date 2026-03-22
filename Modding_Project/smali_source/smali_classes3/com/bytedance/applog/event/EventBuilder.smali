.class public Lcom/bytedance/applog/event/EventBuilder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/bytedance/bdtracker/d;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 0
    .param p1    # Lcom/bytedance/bdtracker/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/applog/event/EventBuilder;->a:Lcom/bytedance/bdtracker/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/applog/event/EventBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->d:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->d:Lorg/json/JSONObject;

    .line 11
    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->d:Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object p0
.end method

.method public build()Lcom/bytedance/bdtracker/b4;
    .locals 7

    .line 1
    new-instance v6, Lcom/bytedance/bdtracker/b4;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->a:Lcom/bytedance/bdtracker/d;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/bytedance/applog/event/EventBuilder;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->d:Lorg/json/JSONObject;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    move-object v4, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const/4 v5, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v0, v6

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/bdtracker/b4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->c:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, v6, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/applog/event/EventBuilder;->a:Lcom/bytedance/bdtracker/d;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 34
    .line 35
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x4

    .line 40
    const-string v3, "EventBuilder build: {}"

    .line 41
    .line 42
    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v6
.end method

.method public setAbSdkVersion(Ljava/lang/String;)Lcom/bytedance/applog/event/EventBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/event/EventBuilder;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEvent(Ljava/lang/String;)Lcom/bytedance/applog/event/EventBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/event/EventBuilder;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public track()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/applog/event/EventBuilder;->build()Lcom/bytedance/bdtracker/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/applog/event/EventBuilder;->a:Lcom/bytedance/bdtracker/d;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 8
    .line 9
    const-string v2, "EventBuilder track: "

    .line 10
    .line 11
    invoke-static {v2}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/bytedance/applog/event/EventBuilder;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    invoke-interface {v1, v4, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/bytedance/applog/event/EventBuilder;->a:Lcom/bytedance/bdtracker/d;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/u3;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
