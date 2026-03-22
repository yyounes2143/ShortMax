package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class b0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f35559a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f35560b;

    public b0(@Nullable String str, @NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f35559a = str;
        this.f35560b = url;
    }

    @NotNull
    public final String a() {
        return this.f35560b;
    }
}
