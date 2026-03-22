package com.moloco.sdk.internal.publisher;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class e0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f32636a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Float f32637b;

    public e0(@NotNull String burl, @Nullable Float f10) {
        Intrinsics.checkNotNullParameter(burl, "burl");
        this.f32636a = burl;
        this.f32637b = f10;
    }

    @NotNull
    public final String a() {
        return this.f32636a;
    }
}
