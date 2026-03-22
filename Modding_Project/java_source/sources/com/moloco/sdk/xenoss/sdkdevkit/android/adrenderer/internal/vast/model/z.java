package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class z {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final List<c> f35672a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f35673b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f35674c;

    public z(@NotNull List<c> ads, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(ads, "ads");
        this.f35672a = ads;
        this.f35673b = str;
        this.f35674c = str2;
    }

    @NotNull
    public final List<c> a() {
        return this.f35672a;
    }

    @Nullable
    public final String b() {
        return this.f35673b;
    }
}
