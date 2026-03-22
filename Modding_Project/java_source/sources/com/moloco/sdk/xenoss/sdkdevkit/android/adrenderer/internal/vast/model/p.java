package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class p {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f35605a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f35606b;

    public p(@Nullable String str, @NotNull String impressionUrl) {
        Intrinsics.checkNotNullParameter(impressionUrl, "impressionUrl");
        this.f35605a = str;
        this.f35606b = impressionUrl;
    }

    @NotNull
    public final String a() {
        return this.f35606b;
    }
}
