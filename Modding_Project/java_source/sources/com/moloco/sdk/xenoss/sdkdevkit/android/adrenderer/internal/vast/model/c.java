package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f35561a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Integer f35562b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final d f35563c;

    public c(@Nullable String str, @Nullable Integer num, @NotNull d child) {
        Intrinsics.checkNotNullParameter(child, "child");
        this.f35561a = str;
        this.f35562b = num;
        this.f35563c = child;
    }

    @NotNull
    public final d a() {
        return this.f35563c;
    }

    @Nullable
    public final Integer b() {
        return this.f35562b;
    }
}
