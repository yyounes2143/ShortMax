package com.moloco.sdk.internal.services.events;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c implements com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public e f33380a;

    public c() {
        e eVar;
        eVar = d.f33381a;
        this.f33380a = eVar;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b
    public void a(boolean z10, boolean z11, @NotNull String appForegroundUrl, @NotNull String appBackgroundUrl) {
        Intrinsics.checkNotNullParameter(appForegroundUrl, "appForegroundUrl");
        Intrinsics.checkNotNullParameter(appBackgroundUrl, "appBackgroundUrl");
        this.f33380a = new e(z10, z11, appForegroundUrl, appBackgroundUrl);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b
    public boolean b() {
        return this.f33380a.d();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b
    public boolean c() {
        return this.f33380a.c();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b
    @NotNull
    public String d() {
        return this.f33380a.b();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b
    @NotNull
    public String a() {
        return this.f33380a.a();
    }
}
