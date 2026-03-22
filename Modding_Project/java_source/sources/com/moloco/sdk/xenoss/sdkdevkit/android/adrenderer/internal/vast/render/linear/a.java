package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f36260a;

    /* renamed from: b  reason: collision with root package name */
    public final long f36261b;

    public a(@NotNull String url, long j10) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f36260a = url;
        this.f36261b = j10;
    }

    public final long a() {
        return this.f36261b;
    }

    @NotNull
    public final String b() {
        return this.f36260a;
    }
}
