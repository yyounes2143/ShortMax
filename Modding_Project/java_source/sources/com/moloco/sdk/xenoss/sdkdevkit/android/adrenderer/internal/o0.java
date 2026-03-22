package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class o0 implements n0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f34395a;

    public o0(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f34395a = context;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0
    public boolean a(@NotNull String uri) {
        boolean b10;
        Intrinsics.checkNotNullParameter(uri, "uri");
        b10 = p0.b(this.f34395a, uri);
        return b10;
    }
}
