package com.facebook.appevents;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FlushStatistics.kt */
@Metadata
/* loaded from: classes3.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    private int f15000a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private FlushResult f15001b = FlushResult.SUCCESS;

    public final int a() {
        return this.f15000a;
    }

    @NotNull
    public final FlushResult b() {
        return this.f15001b;
    }

    public final void c(int i10) {
        this.f15000a = i10;
    }

    public final void d(@NotNull FlushResult flushResult) {
        Intrinsics.checkNotNullParameter(flushResult, "<set-?>");
        this.f15001b = flushResult;
    }
}
