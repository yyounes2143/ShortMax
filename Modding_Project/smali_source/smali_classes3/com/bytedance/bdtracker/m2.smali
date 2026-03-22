.class public final Lcom/bytedance/bdtracker/m2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/h2;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public a:Landroid/os/Handler;

.field public final b:Lcom/bytedance/bdtracker/i2;

.field public final c:Lcom/bytedance/bdtracker/e0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 4
    .param p1    # Lcom/bytedance/bdtracker/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mEngine"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 10
    .line 11
    new-instance v0, Landroid/os/HandlerThread;

    .line 12
    .line 13
    const-string v1, "bd_tracker_monitor@"

    .line 14
    .line 15
    invoke-static {v1}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 20
    .line 21
    const-string v3, "mEngine.appLog"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/bytedance/bdtracker/m2;->a:Landroid/os/Handler;

    .line 51
    .line 52
    new-instance v0, Lcom/bytedance/bdtracker/i2;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/bytedance/bdtracker/m2;->a:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "mHandler.looper"

    .line 61
    .line 62
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 66
    .line 67
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 71
    .line 72
    const-string v3, "mEngine.appLog.appId"

    .line 73
    .line 74
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/e0;->b()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v3, "mEngine.context"

    .line 82
    .line 83
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1, v2, p1}, Lcom/bytedance/bdtracker/i2;-><init>(Landroid/os/Looper;Ljava/lang/String;Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/bytedance/bdtracker/m2;->b:Lcom/bytedance/bdtracker/i2;

    .line 90
    .line 91
    return-void
.end method

.method public static final synthetic a(Lcom/bytedance/bdtracker/m2;)Lcom/bytedance/bdtracker/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/p2;)V
    .locals 4
    .param p1    # Lcom/bytedance/bdtracker/p2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    const-string v1, "mEngine.config"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/bytedance/applog/monitor/MonitorSampling;->INSTANCE:Lcom/bytedance/applog/monitor/MonitorSampling;

    invoke-virtual {v0}, Lcom/bytedance/applog/monitor/MonitorSampling;->isSampling$agent_liteGlobalRelease()Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "mEngine.appLog"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 4
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 5
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Monitor EventTrace hint trace:{}"

    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/m2;->b:Lcom/bytedance/bdtracker/i2;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/i2;->a(Lcom/bytedance/bdtracker/p2;)Lcom/bytedance/applog/aggregation/IMetricsTracker;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/bdtracker/p2;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/bdtracker/p2;->d()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/aggregation/IMetricsTracker;->track(Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 8
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Monitor EventTrace not hint trace:{}"

    invoke-interface {v0, v1, v2, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    const-string v2, "mEngine.appLog"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v0, v3, :cond_3

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->h()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/m2;->a:Landroid/os/Handler;

    .line 34
    .line 35
    const-wide/16 v1, 0x1f4

    .line 36
    .line 37
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 44
    .line 45
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    .line 53
    const-string v4, "Monitor report..."

    .line 54
    .line 55
    invoke-interface {p1, v1, v4, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 67
    .line 68
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 76
    .line 77
    const-string v2, "mEngine.dm"

    .line 78
    .line 79
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/bdtracker/a4;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 90
    .line 91
    iget-object v0, p1, Lcom/bytedance/bdtracker/e0;->l:Lcom/bytedance/bdtracker/i0;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/c0;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 100
    .line 101
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 105
    .line 106
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    .line 108
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-string v4, "Monitor trace save:{}"

    .line 113
    .line 114
    invoke-interface {v0, v1, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    .line 125
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->isMutableList(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_4

    .line 130
    .line 131
    const/4 p1, 0x0

    .line 132
    :cond_4
    check-cast p1, Ljava/util/List;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/bytedance/bdtracker/a4;->c:Lcom/bytedance/bdtracker/z3;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/z3;->b(Ljava/util/List;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    return v3
.end method
