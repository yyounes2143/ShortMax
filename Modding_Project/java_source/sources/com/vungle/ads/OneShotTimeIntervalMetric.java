package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Metrics.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OneShotTimeIntervalMetric extends TimeIntervalMetric {
    private boolean alreadyLogged;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneShotTimeIntervalMetric(@NotNull Sdk.SDKMetric.SDKMetricType metricType) {
        super(metricType);
        Intrinsics.checkNotNullParameter(metricType, "metricType");
    }

    public final boolean alreadyMetered$vungle_ads_release() {
        if (getValueFirst() != null && getValueSecond() != null) {
            return true;
        }
        return false;
    }

    public final boolean isLogged() {
        return this.alreadyLogged;
    }

    @Override // com.vungle.ads.TimeIntervalMetric
    public void markEnd() {
        if (getValueSecond() == null) {
            super.markEnd();
        }
    }

    public final void markLogged() {
        this.alreadyLogged = true;
    }

    @Override // com.vungle.ads.TimeIntervalMetric
    public void markStart() {
        if (getValueFirst() == null) {
            super.markStart();
        }
    }
}
