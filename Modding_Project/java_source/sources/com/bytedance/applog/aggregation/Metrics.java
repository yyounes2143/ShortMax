package com.bytedance.applog.aggregation;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Defines.kt */
@Metadata
/* loaded from: classes3.dex */
public final class Metrics {
    private final int aggregationTypes;
    private int count;
    private long endTime;
    @NotNull
    private final String groupId;
    @Nullable
    private final String interval;
    @NotNull
    private final String name;
    @Nullable
    private final JSONObject params;
    private final long startTime;
    private double sum;
    @Nullable
    private JSONArray values;

    public Metrics(@NotNull String name, @NotNull String groupId, int i10, long j10, @Nullable JSONObject jSONObject, @Nullable String str) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(groupId, "groupId");
        this.name = name;
        this.groupId = groupId;
        this.aggregationTypes = i10;
        this.startTime = j10;
        this.params = jSONObject;
        this.interval = str;
        this.endTime = j10;
    }

    public final void append(@Nullable Object obj) {
        this.count++;
        if ((this.aggregationTypes & 2) > 0 && (obj instanceof Number)) {
            this.sum += ((Number) obj).doubleValue();
        }
        if ((this.aggregationTypes & 8) > 0) {
            if (this.values == null) {
                this.values = new JSONArray();
            }
            JSONArray jSONArray = this.values;
            if (jSONArray != null) {
                jSONArray.put(obj);
            }
        }
        this.endTime = System.currentTimeMillis();
    }

    public final int getAggregationTypes() {
        return this.aggregationTypes;
    }

    public final int getCount() {
        return this.count;
    }

    public final long getEndTime() {
        return this.endTime;
    }

    @NotNull
    public final String getGroupId() {
        return this.groupId;
    }

    @Nullable
    public final String getInterval() {
        return this.interval;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final JSONObject getParams() {
        return this.params;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public final double getSum() {
        return this.sum;
    }

    @Nullable
    public final JSONArray getValues() {
        return this.values;
    }

    public final void restore(int i10, double d10, long j10, @Nullable JSONArray jSONArray) {
        this.count = i10;
        this.sum = d10;
        this.endTime = j10;
        this.values = jSONArray;
    }

    public final void setEndTime(long j10) {
        this.endTime = j10;
    }

    public final void setValues(@Nullable JSONArray jSONArray) {
        this.values = jSONArray;
    }

    @NotNull
    public final JSONObject toParams() {
        JSONObject copyFrom = UtilsKt.copyFrom(new JSONObject(), this.params);
        copyFrom.put("metrics_start_ms", this.startTime);
        copyFrom.put("metrics_end_ms", this.endTime);
        copyFrom.put("metrics_aggregation", this.aggregationTypes);
        copyFrom.put("metrics_count", this.count);
        if ((this.aggregationTypes & 2) > 0) {
            copyFrom.put("metrics_sum", this.sum);
        }
        if ((this.aggregationTypes & 4) > 0) {
            copyFrom.put("metrics_avg", this.sum / this.count);
        }
        if ((this.aggregationTypes & 8) > 0) {
            copyFrom.put("metrics_values", this.values);
        }
        if ((this.aggregationTypes & 16) > 0) {
            copyFrom.put("metrics_interval", this.interval);
        }
        return copyFrom;
    }
}
