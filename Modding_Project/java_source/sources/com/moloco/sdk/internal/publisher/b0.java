package com.moloco.sdk.internal.publisher;

import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.AdLoad;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class b0 {
    @NotNull
    public static final s0 a(@Nullable AdLoad.Listener listener, @NotNull com.moloco.sdk.acm.e acmLoadTimerEvent, @NotNull AdFormatType adFormatType, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(acmLoadTimerEvent, "acmLoadTimerEvent");
        Intrinsics.checkNotNullParameter(adFormatType, "adFormatType");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        return new a0(listener, com.moloco.sdk.internal.k0.b(), acmLoadTimerEvent, adFormatType, metricsRecorder);
    }
}
