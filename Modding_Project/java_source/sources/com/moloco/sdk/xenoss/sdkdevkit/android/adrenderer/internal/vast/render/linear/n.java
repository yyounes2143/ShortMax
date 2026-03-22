package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f36337a;

    /* renamed from: b  reason: collision with root package name */
    public final int f36338b;

    public n(@NotNull String url, int i10) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f36337a = url;
        this.f36338b = i10;
    }

    public final int a() {
        return this.f36338b;
    }

    @NotNull
    public final String b() {
        return this.f36337a;
    }
}
