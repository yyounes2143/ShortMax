package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.content.Context;
import com.moloco.sdk.service_locator.b;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class w {
    @NotNull
    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0> a(@NotNull Context context, @NotNull com.moloco.sdk.internal.ortb.model.c bid, boolean z10, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g loadVast, @NotNull l0 decLoader) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bid, "bid");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(loadVast, "loadVast");
        Intrinsics.checkNotNullParameter(decLoader, "decLoader");
        return new I(context, bid, loadVast, decLoader, z10, watermark);
    }

    public static /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u b(Context context, com.moloco.sdk.internal.ortb.model.c cVar, boolean z10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g gVar, l0 l0Var, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            gVar = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.n.a(context);
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g gVar2 = gVar;
        if ((i10 & 32) != 0) {
            l0Var = b.a.f33620a.a();
        }
        return a(context, cVar, z10, g0Var, gVar2, l0Var);
    }
}
