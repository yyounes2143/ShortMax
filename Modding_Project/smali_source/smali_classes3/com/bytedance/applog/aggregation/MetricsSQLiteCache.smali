.class public final Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;
.super Ljava/lang/Object;
.source "MetricsSQLiteCache.kt"

# interfaces
.implements Lcom/bytedance/applog/aggregation/IMetricsCache;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

.field private final openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dbName"

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
    new-instance v0, Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    .line 20
    .line 21
    new-instance p1, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    .line 27
    .line 28
    return-void
.end method

.method private final fillMetrics(Landroid/database/Cursor;)Lcom/bytedance/applog/aggregation/Metrics;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "name"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const-string v2, "group_id"

    .line 14
    .line 15
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v2, "agg_types"

    .line 24
    .line 25
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const-string v2, "start_time"

    .line 34
    .line 35
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    const-string v2, "params"

    .line 44
    .line 45
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-static {v2}, Lcom/bytedance/applog/aggregation/UtilsKt;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    move-object v9, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move-object v9, v3

    .line 63
    :goto_0
    const-string v2, "interval"

    .line 64
    .line 65
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    const-string v2, "count"

    .line 74
    .line 75
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    const-string v2, "sum"

    .line 84
    .line 85
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    .line 90
    .line 91
    .line 92
    move-result-wide v13

    .line 93
    const-string v2, "end_time"

    .line 94
    .line 95
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 100
    .line 101
    .line 102
    move-result-wide v15

    .line 103
    const-string v2, "value_array"

    .line 104
    .line 105
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    invoke-static {v0}, Lcom/bytedance/applog/aggregation/UtilsKt;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :cond_1
    move-object/from16 v17, v3

    .line 120
    .line 121
    new-instance v0, Lcom/bytedance/applog/aggregation/Metrics;

    .line 122
    .line 123
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v1, "groupId"

    .line 127
    .line 128
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v3, v0

    .line 132
    invoke-direct/range {v3 .. v10}, Lcom/bytedance/applog/aggregation/Metrics;-><init>(Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONObject;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    move-object v11, v0

    .line 136
    invoke-virtual/range {v11 .. v17}, Lcom/bytedance/applog/aggregation/Metrics;->restore(IDJLorg/json/JSONArray;)V

    .line 137
    .line 138
    .line 139
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "metrics"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;->clear()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/bytedance/applog/aggregation/Metrics;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "groupId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;->get(Ljava/lang/String;)Lcom/bytedance/applog/aggregation/Metrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "SELECT * FROM metrics WHERE group_id = ?"

    .line 21
    .line 22
    filled-new-array {p1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const-string v0, "cursor"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->fillMetrics(Landroid/database/Cursor;)Lcom/bytedance/applog/aggregation/Metrics;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    .line 46
    .line 47
    invoke-virtual {v1, p1, v0}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;->insert(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-object v0
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/applog/aggregation/Metrics;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SELECT * FROM metrics"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const-string v2, "cursor"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->fillMetrics(Landroid/database/Cursor;)Lcom/bytedance/applog/aggregation/Metrics;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v1
.end method

.method public getByMetricsName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/applog/aggregation/Metrics;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "SELECT * FROM metrics WHERE name = ?"

    .line 13
    .line 14
    filled-new-array {p1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string v1, "cursor"

    .line 34
    .line 35
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->fillMetrics(Landroid/database/Cursor;)Lcom/bytedance/applog/aggregation/Metrics;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/applog/aggregation/Metrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "groupId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "metrics"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "name"

    .line 21
    .line 22
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "group_id"

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getGroupId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getAggregationTypes()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "agg_types"

    .line 43
    .line 44
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getStartTime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "start_time"

    .line 56
    .line 57
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getParams()Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/4 v3, 0x0

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move-object v2, v3

    .line 73
    :goto_0
    const-string v4, "params"

    .line 74
    .line 75
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v2, "interval"

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getInterval()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getCount()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v4, "count"

    .line 96
    .line 97
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getSum()D

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const-string v4, "sum"

    .line 109
    .line 110
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getEndTime()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const-string v4, "end_time"

    .line 122
    .line 123
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getValues()Lorg/json/JSONArray;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string v4, "value_array"

    .line 135
    .line 136
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    .line 140
    .line 141
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    .line 149
    .line 150
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;->insert(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public update(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/applog/aggregation/Metrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "groupId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "metrics"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getCount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "count"

    .line 25
    .line 26
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getSum()D

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "sum"

    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getEndTime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "end_time"

    .line 51
    .line 52
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/bytedance/applog/aggregation/Metrics;->getValues()Lorg/json/JSONArray;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "value_array"

    .line 64
    .line 65
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->openHelper:Lcom/bytedance/applog/aggregation/MetricsSQLiteOpenHelper;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "group_id = ?"

    .line 75
    .line 76
    filled-new-array {p1}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;->memCache:Lcom/bytedance/applog/aggregation/MetricsMemoryCache;

    .line 84
    .line 85
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/applog/aggregation/MetricsMemoryCache;->update(Ljava/lang/String;Lcom/bytedance/applog/aggregation/Metrics;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
