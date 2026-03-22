package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f36208a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t f36209b;

    public g(@NotNull String url, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t offset) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(offset, "offset");
        this.f36208a = url;
        this.f36209b = offset;
    }

    @NotNull
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t a() {
        return this.f36209b;
    }

    @NotNull
    public final String b() {
        return this.f36208a;
    }
}
