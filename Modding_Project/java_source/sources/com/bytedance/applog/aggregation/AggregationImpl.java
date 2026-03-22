package com.bytedance.applog.aggregation;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AggregationImpl.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AggregationImpl implements IAggregation, IWorker {
    private final IMetricsCache cache;
    private final Handler handler;
    private final List<IMetricsTracker> trackers;

    public AggregationImpl(@NotNull IMetricsCache cache, @Nullable Looper looper) {
        Handler handler;
        Intrinsics.checkParameterIsNotNull(cache, "cache");
        this.cache = cache;
        if (looper != null) {
            handler = new Handler(looper);
        } else {
            handler = null;
        }
        this.handler = handler;
        this.trackers = new ArrayList();
    }

    @Override // com.bytedance.applog.aggregation.IAggregation
    public void flush(@NotNull final IAggregationFlushCallback callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        post(new Function0<Unit>() { // from class: com.bytedance.applog.aggregation.AggregationImpl$flush$1
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
                IMetricsCache iMetricsCache;
                IMetricsCache iMetricsCache2;
                iMetricsCache = AggregationImpl.this.cache;
                List<Metrics> all = iMetricsCache.getAll();
                iMetricsCache2 = AggregationImpl.this.cache;
                iMetricsCache2.clear();
                callback.onFinish(all);
            }
        });
    }

    @Override // com.bytedance.applog.aggregation.IAggregation
    @NotNull
    public IMetricsTracker newMetricsTracker(@NotNull String metricsName, int i10, @Nullable List<String> list, @Nullable List<? extends Number> list2) {
        List list3;
        Intrinsics.checkParameterIsNotNull(metricsName, "metricsName");
        if (list != null) {
            list3 = CollectionsKt.T0(list);
        } else {
            list3 = null;
        }
        MetricsTrackerImpl metricsTrackerImpl = new MetricsTrackerImpl(metricsName, i10, list3, list2, this.cache, this);
        this.trackers.add(metricsTrackerImpl);
        return metricsTrackerImpl;
    }

    @Override // com.bytedance.applog.aggregation.IWorker
    public void post(@NotNull final Function0<Unit> block) {
        Intrinsics.checkParameterIsNotNull(block, "block");
        Handler handler = this.handler;
        if (handler == null) {
            block.invoke();
        } else {
            handler.post(new Runnable() { // from class: com.bytedance.applog.aggregation.AggregationImpl$post$1
                @Override // java.lang.Runnable
                public final void run() {
                    Function0.this.invoke();
                }
            });
        }
    }
}
