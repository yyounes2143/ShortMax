package com.unity3d.services.core.request.metrics;

import com.unity3d.services.core.properties.InitializationStatusReader;
import com.unity3d.services.core.properties.SdkProperties;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: MetricSenderBase.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class MetricSenderBase implements SDKMetricsSender {
    @NotNull
    private final InitializationStatusReader _initStatusReader;

    public MetricSenderBase(@NotNull InitializationStatusReader _initStatusReader) {
        Intrinsics.checkNotNullParameter(_initStatusReader, "_initStatusReader");
        this._initStatusReader = _initStatusReader;
    }

    @Override // com.unity3d.services.core.request.metrics.SDKMetricsSender
    public void sendEvent(@NotNull String str) {
        SDKMetricsSender.DefaultImpls.sendEvent(this, str);
    }

    @Override // com.unity3d.services.core.request.metrics.SDKMetricsSender
    public void sendMetricWithInitState(@NotNull Metric metric) {
        Intrinsics.checkNotNullParameter(metric, "metric");
        sendMetric(Metric.copy$default(metric, null, null, p0.q(metric.getTags(), p0.f(k.a("state", this._initStatusReader.getInitializationStateString(SdkProperties.getCurrentInitializationState())))), 3, null));
    }
}
