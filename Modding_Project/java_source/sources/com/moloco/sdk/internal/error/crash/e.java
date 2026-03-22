package com.moloco.sdk.internal.error.crash;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class e implements d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final List<com.moloco.sdk.internal.error.crash.filters.a> f32112a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.error.api.a f32113b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f32114c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f32115d;

    /* JADX WARN: Multi-variable type inference failed */
    public e(@NotNull List<? extends com.moloco.sdk.internal.error.crash.filters.a> exceptionFilters, @NotNull com.moloco.sdk.internal.error.api.a errorReporter, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(exceptionFilters, "exceptionFilters");
        Intrinsics.checkNotNullParameter(errorReporter, "errorReporter");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f32112a = exceptionFilters;
        this.f32113b = errorReporter;
        this.f32114c = metricsRecorder;
        this.f32115d = "CrashHandlerService";
    }

    @Override // com.moloco.sdk.internal.error.crash.d
    public void a(@NotNull Throwable crash) {
        Intrinsics.checkNotNullParameter(crash, "crash");
        if (b(crash)) {
            this.f32114c.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.D.c()));
            this.f32113b.a(crash);
            return;
        }
        MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f32115d, "App Crashed", null, false, 12, null);
    }

    public final boolean b(Throwable th2) {
        for (com.moloco.sdk.internal.error.crash.filters.a aVar : this.f32112a) {
            if (aVar.a(th2)) {
                return true;
            }
        }
        return false;
    }
}
