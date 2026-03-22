package com.bytedance.applog.aggregation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: AggregationImpl.kt */
@Metadata
/* loaded from: classes3.dex */
public final class MetricsTrackerImpl implements IMetricsTracker {
    @NotNull
    private final IMetricsCache cache;
    @Nullable
    private final List<String> dimensions;
    @Nullable
    private final List<Number> interval;
    @NotNull
    private final String metricsName;
    private final int types;
    @NotNull
    private final IWorker worker;

    /* JADX WARN: Multi-variable type inference failed */
    public MetricsTrackerImpl(@NotNull String metricsName, int i10, @Nullable List<String> list, @Nullable List<? extends Number> list2, @NotNull IMetricsCache cache, @NotNull IWorker worker) {
        Intrinsics.checkParameterIsNotNull(metricsName, "metricsName");
        Intrinsics.checkParameterIsNotNull(cache, "cache");
        Intrinsics.checkParameterIsNotNull(worker, "worker");
        this.metricsName = metricsName;
        this.types = i10;
        this.dimensions = list;
        this.interval = list2;
        this.cache = cache;
        this.worker = worker;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String calculateMetricsInterval(Object obj, List<? extends Number> list) {
        String str;
        if ((this.types & 16) > 0 && list != null && (!list.isEmpty()) && (obj instanceof Number)) {
            double doubleValue = ((Number) obj).doubleValue();
            Iterator<? extends Number> it = list.iterator();
            String str2 = "";
            while (true) {
                if (it.hasNext()) {
                    double doubleValue2 = it.next().doubleValue();
                    if (doubleValue < doubleValue2) {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        str = String.format("%.0f", Arrays.copyOf(new Object[]{Double.valueOf(doubleValue2)}, 1));
                        Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(format, *args)");
                        break;
                    }
                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                    str2 = String.format("%.0f", Arrays.copyOf(new Object[]{Double.valueOf(doubleValue2)}, 1));
                    Intrinsics.checkExpressionValueIsNotNull(str2, "java.lang.String.format(format, *args)");
                } else {
                    str = "+";
                    break;
                }
            }
            return '(' + str2 + ',' + str + ')';
        }
        return null;
    }

    private final Metrics getOrCreateMetrics(String str, JSONObject jSONObject, String str2) {
        JSONObject jSONObject2;
        Metrics metrics = this.cache.get(str);
        if (metrics == null) {
            String str3 = this.metricsName;
            int i10 = this.types;
            long currentTimeMillis = System.currentTimeMillis();
            if (jSONObject != null) {
                jSONObject2 = UtilsKt.copy(jSONObject);
            } else {
                jSONObject2 = null;
            }
            metrics = new Metrics(str3, str, i10, currentTimeMillis, jSONObject2, str2);
        }
        return metrics;
    }

    @NotNull
    public final IMetricsCache getCache() {
        return this.cache;
    }

    @Nullable
    public final List<String> getDimensions() {
        return this.dimensions;
    }

    @Nullable
    public final List<Number> getInterval() {
        return this.interval;
    }

    @NotNull
    public final String getMetricsName() {
        return this.metricsName;
    }

    public final int getTypes() {
        return this.types;
    }

    @NotNull
    public final IWorker getWorker() {
        return this.worker;
    }

    @Override // com.bytedance.applog.aggregation.IMetricsTracker
    public void track(@Nullable final Object obj, @Nullable final JSONObject jSONObject) {
        this.worker.post(new Function0<Unit>() { // from class: com.bytedance.applog.aggregation.MetricsTrackerImpl$track$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                String calculateMetricsInterval;
                String str;
                MetricsTrackerImpl metricsTrackerImpl = MetricsTrackerImpl.this;
                calculateMetricsInterval = metricsTrackerImpl.calculateMetricsInterval(obj, metricsTrackerImpl.getInterval());
                List<String> dimensions = MetricsTrackerImpl.this.getDimensions();
                if (dimensions != null) {
                    List<String> list = dimensions;
                    ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                    for (String str2 : list) {
                        JSONObject jSONObject2 = jSONObject;
                        arrayList.add(jSONObject2 != null ? jSONObject2.opt(str2) : null);
                    }
                    str = CollectionsKt.A0(arrayList, "-", null, null, 0, null, null, 62, null);
                } else {
                    str = null;
                }
                String str3 = MetricsTrackerImpl.this.getMetricsName() + '|' + MetricsTrackerImpl.this.getTypes() + '|' + calculateMetricsInterval + '|' + str;
                Metrics metrics = MetricsTrackerImpl.this.getCache().get(str3);
                boolean z10 = metrics == null;
                if (metrics == null) {
                    String metricsName = MetricsTrackerImpl.this.getMetricsName();
                    int types = MetricsTrackerImpl.this.getTypes();
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject3 = jSONObject;
                    metrics = new Metrics(metricsName, str3, types, currentTimeMillis, jSONObject3 != null ? UtilsKt.copy(jSONObject3) : null, calculateMetricsInterval);
                }
                metrics.append(obj);
                if (z10) {
                    MetricsTrackerImpl.this.getCache().insert(str3, metrics);
                } else {
                    MetricsTrackerImpl.this.getCache().update(str3, metrics);
                }
            }
        });
    }
}
