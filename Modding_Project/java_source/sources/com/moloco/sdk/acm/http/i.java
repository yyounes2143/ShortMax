package com.moloco.sdk.acm.http;

import com.moloco.sdk.MetricsRequest$PostMetricsRequest;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final List<MetricsRequest$PostMetricsRequest.CountEvent> f31965a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final List<MetricsRequest$PostMetricsRequest.TimerEvent> f31966b;

    public i(@NotNull List<MetricsRequest$PostMetricsRequest.CountEvent> counts, @NotNull List<MetricsRequest$PostMetricsRequest.TimerEvent> timers) {
        Intrinsics.checkNotNullParameter(counts, "counts");
        Intrinsics.checkNotNullParameter(timers, "timers");
        this.f31965a = counts;
        this.f31966b = timers;
    }

    @NotNull
    public final List<MetricsRequest$PostMetricsRequest.CountEvent> a() {
        return this.f31965a;
    }

    @NotNull
    public final List<MetricsRequest$PostMetricsRequest.TimerEvent> b() {
        return this.f31966b;
    }
}
