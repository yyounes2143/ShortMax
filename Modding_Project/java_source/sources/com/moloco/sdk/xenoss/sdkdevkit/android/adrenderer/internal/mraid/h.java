package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.content.Context;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.k0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class h {
    @NotNull
    public static final List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k> a(@NotNull f fVar, @NotNull s mraidFullscreenContentController, int i10, @NotNull Context context, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService) {
        k.b bVar;
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        Intrinsics.checkNotNullParameter(mraidFullscreenContentController, "mraidFullscreenContentController");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        k.d dVar = new k.d(mraidFullscreenContentController);
        k0 b10 = fVar.b();
        if (b10 != null) {
            bVar = new k.b(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.c(b10, null, ms.n.b(kotlin.ranges.e.e(i10, 0)), context, customUserEventBuilderService, externalLinkHandler, null));
        } else {
            bVar = null;
        }
        return CollectionsKt.s(dVar, bVar);
    }
}
