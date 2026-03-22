.class public final Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;
.super Ljava/lang/Object;
.source "AggregationImpl.kt"

# interfaces
.implements Lcom/bytedance/applog/aggregation/IMetricsTracker;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final cache:Lcom/bytedance/applog/aggregation/IMetricsCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final interval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final metricsName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final types:I

.field private final worker:Lcom/bytedance/applog/aggregation/IWorker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Lcom/bytedance/applog/aggregation/IMetricsCache;Lcom/bytedance/applog/aggregation/IWorker;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/bytedance/applog/aggregation/IMetricsCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/bytedance/applog/aggregation/IWorker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/bytedance/applog/aggregation/IMetricsCache;",
            "Lcom/bytedance/applog/aggregation/IWorker;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "metricsName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cache"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "worker"

    .line 12
    .line 13
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->metricsName:Ljava/lang/String;

    .line 20
    .line 21
    iput p2, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->types:I

    .line 22
    .line 23
    iput-object p3, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->dimensions:Ljava/util/List;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->interval:Ljava/util/List;

    .line 26
    .line 27
    iput-object p5, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    .line 28
    .line 29
    iput-object p6, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->worker:Lcom/bytedance/applog/aggregation/IWorker;

    .line 30
    .line 31
    return-void
.end method

.method public static final synthetic access$calculateMetricsInterval(Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->calculateMetricsInterval(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final calculateMetricsInterval(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->types:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    move-object v0, p2

    .line 10
    check-cast v0, Ljava/util/Collection;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    xor-int/2addr v0, v1

    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    instance-of v0, p1, Ljava/lang/Number;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p1, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, ""

    .line 35
    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    cmpg-double v0, v2, v4

    .line 53
    .line 54
    const-string v6, "java.lang.String.format(format, *args)"

    .line 55
    .line 56
    const-string v7, "%.0f"

    .line 57
    .line 58
    if-gez v0, :cond_0

    .line 59
    .line 60
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 61
    .line 62
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 83
    .line 84
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {v7, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const-string p1, "+"

    .line 105
    .line 106
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x28

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const/16 p2, 0x2c

    .line 120
    .line 121
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const/16 p1, 0x29

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    goto :goto_2

    .line 137
    :cond_2
    const/4 p1, 0x0

    .line 138
    :goto_2
    return-object p1
.end method

.method private final getOrCreateMetrics(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/applog/aggregation/Metrics;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/bytedance/applog/aggregation/IMetricsCache;->get(Ljava/lang/String;)Lcom/bytedance/applog/aggregation/Metrics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Lcom/bytedance/applog/aggregation/Metrics;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->metricsName:Ljava/lang/String;

    .line 12
    .line 13
    iget v4, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->types:I

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-static {p2}, Lcom/bytedance/applog/aggregation/UtilsKt;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :goto_0
    move-object v7, p2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 p2, 0x0

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    move-object v1, v0

    .line 30
    move-object v3, p1

    .line 31
    move-object v8, p3

    .line 32
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/applog/aggregation/Metrics;-><init>(Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONObject;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final getCache()Lcom/bytedance/applog/aggregation/IMetricsCache;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->cache:Lcom/bytedance/applog/aggregation/IMetricsCache;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->dimensions:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInterval()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->interval:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMetricsName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->metricsName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTypes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->types:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWorker()Lcom/bytedance/applog/aggregation/IWorker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->worker:Lcom/bytedance/applog/aggregation/IWorker;

    .line 2
    .line 3
    return-object v0
.end method

.method public track(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;->worker:Lcom/bytedance/applog/aggregation/IWorker;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/applog/aggregation/MetricsTrackerImpl$track$1;-><init>(Lcom/bytedance/applog/aggregation/MetricsTrackerImpl;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/bytedance/applog/aggregation/IWorker;->post(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
