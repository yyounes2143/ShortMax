.class public abstract Lcom/inmobi/media/Ma;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Pa;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

.field public final d:Lcom/inmobi/media/Ka;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Pa;)V
    .locals 2

    .line 1
    const-string v0, "dao"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/Ma;->a:Lcom/inmobi/media/Pa;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/inmobi/media/Ma;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    sget-object p1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    const-string p1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    const-string v1, "ads"

    .line 24
    .line 25
    invoke-static {v1, p1, v0}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getPingsV2Config()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/inmobi/media/Ma;->c:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 36
    .line 37
    new-instance v0, Lcom/inmobi/media/Ka;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lcom/inmobi/media/Ka;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/inmobi/media/Ma;->d:Lcom/inmobi/media/Ka;

    .line 43
    .line 44
    return-void
.end method

.method public static a(ILjava/lang/String;SLcom/inmobi/media/za;JLcom/inmobi/media/La;)V
    .locals 9

    const-string v0, "ping"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const-class v1, Lcom/inmobi/media/Ma;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSimpleName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v2, p3, Lcom/inmobi/media/za;->a:Ljava/lang/String;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {p6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    iget v1, p3, Lcom/inmobi/media/za;->g:I

    if-eqz p6, :cond_4

    .line 80
    check-cast p6, Lcom/inmobi/media/Ia;

    .line 81
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p6, Lcom/inmobi/media/Ia;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "high"

    .line 84
    iget-object v2, p3, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 85
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-boolean v0, p3, Lcom/inmobi/media/za;->f:Z

    if-eqz v0, :cond_1

    .line 87
    iget v8, p3, Lcom/inmobi/media/za;->g:I

    const/4 v0, 0x1

    if-ge v8, v0, :cond_1

    .line 88
    iget-object v3, p3, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 89
    iget-object v0, p6, Lcom/inmobi/media/Ia;->a:Lcom/inmobi/media/Ha;

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/inmobi/media/Yb;

    move v4, p0

    move-object v5, p1

    move-wide v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/inmobi/media/Yb;->a(Ljava/lang/String;ILjava/lang/String;JI)V

    .line 90
    :cond_1
    iget-object p0, p3, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 91
    iget-object p1, p6, Lcom/inmobi/media/Ia;->b:Lcom/inmobi/media/nc;

    if-eqz p1, :cond_3

    if-nez p0, :cond_2

    .line 92
    const-string p0, "unknown"

    .line 93
    :cond_2
    const-string p4, "priority"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/inmobi/media/nc;->a()Ljava/util/Map;

    move-result-object p1

    const/16 p4, 0x8c7

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p4

    .line 95
    const-string p5, "errorCode"

    invoke-interface {p1, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string p4, "trigger"

    invoke-interface {p1, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p4, "retryCount"

    invoke-interface {p1, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string p0, "PingFailed"

    invoke-static {p0, p1}, Lcom/inmobi/media/Oa;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_5

    .line 100
    invoke-static {p3, p2}, Lcom/inmobi/media/Ma;->a(Lcom/inmobi/media/za;S)V

    :cond_5
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Ma;Lcom/inmobi/media/za;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ma;->a(Lcom/inmobi/media/za;)V

    return-void
.end method

.method public static a(Lcom/inmobi/media/za;S)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/za;->k:Lcom/inmobi/media/hc;

    const-string v1, "PingFailed"

    const-string v2, "retryCount"

    const-string v3, "trigger"

    const-string v4, "errorCode"

    if-eqz v0, :cond_0

    .line 2
    new-instance v5, Lcom/inmobi/media/nc;

    invoke-direct {v5, v0}, Lcom/inmobi/media/nc;-><init>(Lcom/inmobi/media/hc;)V

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 4
    iget v6, p0, Lcom/inmobi/media/za;->g:I

    .line 5
    const-string v7, "priority"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v5}, Lcom/inmobi/media/nc;->a()Ljava/util/Map;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    .line 7
    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v1, v5}, Lcom/inmobi/media/Oa;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/inmobi/media/Oa;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 13
    iget-object v0, p0, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 14
    invoke-static {v3, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 15
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {v4, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 16
    iget p0, p0, Lcom/inmobi/media/za;->g:I

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2, p0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {v0, p1, p0}, [Lkotlin/Pair;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 19
    invoke-static {v1, p0}, Lcom/inmobi/media/Oa;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/Da;Lcom/inmobi/media/La;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "pingResult"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v6, v1, Lcom/inmobi/media/Da;->a:Lcom/inmobi/media/za;

    .line 31
    iget-object v2, v6, Lcom/inmobi/media/za;->a:Ljava/lang/String;

    .line 32
    iget v2, v1, Lcom/inmobi/media/Da;->b:I

    .line 33
    sget-object v3, Lcom/inmobi/media/m4;->b:Lcom/inmobi/media/k4;

    const-string v3, "id = ?"

    const-string v4, "ping"

    const/16 v5, -0x16

    if-eq v2, v5, :cond_0

    sget-object v7, Lcom/inmobi/media/o4;->b:Lcom/inmobi/media/l4;

    if-ne v2, v5, :cond_1

    :cond_0
    move-object v5, v3

    goto/16 :goto_2

    .line 34
    :cond_1
    iget v2, v6, Lcom/inmobi/media/za;->g:I

    add-int/lit8 v14, v2, 0x1

    .line 35
    iget-object v2, v6, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 36
    const-string v5, "high"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    iget-object v2, v0, Lcom/inmobi/media/Ma;->c:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getRetryConfig()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->getHigh()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;->getMaxRetries()I

    move-result v2

    goto :goto_0

    .line 38
    :cond_2
    iget-object v2, v0, Lcom/inmobi/media/Ma;->c:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getRetryConfig()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->getNormal()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;->getMaxRetries()I

    move-result v2

    :goto_0
    if-le v14, v2, :cond_3

    .line 39
    iget-object v2, v0, Lcom/inmobi/media/Ma;->a:Lcom/inmobi/media/Pa;

    .line 40
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v4, v6, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 42
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 43
    iget v3, v1, Lcom/inmobi/media/Da;->b:I

    .line 44
    iget-object v4, v1, Lcom/inmobi/media/Da;->c:Ljava/lang/String;

    const/16 v5, 0x8c9

    .line 45
    iget-wide v7, v1, Lcom/inmobi/media/Da;->d:J

    move-object/from16 v9, p2

    .line 46
    invoke-static/range {v3 .. v9}, Lcom/inmobi/media/Ma;->a(ILjava/lang/String;SLcom/inmobi/media/za;JLcom/inmobi/media/La;)V

    return-void

    .line 47
    :cond_3
    iget-object v2, v6, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 48
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    iget-object v2, v0, Lcom/inmobi/media/Ma;->c:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getRetryConfig()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->getHigh()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;->getRetryInterval()J

    move-result-wide v7

    .line 50
    iget-object v2, v0, Lcom/inmobi/media/Ma;->c:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getRetryConfig()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->getHigh()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;->getFactor()D

    move-result-wide v9

    .line 51
    new-instance v2, Lkotlin/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 52
    :cond_4
    iget-object v2, v0, Lcom/inmobi/media/Ma;->c:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getRetryConfig()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->getNormal()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;->getRetryInterval()J

    move-result-wide v7

    .line 53
    iget-object v2, v0, Lcom/inmobi/media/Ma;->c:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getRetryConfig()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;->getNormal()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig$PriorityRetryConfig;->getFactor()D

    move-result-wide v9

    .line 54
    new-instance v2, Lkotlin/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    :goto_1
    invoke-virtual {v2}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-virtual {v2}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-double v7, v7

    int-to-double v1, v14

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v7

    const-wide/16 v7, 0x3e8

    long-to-double v7, v7

    mul-double/2addr v1, v7

    double-to-long v1, v1

    add-long/2addr v11, v1

    .line 57
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 58
    iget-object v8, v6, Lcom/inmobi/media/za;->a:Ljava/lang/String;

    iget-object v1, v6, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    iget-object v10, v6, Lcom/inmobi/media/za;->c:Ljava/util/Map;

    iget-boolean v11, v6, Lcom/inmobi/media/za;->d:Z

    iget-object v12, v6, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    iget-boolean v13, v6, Lcom/inmobi/media/za;->f:Z

    iget-object v15, v6, Lcom/inmobi/media/za;->h:Ljava/lang/String;

    move-object v5, v3

    iget-wide v2, v6, Lcom/inmobi/media/za;->i:J

    iget-object v9, v6, Lcom/inmobi/media/za;->k:Lcom/inmobi/media/hc;

    .line 59
    const-string v7, "url"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "id"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "headers"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "priority"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "ownerId"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/inmobi/media/za;

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move-object v9, v1

    move-wide/from16 v16, v2

    invoke-direct/range {v7 .. v19}, Lcom/inmobi/media/za;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;ZILjava/lang/String;JLjava/lang/Long;Lcom/inmobi/media/hc;)V

    .line 60
    iget-object v2, v0, Lcom/inmobi/media/Ma;->a:Lcom/inmobi/media/Pa;

    move-object/from16 v3, v20

    .line 61
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v5, v1}, Lcom/inmobi/media/T1;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v1, p1

    .line 63
    iget v3, v1, Lcom/inmobi/media/Da;->b:I

    .line 64
    iget-object v4, v1, Lcom/inmobi/media/Da;->c:Ljava/lang/String;

    const/16 v5, 0x8c7

    .line 65
    iget-wide v7, v1, Lcom/inmobi/media/Da;->d:J

    move-object/from16 v9, p2

    .line 66
    invoke-static/range {v3 .. v9}, Lcom/inmobi/media/Ma;->a(ILjava/lang/String;SLcom/inmobi/media/za;JLcom/inmobi/media/La;)V

    return-void

    .line 67
    :goto_2
    iget-object v2, v0, Lcom/inmobi/media/Ma;->a:Lcom/inmobi/media/Pa;

    .line 68
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v3, v6, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 70
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    iget v6, v1, Lcom/inmobi/media/Da;->b:I

    .line 72
    iget-object v9, v1, Lcom/inmobi/media/Da;->a:Lcom/inmobi/media/za;

    .line 73
    iget-wide v10, v1, Lcom/inmobi/media/Da;->d:J

    .line 74
    const-string v7, "Redirect URL is malformed"

    const/16 v8, 0x8d2

    move-object/from16 v12, p2

    invoke-static/range {v6 .. v12}, Lcom/inmobi/media/Ma;->a(ILjava/lang/String;SLcom/inmobi/media/za;JLcom/inmobi/media/La;)V

    return-void
.end method

.method public abstract a(Lcom/inmobi/media/za;)V
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/inmobi/media/Ma;->a:Lcom/inmobi/media/Pa;

    const/4 v1, 0x0

    const/16 v2, 0x3f

    invoke-static {v0, v1, v1, v2}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/inmobi/media/Ma;->c:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getMaxEntries()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 21
    :cond_0
    sget-object v0, Lcom/inmobi/media/Oa;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    const-string v1, "PingDBMaxLimitReached"

    invoke-static {v1, v0}, Lcom/inmobi/media/Oa;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    const-string v0, "high"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "normal"

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Lcom/inmobi/media/Ma;->a:Lcom/inmobi/media/Pa;

    invoke-virtual {v1, v3}, Lcom/inmobi/media/Pa;->a(Ljava/lang/String;)Lcom/inmobi/media/za;

    move-result-object v1

    if-nez v1, :cond_2

    .line 26
    iget-object v1, p0, Lcom/inmobi/media/Ma;->a:Lcom/inmobi/media/Pa;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/Pa;->a(Ljava/lang/String;)Lcom/inmobi/media/za;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/Ma;->a:Lcom/inmobi/media/Pa;

    invoke-virtual {v1, v3}, Lcom/inmobi/media/Pa;->a(Ljava/lang/String;)Lcom/inmobi/media/za;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x8d3

    goto :goto_1

    :cond_3
    const/16 p1, 0x8d4

    .line 29
    :goto_1
    invoke-static {v1, p1}, Lcom/inmobi/media/Ma;->a(Lcom/inmobi/media/za;S)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public final b(Lcom/inmobi/media/Da;Lcom/inmobi/media/La;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "pingResult"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-class v1, Lcom/inmobi/media/Ma;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getSimpleName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Lcom/inmobi/media/Da;->a:Lcom/inmobi/media/za;

    .line 5
    iget-object v1, v1, Lcom/inmobi/media/za;->a:Ljava/lang/String;

    .line 6
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "latency"

    const-string v3, "priority"

    const-string v4, "ping"

    const-string v5, "PingSuccess"

    const-string v6, "trigger"

    if-eqz p2, :cond_3

    .line 7
    iget-object v7, v0, Lcom/inmobi/media/Da;->a:Lcom/inmobi/media/za;

    .line 8
    iget v10, v0, Lcom/inmobi/media/Da;->b:I

    .line 9
    iget-wide v12, v0, Lcom/inmobi/media/Da;->d:J

    .line 10
    move-object/from16 v15, p2

    check-cast v15, Lcom/inmobi/media/Ia;

    .line 11
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v8, v15, Lcom/inmobi/media/Ia;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v8, v7, Lcom/inmobi/media/za;->a:Ljava/lang/String;

    .line 14
    iget-object v8, v7, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 15
    const-string v9, "high"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 16
    iget-boolean v8, v7, Lcom/inmobi/media/za;->f:Z

    if-eqz v8, :cond_1

    .line 17
    iget-object v9, v7, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 18
    iget-object v8, v15, Lcom/inmobi/media/Ia;->a:Lcom/inmobi/media/Ha;

    if-eqz v8, :cond_1

    .line 19
    iget v14, v7, Lcom/inmobi/media/za;->g:I

    .line 20
    check-cast v8, Lcom/inmobi/media/Yb;

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/inmobi/media/Yb;->a(Ljava/lang/String;ILjava/lang/String;JI)V

    .line 21
    :cond_1
    iget-object v8, v7, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 23
    iget-wide v11, v7, Lcom/inmobi/media/za;->i:J

    sub-long/2addr v9, v11

    .line 24
    iget-object v7, v15, Lcom/inmobi/media/Ia;->b:Lcom/inmobi/media/nc;

    if-eqz v7, :cond_2

    .line 25
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v7}, Lcom/inmobi/media/nc;->a()Ljava/util/Map;

    move-result-object v7

    .line 27
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 28
    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v5, v7}, Lcom/inmobi/media/Oa;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    :cond_2
    :goto_0
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_3
    move-object v7, v1

    :goto_1
    if-nez v7, :cond_5

    .line 31
    iget-object v7, v0, Lcom/inmobi/media/Da;->a:Lcom/inmobi/media/za;

    .line 32
    iget-object v8, v7, Lcom/inmobi/media/za;->k:Lcom/inmobi/media/hc;

    if-eqz v8, :cond_4

    .line 33
    new-instance v1, Lcom/inmobi/media/nc;

    invoke-direct {v1, v8}, Lcom/inmobi/media/nc;-><init>(Lcom/inmobi/media/hc;)V

    .line 34
    iget-object v8, v7, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 35
    iget-wide v9, v7, Lcom/inmobi/media/za;->i:J

    .line 36
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Lcom/inmobi/media/nc;->a()Ljava/util/Map;

    move-result-object v1

    .line 38
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 39
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {v5, v1}, Lcom/inmobi/media/Oa;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 41
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_4
    if-nez v1, :cond_5

    .line 42
    sget-object v1, Lcom/inmobi/media/Oa;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 43
    iget-object v1, v7, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 44
    invoke-static {v6, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 45
    iget v2, v7, Lcom/inmobi/media/za;->g:I

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "retryCount"

    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    filled-new-array {v1, v2}, [Lkotlin/Pair;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 48
    invoke-static {v5, v1}, Lcom/inmobi/media/Oa;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    move-object/from16 v1, p0

    .line 49
    iget-object v2, v1, Lcom/inmobi/media/Ma;->a:Lcom/inmobi/media/Pa;

    .line 50
    iget-object v0, v0, Lcom/inmobi/media/Da;->a:Lcom/inmobi/media/za;

    .line 51
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, v0, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 53
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "id = ?"

    invoke-virtual {v2, v3, v0}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final b(Lcom/inmobi/media/za;)V
    .locals 2

    const-string v0, "ping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/z4;->b:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    new-instance v1, Lub/g1;

    invoke-direct {v1, p0, p1}, Lub/g1;-><init>(Lcom/inmobi/media/Ma;Lcom/inmobi/media/za;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
