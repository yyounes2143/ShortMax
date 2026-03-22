package com.bytedance.applog.aggregation;

import android.os.Looper;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Defines.kt */
@Metadata
/* loaded from: classes3.dex */
public interface IAggregation {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int TYPE_AVG = 4;
    public static final int TYPE_COUNT = 1;
    public static final int TYPE_INTERVAL = 16;
    public static final int TYPE_MERGE = 8;
    public static final int TYPE_SUM = 2;

    /* compiled from: Defines.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int TYPE_AVG = 4;
        public static final int TYPE_COUNT = 1;
        public static final int TYPE_INTERVAL = 16;
        public static final int TYPE_MERGE = 8;
        public static final int TYPE_SUM = 2;

        private Companion() {
        }

        public static /* synthetic */ IAggregation newInstance$default(Companion companion, IMetricsCache iMetricsCache, Looper looper, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                looper = null;
            }
            return companion.newInstance(iMetricsCache, looper);
        }

        @NotNull
        public final IAggregation newInstance(@NotNull IMetricsCache iMetricsCache) {
            return newInstance$default(this, iMetricsCache, null, 2, null);
        }

        @NotNull
        public final IAggregation newInstance(@NotNull IMetricsCache cache, @Nullable Looper looper) {
            Intrinsics.checkParameterIsNotNull(cache, "cache");
            return new AggregationImpl(cache, looper);
        }
    }

    void flush(@NotNull IAggregationFlushCallback iAggregationFlushCallback);

    @NotNull
    IMetricsTracker newMetricsTracker(@NotNull String str, int i10, @Nullable List<String> list, @Nullable List<? extends Number> list2);
}
