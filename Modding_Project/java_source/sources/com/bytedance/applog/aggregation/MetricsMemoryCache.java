package com.bytedance.applog.aggregation;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MetricsMemoryCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class MetricsMemoryCache implements IMetricsCache {
    private final HashMap<String, Metrics> cache = new HashMap<>();

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    public void clear() {
        this.cache.clear();
    }

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    @Nullable
    public Metrics get(@NotNull String groupId) {
        Intrinsics.checkParameterIsNotNull(groupId, "groupId");
        return this.cache.get(groupId);
    }

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    @NotNull
    public List<Metrics> getAll() {
        Collection<Metrics> values = this.cache.values();
        Intrinsics.checkExpressionValueIsNotNull(values, "cache.values");
        return CollectionsKt.d1(values);
    }

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    @NotNull
    public List<Metrics> getByMetricsName(@NotNull String name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Collection<Metrics> values = this.cache.values();
        Intrinsics.checkExpressionValueIsNotNull(values, "cache.values");
        ArrayList arrayList = new ArrayList();
        for (Object obj : values) {
            if (Intrinsics.areEqual(((Metrics) obj).getName(), name)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    public void insert(@NotNull String groupId, @NotNull Metrics metrics) {
        Intrinsics.checkParameterIsNotNull(groupId, "groupId");
        Intrinsics.checkParameterIsNotNull(metrics, "metrics");
        this.cache.put(groupId, metrics);
    }

    @Override // com.bytedance.applog.aggregation.IMetricsCache
    public void update(@NotNull String groupId, @NotNull Metrics metrics) {
        Intrinsics.checkParameterIsNotNull(groupId, "groupId");
        Intrinsics.checkParameterIsNotNull(metrics, "metrics");
        insert(groupId, metrics);
    }
}
