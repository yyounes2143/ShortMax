package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class k implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final j f36234a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t f36235b;

    public k(@NotNull j resource, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t tVar) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        this.f36234a = resource;
        this.f36235b = tVar;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t tVar = this.f36235b;
        if (tVar != null) {
            tVar.destroy();
        }
    }

    @NotNull
    public final j k() {
        return this.f36234a;
    }
}
