package com.moloco.sdk.internal.publisher.nativead.parser;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final int f32868a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c f32869b;

    public b(int i10, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c errorSubType) {
        Intrinsics.checkNotNullParameter(errorSubType, "errorSubType");
        this.f32868a = i10;
        this.f32869b = errorSubType;
    }

    public final int b() {
        return this.f32868a;
    }

    @NotNull
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c d() {
        return this.f32869b;
    }
}
