package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast;

import java.util.Comparator;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class b implements Comparator<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s> {

    /* renamed from: a  reason: collision with root package name */
    public final double f35053a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Long f35054b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Integer f35055c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Integer f35056d;

    public b(double d10, @Nullable Long l10, @Nullable Integer num, @Nullable Integer num2) {
        this.f35053a = d10;
        this.f35054b = l10;
        this.f35055c = num;
        this.f35056d = num2;
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s mf1, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s mf2) {
        Pair u10;
        Intrinsics.checkNotNullParameter(mf1, "mf1");
        Intrinsics.checkNotNullParameter(mf2, "mf2");
        u10 = t.u(mf1, mf2, this.f35053a, this.f35054b, this.f35055c, this.f35056d);
        return Intrinsics.compare(((Number) u10.d()).intValue(), ((Number) u10.b()).intValue());
    }
}
