package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad;

import android.content.Context;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.k0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ms.n;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class j {
    @NotNull
    public static final List<k> a(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a aVar, @NotNull n0 externalLinkHandler, @NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, boolean z10, @Nullable Boolean bool, int i10, int i11, int i12, boolean z11, boolean z12) {
        k.a aVar2;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        k.c cVar = new k.c(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.e(aVar.g(), 0, z10, bool, i10, z11, z12, context, customUserEventBuilderService, externalLinkHandler));
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.c c10 = aVar.c();
        k.b bVar = null;
        if (c10 != null) {
            aVar2 = new k.a(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.c(c10, n.b(kotlin.ranges.e.e(i11, 0)), context, customUserEventBuilderService, externalLinkHandler, z10, null));
        } else {
            aVar2 = null;
        }
        k0 d10 = aVar.d();
        if (d10 != null) {
            bVar = new k.b(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.c(d10, aVar.g().d(), n.b(kotlin.ranges.e.e(i12, 0)), context, customUserEventBuilderService, externalLinkHandler, null));
        }
        return CollectionsKt.s(cVar, aVar2, bVar);
    }
}
