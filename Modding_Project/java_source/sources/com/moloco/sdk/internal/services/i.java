package com.moloco.sdk.internal.services;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class i implements f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33396a;

    public i(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f33396a = context;
    }

    @Override // com.moloco.sdk.internal.services.f
    @NotNull
    public e a() {
        com.moloco.sdk.common_adapter_internal.b invoke = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.a0.a(this.f33396a).invoke();
        float e10 = invoke.e();
        return new e(invoke.f(), e10, invoke.c(), invoke.b(), invoke.d(), invoke.a(), this.f33396a.getResources().getDisplayMetrics().xdpi, this.f33396a.getResources().getDisplayMetrics().ydpi);
    }

    @Override // com.moloco.sdk.internal.services.f
    @NotNull
    public H b() {
        int i10 = this.f33396a.getResources().getConfiguration().orientation;
        if (i10 != 1) {
            if (i10 != 2) {
                return H.f33085a;
            }
            return H.f33087c;
        }
        return H.f33086b;
    }

    @Override // com.moloco.sdk.internal.services.f
    @ms.c
    @NotNull
    public e invoke() {
        return a();
    }
}
