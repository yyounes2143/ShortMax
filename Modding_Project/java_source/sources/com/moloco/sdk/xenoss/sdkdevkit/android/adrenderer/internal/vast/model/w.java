package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class w {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f35654a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final i f35655b;

    public w(@NotNull String resource, @NotNull i creativeType) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Intrinsics.checkNotNullParameter(creativeType, "creativeType");
        this.f35654a = resource;
        this.f35655b = creativeType;
    }

    @NotNull
    public final i a() {
        return this.f35655b;
    }

    @NotNull
    public final String b() {
        return this.f35654a;
    }
}
