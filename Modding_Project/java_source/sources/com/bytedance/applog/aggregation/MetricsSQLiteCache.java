package com.bytedance.applog.aggregation;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: MetricsSQLiteCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class MetricsSQLiteCache implements IMetricsCache {
    private final MetricsMemoryCache memCache;
    private final MetricsSQLiteOpenHelper openHelper;

    public MetricsSQLiteCache(@NotNull Context context, @NotNull String dbName) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(dbName, "dbName");
        this.openHelper = new MetricsSQLiteOpenHelper(context, dbName);
        this.memCache = new MetricsMemoryCache();
    }

    private final Metrics fillMetrics(Cursor cursor) {
        JSONObject jSONObject;
        String name = cursor.getString(cursor.getColumnIndex("name"));
        String groupId = cursor.getString(cursor.getColumnIndex(MetricsSQLiteCacheKt.METRICS_GROUP_ID));
        int i10 = cursor.getInt(cursor.getColumnIndex(MetricsSQLiteCacheKt.METRICS_AGG_TYPES));
        long j10 = cursor.getLong(cursor.getColumnIndex(MetricsSQLiteCacheKt.METRICS_START_TIME));
        String string = cursor.getString(cursor.getColumnIndex(MetricsSQLiteCacheKt.METRICS_PARAMS));
        JSONArray jSONArray = null;
        if (string != null) {
            jSONObject = UtilsKt.toJSONObject(string);
        } else {
            jSONObject = null;
        }
        String string2 = cursor.getString(cursor.getColumnIndex("interval"));
        int i11 = cursor.getInt(cursor.getColumnIndex(MetricsSQLiteCacheKt.METRICS_COUNT));
        double d10 = cursor.getDouble(cursor.getColumnIndex(MetricsSQLiteCacheKt.METRICS_SUM));
        long j11 = cursor.getLong(cursor.getColumnIndex(MetricsSQLiteCacheKt.METRICS_END_TIME));
        String string3 = cursor.getString(cursor.getColumnIndex(MetricsSQLiteCacheKt.METRICS_VALUE_ARRAY));
        if (string3 != null) {
            jSONArray = UtilsKt.toJSONArray(string3);
        }
        Intrinsics.checkExpressionValueIsNotNull(name, "name");
        Intrinsics.checkExpressionValueIsNotNull(groupId, "groupId");
        Metrics metrics = new Metrics(name, groupId, i10, j10, jSONObject, string2);
        metrics.restore(i11, d10, j11, jSONArray);
        return metrics;
    }

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    public void clear() {
        this.openHelper.getWritableDatabase().delete("metrics", null, null);
        this.memCache.clear();
    }

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    @Nullable
    public Metrics get(@NotNull String groupId) {
        Intrinsics.checkParameterIsNotNull(groupId, "groupId");
        Metrics metrics = this.memCache.get(groupId);
        if (metrics == null) {
            Cursor cursor = this.openHelper.getReadableDatabase().rawQuery("SELECT * FROM metrics WHERE group_id = ?", new String[]{groupId});
            if (cursor.moveToNext()) {
                Intrinsics.checkExpressionValueIsNotNull(cursor, "cursor");
                Metrics fillMetrics = fillMetrics(cursor);
                this.memCache.insert(groupId, fillMetrics);
                return fillMetrics;
            }
            return metrics;
        }
        return metrics;
    }

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    @NotNull
    public List<Metrics> getAll() {
        Cursor cursor = this.openHelper.getReadableDatabase().rawQuery("SELECT * FROM metrics", null);
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            Intrinsics.checkExpressionValueIsNotNull(cursor, "cursor");
            arrayList.add(fillMetrics(cursor));
        }
        return arrayList;
    }

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    @NotNull
    public List<Metrics> getByMetricsName(@NotNull String name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Cursor cursor = this.openHelper.getReadableDatabase().rawQuery("SELECT * FROM metrics WHERE name = ?", new String[]{name});
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            Intrinsics.checkExpressionValueIsNotNull(cursor, "cursor");
            arrayList.add(fillMetrics(cursor));
        }
        return arrayList;
    }

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    public void insert(@NotNull String groupId, @NotNull Metrics metrics) {
        String str;
        Intrinsics.checkParameterIsNotNull(groupId, "groupId");
        Intrinsics.checkParameterIsNotNull(metrics, "metrics");
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", metrics.getName());
        contentValues.put(MetricsSQLiteCacheKt.METRICS_GROUP_ID, metrics.getGroupId());
        contentValues.put(MetricsSQLiteCacheKt.METRICS_AGG_TYPES, Integer.valueOf(metrics.getAggregationTypes()));
        contentValues.put(MetricsSQLiteCacheKt.METRICS_START_TIME, Long.valueOf(metrics.getStartTime()));
        JSONObject params = metrics.getParams();
        if (params != null) {
            str = params.toString();
        } else {
            str = null;
        }
        contentValues.put(MetricsSQLiteCacheKt.METRICS_PARAMS, str);
        contentValues.put("interval", metrics.getInterval());
        contentValues.put(MetricsSQLiteCacheKt.METRICS_COUNT, Integer.valueOf(metrics.getCount()));
        contentValues.put(MetricsSQLiteCacheKt.METRICS_SUM, Double.valueOf(metrics.getSum()));
        contentValues.put(MetricsSQLiteCacheKt.METRICS_END_TIME, Long.valueOf(metrics.getEndTime()));
        contentValues.put(MetricsSQLiteCacheKt.METRICS_VALUE_ARRAY, String.valueOf(metrics.getValues()));
        this.openHelper.getWritableDatabase().insert("metrics", null, contentValues);
        this.memCache.insert(groupId, metrics);
    }

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    public void update(@NotNull String groupId, @NotNull Metrics metrics) {
        Intrinsics.checkParameterIsNotNull(groupId, "groupId");
        Intrinsics.checkParameterIsNotNull(metrics, "metrics");
        ContentValues contentValues = new ContentValues();
        contentValues.put(MetricsSQLiteCacheKt.METRICS_COUNT, Integer.valueOf(metrics.getCount()));
        contentValues.put(MetricsSQLiteCacheKt.METRICS_SUM, Double.valueOf(metrics.getSum()));
        contentValues.put(MetricsSQLiteCacheKt.METRICS_END_TIME, Long.valueOf(metrics.getEndTime()));
        contentValues.put(MetricsSQLiteCacheKt.METRICS_VALUE_ARRAY, String.valueOf(metrics.getValues()));
        this.openHelper.getWritableDatabase().update("metrics", contentValues, "group_id = ?", new String[]{groupId});
        this.memCache.update(groupId, metrics);
    }
}
