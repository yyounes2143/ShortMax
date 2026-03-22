package com.moloco.sdk.internal;

import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class j implements i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l f32313a;

    public j(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l persistentHttpRequest) {
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        this.f32313a = persistentHttpRequest;
    }

    @Override // com.moloco.sdk.internal.i
    public void a(@NotNull String burl) {
        Intrinsics.checkNotNullParameter(burl, "burl");
        try {
            Uri parse = Uri.parse(burl);
            com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l lVar = this.f32313a;
            String uri = parse.toString();
            Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
            lVar.a(uri);
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "BUrlTrackerImpl", e10.toString(), null, false, 12, null);
        }
    }
}
