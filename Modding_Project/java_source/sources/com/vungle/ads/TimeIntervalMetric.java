package com.vungle.ads;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Metrics.kt */
@Metadata
/* loaded from: classes7.dex */
public class TimeIntervalMetric extends DualValueMetric {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimeIntervalMetric(@NotNull Sdk.SDKMetric.SDKMetricType metricType) {
        super(metricType);
        Intrinsics.checkNotNullParameter(metricType, "metricType");
    }

    private final long calculateIntervalDuration() {
        long j10;
        long currentTime = getCurrentTime();
        Long valueSecond = getValueSecond();
        if (valueSecond != null) {
            j10 = valueSecond.longValue();
        } else {
            j10 = currentTime;
        }
        Long valueFirst = getValueFirst();
        if (valueFirst != null) {
            currentTime = valueFirst.longValue();
        }
        return (j10 - currentTime) / ((long) TTVideoEngineInterface.PLAYER_TIME_BASE);
    }

    private final long getCurrentTime() {
        return System.nanoTime();
    }

    @Override // com.vungle.ads.Metric
    public long getValue() {
        return calculateIntervalDuration();
    }

    public void markEnd() {
        setValueSecond(Long.valueOf(getCurrentTime()));
    }

    public void markStart() {
        setValueFirst(Long.valueOf(getCurrentTime()));
    }
}
