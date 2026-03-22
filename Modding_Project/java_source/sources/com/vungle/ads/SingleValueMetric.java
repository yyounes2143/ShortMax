package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Metrics.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SingleValueMetric extends Metric {
    @Nullable
    private Long value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleValueMetric(@NotNull Sdk.SDKMetric.SDKMetricType metricType) {
        super(metricType);
        Intrinsics.checkNotNullParameter(metricType, "metricType");
    }

    public final void addValue(long j10) {
        long j11;
        Long l10 = this.value;
        if (l10 != null) {
            j11 = l10.longValue();
        } else {
            j11 = 0;
        }
        this.value = Long.valueOf(j11 + j10);
    }

    @Nullable
    /* renamed from: getValue  reason: collision with other method in class */
    public final Long m4761getValue() {
        return this.value;
    }

    public final void markTime() {
        this.value = Long.valueOf(System.currentTimeMillis());
    }

    public final void setValue(@Nullable Long l10) {
        this.value = l10;
    }

    @Override // com.vungle.ads.Metric
    public long getValue() {
        Long l10 = this.value;
        if (l10 != null) {
            return l10.longValue();
        }
        return 0L;
    }
}
