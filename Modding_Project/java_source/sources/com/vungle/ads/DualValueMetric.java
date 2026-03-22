package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Metrics.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class DualValueMetric extends Metric {
    @Nullable
    private Long valueFirst;
    @Nullable
    private Long valueSecond;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DualValueMetric(@NotNull Sdk.SDKMetric.SDKMetricType metricType) {
        super(metricType);
        Intrinsics.checkNotNullParameter(metricType, "metricType");
    }

    @Nullable
    public final Long getValueFirst() {
        return this.valueFirst;
    }

    @Nullable
    public final Long getValueSecond() {
        return this.valueSecond;
    }

    public final void setValueFirst(@Nullable Long l10) {
        this.valueFirst = l10;
    }

    public final void setValueSecond(@Nullable Long l10) {
        this.valueSecond = l10;
    }
}
