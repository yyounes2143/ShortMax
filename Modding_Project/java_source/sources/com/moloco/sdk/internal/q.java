package com.moloco.sdk.internal;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class q {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f33065a;

    /* renamed from: b  reason: collision with root package name */
    public final int f33066b;

    public q(@NotNull String description, int i10) {
        Intrinsics.checkNotNullParameter(description, "description");
        this.f33065a = description;
        this.f33066b = i10;
    }

    @NotNull
    public final String a() {
        return this.f33065a;
    }

    public final int b() {
        return this.f33066b;
    }
}
