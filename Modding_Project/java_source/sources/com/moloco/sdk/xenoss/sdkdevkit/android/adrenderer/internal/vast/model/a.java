package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final b0 f35547a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final List<b0> f35548b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final List<b0> f35549c;

    public a(@Nullable b0 b0Var, @NotNull List<b0> clickTrackingList, @NotNull List<b0> customClickList) {
        Intrinsics.checkNotNullParameter(clickTrackingList, "clickTrackingList");
        Intrinsics.checkNotNullParameter(customClickList, "customClickList");
        this.f35547a = b0Var;
        this.f35548b = clickTrackingList;
        this.f35549c = customClickList;
    }

    @Nullable
    public final b0 a() {
        return this.f35547a;
    }

    @NotNull
    public final List<b0> b() {
        return this.f35548b;
    }

    @NotNull
    public final List<b0> c() {
        return this.f35549c;
    }
}
