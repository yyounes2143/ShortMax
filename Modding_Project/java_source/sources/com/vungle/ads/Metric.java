package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Metrics.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class Metric {
    @Nullable
    private String meta;
    @NotNull
    private Sdk.SDKMetric.SDKMetricType metricType;

    public Metric(@NotNull Sdk.SDKMetric.SDKMetricType metricType) {
        Intrinsics.checkNotNullParameter(metricType, "metricType");
        this.metricType = metricType;
    }

    @Nullable
    public final String getMeta() {
        return this.meta;
    }

    @NotNull
    public final Sdk.SDKMetric.SDKMetricType getMetricType() {
        return this.metricType;
    }

    public abstract long getValue();

    public final void setMeta(@Nullable String str) {
        this.meta = str;
    }

    public final void setMetricType(@NotNull Sdk.SDKMetric.SDKMetricType sDKMetricType) {
        Intrinsics.checkNotNullParameter(sDKMetricType, "<set-?>");
        this.metricType = sDKMetricType;
    }
}
