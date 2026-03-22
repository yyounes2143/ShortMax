package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast;

import java.util.Comparator;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class a implements Comparator<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Integer f35051a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Integer f35052b;

    public a(@Nullable Integer num, @Nullable Integer num2) {
        this.f35051a = num;
        this.f35052b = num2;
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g c12, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g c22) {
        Pair y10;
        Intrinsics.checkNotNullParameter(c12, "c1");
        Intrinsics.checkNotNullParameter(c22, "c2");
        y10 = t.y(c12, c22, this.f35051a, this.f35052b);
        return Intrinsics.compare(((Number) y10.d()).intValue(), ((Number) y10.b()).intValue());
    }
}
