.class public Lcom/bytedance/applog/log/LogUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EVENT_TYPE_EVENT_V3:Ljava/lang/String; = "EVENT_V3"

.field public static final EVENT_TYPE_LAUNCH:Ljava/lang/String; = "LAUNCH"

.field public static final EVENT_TYPE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final EVENT_TYPE_TERMINATE:Ljava/lang/String; = "TERMINATE"

.field public static final EVENT_TYPE_TRACE:Ljava/lang/String; = "TRACE"

.field public static volatile a:Z = false


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

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/bytedance/applog/log/LogUtils;->a:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static sendJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/AbsSingleton;->get([Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/bytedance/applog/log/EventBus;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/bytedance/applog/log/LogUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/applog/log/EventBus;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public static sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/AbsSingleton;->get([Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/bytedance/applog/log/EventBus;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/bytedance/applog/log/LogUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/applog/log/EventBus;->emit(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public static sendObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-static {p0}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p1, Lcom/bytedance/bdtracker/u3;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    .line 20
    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/AbsSingleton;->get([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/bytedance/applog/log/EventBus;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/bytedance/applog/log/LogUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v1, Lcom/bytedance/applog/log/LogUtils$a;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Lcom/bytedance/applog/log/LogUtils$a;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0, v1}, Lcom/bytedance/applog/log/EventBus;->emit(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    .line 43
    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/AbsSingleton;->get([Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/bytedance/applog/log/EventBus;

    .line 51
    .line 52
    invoke-static {p0}, Lcom/bytedance/applog/log/LogUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/applog/log/EventBus;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public static sendString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/AbsSingleton;->get([Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/bytedance/applog/log/EventBus;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/bytedance/applog/log/LogUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/applog/log/EventBus;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public static setEnable(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/bytedance/applog/log/LogUtils;->a:Z

    .line 2
    .line 3
    return-void
.end method
