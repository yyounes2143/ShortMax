package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class m0 {
    @NotNull
    public static final l0 a(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n mediaCacheRepository, @NotNull com.moloco.sdk.internal.error.b errorReportingService) {
        Intrinsics.checkNotNullParameter(mediaCacheRepository, "mediaCacheRepository");
        Intrinsics.checkNotNullParameter(errorReportingService, "errorReportingService");
        return new k(mediaCacheRepository, errorReportingService);
    }

    public static final void c(String str) {
        MolocoLogger.debug$default(MolocoLogger.INSTANCE, "DECLoaderImpl", str, false, 4, null);
    }
}
