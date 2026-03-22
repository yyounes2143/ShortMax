package com.moloco.sdk.internal;

import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@VisibleForTesting
@SourceDebugExtension({"SMAP\nSdkEventUrlTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SdkEventUrlTracker.kt\ncom/moloco/sdk/internal/SdkEventUrlTrackerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"})
/* loaded from: classes6.dex */
public final class i0 implements h0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l f32166a;

    public i0(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l persistentHttpRequest) {
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        this.f32166a = persistentHttpRequest;
    }

    @Override // com.moloco.sdk.internal.h0
    public boolean a(@NotNull String url, long j10, @Nullable c0 c0Var) {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c b10;
        Intrinsics.checkNotNullParameter(url, "url");
        if (c0Var != null) {
            try {
                b10 = c0Var.b();
            } catch (Exception e10) {
                MolocoLogger.error$default(MolocoLogger.INSTANCE, "SdkEventUrlTrackerImpl", e10.toString(), null, false, 12, null);
                return false;
            }
        } else {
            b10 = null;
        }
        Uri build = Uri.parse(b(url, j10, b10)).buildUpon().build();
        com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l lVar = this.f32166a;
        String uri = build.toString();
        Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
        lVar.a(uri);
        return true;
    }

    public final String b(String str, long j10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c cVar) {
        String c10;
        if (cVar != null && (c10 = com.moloco.sdk.internal.utils.d.c(str, cVar.a())) != null) {
            str = c10;
        }
        return com.moloco.sdk.internal.utils.d.b(str, j10);
    }
}
