package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.content.Context;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidActivity;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class u0 {
    @NotNull
    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p> a(@NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull s mraidAdLoader, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.e mraidBaseAd, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.s mraidFullscreenController, @NotNull MraidActivity.a mraidAdActivity) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(mraidAdLoader, "mraidAdLoader");
        Intrinsics.checkNotNullParameter(mraidBaseAd, "mraidBaseAd");
        Intrinsics.checkNotNullParameter(mraidFullscreenController, "mraidFullscreenController");
        Intrinsics.checkNotNullParameter(mraidAdActivity, "mraidAdActivity");
        return new u(context, watermark, mraidAdLoader, mraidBaseAd, mraidFullscreenController, mraidAdActivity);
    }
}
