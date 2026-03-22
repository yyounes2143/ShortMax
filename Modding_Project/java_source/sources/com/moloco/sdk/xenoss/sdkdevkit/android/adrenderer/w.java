package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer;

import android.content.Context;
import com.moloco.sdk.internal.ortb.model.c;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.D;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class w {
    @NotNull
    public static final u<q, r> a(@NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @Nullable i iVar, @NotNull c bid, @NotNull n0 externalLinkHandler, @NotNull g0 watermark) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(bid, "bid");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.c(context, customUserEventBuilderService, iVar, bid, externalLinkHandler, watermark);
    }

    public static /* synthetic */ u b(Context context, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, i iVar, c cVar, n0 n0Var, g0 g0Var, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            iVar = null;
        }
        return a(context, aVar, iVar, cVar, n0Var, g0Var);
    }

    @NotNull
    public static final u<c0, b0> c(@NotNull Context context, @NotNull String adm, @NotNull com.moloco.sdk.internal.services.f0 clickthroughService, @NotNull g0 watermark, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(clickthroughService, "clickthroughService");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        return new D(context, adm, clickthroughService, watermark, b.h.f33655a.f(), b.i.f33662a.c(), metricsRecorder);
    }
}
