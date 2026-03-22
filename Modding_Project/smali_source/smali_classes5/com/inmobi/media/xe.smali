.class public abstract Lcom/inmobi/media/xe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/json/JSONObject;

.field public static final b:Ljava/util/LinkedHashSet;

.field public static c:Lcom/inmobi/media/Be;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/xe;->a:Lorg/json/JSONObject;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/inmobi/media/xe;->b:Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/inmobi/media/xe;->a:Lorg/json/JSONObject;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lcom/inmobi/media/xe;->c:Lcom/inmobi/media/Be;

    .line 6
    .line 7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    .line 13
    throw v1
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/inmobi/media/xe;->a:Lorg/json/JSONObject;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/inmobi/media/xe;->c:Lcom/inmobi/media/Be;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/inmobi/media/Ac;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return v1

    .line 23
    :goto_1
    monitor-exit v0

    .line 24
    throw v1
.end method

.method public static c()V
    .locals 4

    .line 1
    sget-object v0, Lcom/inmobi/media/xe;->a:Lorg/json/JSONObject;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/xe;->b()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/inmobi/media/xe;->c:Lcom/inmobi/media/Be;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, Lcom/inmobi/media/Ac;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    invoke-static {}, Lcom/inmobi/media/xe;->d()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0

    .line 32
    throw v1
.end method

.method public static d()V
    .locals 11

    .line 1
    sget-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    const-string v0, "signals"

    .line 4
    .line 5
    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getUnifiedIdServiceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/inmobi/media/xe;->a:Lorg/json/JSONObject;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    new-instance v10, Lcom/inmobi/media/Be;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->getUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v3, "signals"

    .line 28
    .line 29
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v3, v5, v2}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    .line 38
    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast v2, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 43
    .line 44
    new-instance v5, Lcom/inmobi/media/ue;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getIncludeIdParams()Lcom/inmobi/media/W5;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v5, v2}, Lcom/inmobi/media/ue;-><init>(Lcom/inmobi/media/W5;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->getMaxRetries()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->getRetryInterval()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->getTimeout()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    move-object v3, v10

    .line 70
    invoke-direct/range {v3 .. v9}, Lcom/inmobi/media/Be;-><init>(Ljava/lang/String;Lcom/inmobi/media/ue;Ljava/lang/String;III)V

    .line 71
    .line 72
    .line 73
    sput-object v10, Lcom/inmobi/media/xe;->c:Lcom/inmobi/media/Be;

    .line 74
    .line 75
    new-instance v0, Lcom/inmobi/media/F5;

    .line 76
    .line 77
    new-instance v2, Lcom/inmobi/media/ye;

    .line 78
    .line 79
    sget-object v3, Lcom/inmobi/media/xe;->b:Ljava/util/LinkedHashSet;

    .line 80
    .line 81
    invoke-direct {v2, v10, v3}, Lcom/inmobi/media/ye;-><init>(Lcom/inmobi/media/Be;Ljava/util/LinkedHashSet;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v2, v10}, Lcom/inmobi/media/F5;-><init>(Lcom/inmobi/media/ye;Lcom/inmobi/media/Be;)V

    .line 85
    .line 86
    .line 87
    const-string v2, "UnifiedIdNetworkCallRequested"

    .line 88
    .line 89
    new-instance v3, Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    sget-object v4, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 95
    .line 96
    sget-object v4, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 97
    .line 98
    invoke-static {v2, v3, v4}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 99
    .line 100
    .line 101
    sget-object v2, Lcom/inmobi/media/z4;->b:Lms/i;

    .line 102
    .line 103
    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 110
    .line 111
    .line 112
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    monitor-exit v1

    .line 118
    throw v0
.end method

.method public static e()V
    .locals 4

    .line 1
    sget-object v0, Lcom/inmobi/media/xe;->a:Lorg/json/JSONObject;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/inmobi/media/xe;->c:Lcom/inmobi/media/Be;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/inmobi/media/Ac;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 19
    sput-object v1, Lcom/inmobi/media/xe;->c:Lcom/inmobi/media/Be;

    .line 20
    .line 21
    sget-object v1, Lcom/inmobi/media/xe;->b:Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0

    .line 31
    throw v1
.end method
