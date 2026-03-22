.class public Lcom/bytedance/sdk/openadsdk/core/WcQ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Pfn:J = 0x0L

.field public static ZYk:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static volatile ba:I = 0x0

.field private static volatile cFZ:Landroid/os/HandlerThread; = null

.field public static ex:F = 0.0f

.field public static volatile oJ:Z = false

.field private static volatile so:Landroid/os/Handler;

.field public static tB:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    sput-wide v2, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB:J

    .line 12
    .line 13
    sput v1, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ba:I

    .line 14
    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    sput v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ex:F

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->so:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/WcQ$1;

    .line 23
    .line 24
    const-string v1, "csj_init_handle"

    .line 25
    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/WcQ$1;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->cFZ:Landroid/os/HandlerThread;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->cFZ:Landroid/os/HandlerThread;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/so;->oJ(Landroid/os/HandlerThread;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn:J

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Pfn()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static ZYk()Landroid/os/Handler;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->cFZ:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->cFZ:Landroid/os/HandlerThread;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->so:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez v0, :cond_5

    .line 17
    .line 18
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/WcQ;->so:Landroid/os/Handler;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Landroid/os/Handler;

    .line 26
    .line 27
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/WcQ;->cFZ:Landroid/os/HandlerThread;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/WcQ;->so:Landroid/os/Handler;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_4

    .line 43
    :goto_1
    monitor-exit v0

    .line 44
    throw v1

    .line 45
    :cond_2
    :goto_2
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_1
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/WcQ;->cFZ:Landroid/os/HandlerThread;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/WcQ;->cFZ:Landroid/os/HandlerThread;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_4

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :catchall_1
    move-exception v1

    .line 62
    goto :goto_5

    .line 63
    :cond_3
    :goto_3
    const-string v1, "csj_init_handle"

    .line 64
    .line 65
    const/4 v2, -0x1

    .line 66
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/so;->oJ(Ljava/lang/String;I)Landroid/os/HandlerThread;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/WcQ;->cFZ:Landroid/os/HandlerThread;

    .line 71
    .line 72
    new-instance v1, Landroid/os/Handler;

    .line 73
    .line 74
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/WcQ;->cFZ:Landroid/os/HandlerThread;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    .line 82
    .line 83
    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/WcQ;->so:Landroid/os/Handler;

    .line 84
    .line 85
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :cond_5
    :goto_4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->so:Landroid/os/Handler;

    .line 87
    .line 88
    return-object v0

    .line 89
    :goto_5
    monitor-exit v0

    .line 90
    throw v1
.end method

.method public static ba()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x2710

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-gtz v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB:J

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/WcQ$2;

    .line 19
    .line 20
    const-string v1, "onSharedPreferenceChanged"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/WcQ$2;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static cFZ()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x2710

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-gtz v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-class v2, Lcom/bytedance/sdk/openadsdk/core/WcQ;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    sget-wide v6, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB:J

    .line 20
    .line 21
    sub-long v6, v0, v6

    .line 22
    .line 23
    cmp-long v3, v6, v4

    .line 24
    .line 25
    if-gtz v3, :cond_1

    .line 26
    .line 27
    monitor-exit v2

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB:J

    .line 32
    .line 33
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {}, Lcom/bytedance/sdk/component/utils/jFA;->oJ()Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/WcQ$3;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/WcQ$3;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_0
    monitor-exit v2

    .line 48
    throw v0
.end method

.method public static ex()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ba:I

    .line 2
    .line 3
    return v0
.end method

.method public static oJ()J
    .locals 2

    .line 2
    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn:J

    return-wide v0
.end method

.method public static oJ(I)V
    .locals 0

    .line 3
    sput p0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ba:I

    return-void
.end method

.method public static oJ(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn:J

    return-void
.end method

.method public static oJ(Ljava/lang/String;)V
    .locals 5

    .line 4
    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 7
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 8
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    const-string v4, "mediation"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    const-string p0, "value"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 12
    :goto_1
    const-string v0, "InitHelper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static so()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/WcQ$4;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/WcQ$4;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static tB()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
