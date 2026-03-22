.class public final Lcom/bytedance/applog/aggregation/Metrics;
.super Ljava/lang/Object;
.source "Defines.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final aggregationTypes:I

.field private count:I

.field private endTime:J

.field private final groupId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interval:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final params:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startTime:J

.field private sum:D

.field private values:Lorg/json/JSONArray;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "groupId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/applog/aggregation/Metrics;->name:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/bytedance/applog/aggregation/Metrics;->groupId:Ljava/lang/String;

    .line 17
    .line 18
    iput p3, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    .line 19
    .line 20
    iput-wide p4, p0, Lcom/bytedance/applog/aggregation/Metrics;->startTime:J

    .line 21
    .line 22
    iput-object p6, p0, Lcom/bytedance/applog/aggregation/Metrics;->params:Lorg/json/JSONObject;

    .line 23
    .line 24
    iput-object p7, p0, Lcom/bytedance/applog/aggregation/Metrics;->interval:Ljava/lang/String;

    .line 25
    .line 26
    iput-wide p4, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    .line 6
    .line 7
    iget v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    instance-of v0, p1, Ljava/lang/Number;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    .line 18
    .line 19
    move-object v2, p1

    .line 20
    check-cast v2, Ljava/lang/Number;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    add-double/2addr v0, v2

    .line 27
    iput-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    .line 28
    .line 29
    :cond_0
    iget v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    .line 30
    .line 31
    and-int/lit8 v0, v0, 0x8

    .line 32
    .line 33
    if-lez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Lorg/json/JSONArray;

    .line 40
    .line 41
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    iput-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    .line 58
    .line 59
    return-void
.end method

.method public final getAggregationTypes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInterval()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->interval:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParams()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->params:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->startTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSum()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getValues()Lorg/json/JSONArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public final restore(IDJLorg/json/JSONArray;)V
    .locals 0
    .param p6    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    .line 6
    .line 7
    iput-object p6, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    .line 8
    .line 9
    return-void
.end method

.method public final setEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setValues(Lorg/json/JSONArray;)V
    .locals 0
    .param p1    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-void
.end method

.method public final toParams()Lorg/json/JSONObject;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->params:Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/bytedance/applog/aggregation/UtilsKt;->copyFrom(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "metrics_start_ms"

    .line 13
    .line 14
    iget-wide v2, p0, Lcom/bytedance/applog/aggregation/Metrics;->startTime:J

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string v1, "metrics_end_ms"

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/bytedance/applog/aggregation/Metrics;->endTime:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string v1, "metrics_aggregation"

    .line 27
    .line 28
    iget v2, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v1, "metrics_count"

    .line 34
    .line 35
    iget v2, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    .line 41
    .line 42
    and-int/lit8 v1, v1, 0x2

    .line 43
    .line 44
    if-lez v1, :cond_0

    .line 45
    .line 46
    const-string v1, "metrics_sum"

    .line 47
    .line 48
    iget-wide v2, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    :cond_0
    iget v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    .line 54
    .line 55
    and-int/lit8 v1, v1, 0x4

    .line 56
    .line 57
    if-lez v1, :cond_1

    .line 58
    .line 59
    iget-wide v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->sum:D

    .line 60
    .line 61
    iget v3, p0, Lcom/bytedance/applog/aggregation/Metrics;->count:I

    .line 62
    .line 63
    int-to-double v3, v3

    .line 64
    div-double/2addr v1, v3

    .line 65
    const-string v3, "metrics_avg"

    .line 66
    .line 67
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    :cond_1
    iget v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    .line 71
    .line 72
    and-int/lit8 v1, v1, 0x8

    .line 73
    .line 74
    if-lez v1, :cond_2

    .line 75
    .line 76
    const-string v1, "metrics_values"

    .line 77
    .line 78
    iget-object v2, p0, Lcom/bytedance/applog/aggregation/Metrics;->values:Lorg/json/JSONArray;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    :cond_2
    iget v1, p0, Lcom/bytedance/applog/aggregation/Metrics;->aggregationTypes:I

    .line 84
    .line 85
    and-int/lit8 v1, v1, 0x10

    .line 86
    .line 87
    if-lez v1, :cond_3

    .line 88
    .line 89
    const-string v1, "metrics_interval"

    .line 90
    .line 91
    iget-object v2, p0, Lcom/bytedance/applog/aggregation/Metrics;->interval:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    :cond_3
    return-object v0
.end method
