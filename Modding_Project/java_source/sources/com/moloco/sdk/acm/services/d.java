package com.moloco.sdk.acm.services;

import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final f f31981a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final AtomicLong f31982b;

    public d(@NotNull f timeProviderService) {
        Intrinsics.checkNotNullParameter(timeProviderService, "timeProviderService");
        this.f31981a = timeProviderService;
        this.f31982b = new AtomicLong(0L);
    }

    public final long a() {
        return this.f31981a.invoke() - this.f31982b.get();
    }

    public final void b() {
        this.f31982b.set(this.f31981a.invoke());
    }
}
