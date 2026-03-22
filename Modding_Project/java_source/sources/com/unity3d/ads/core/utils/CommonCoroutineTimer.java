package com.unity3d.ads.core.utils;

import gt.c0;
import gt.g;
import gt.g0;
import gt.r1;
import gt.s;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonCoroutineTimer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonCoroutineTimer implements CoroutineTimer {
    @NotNull
    private final c0 dispatcher;
    @NotNull
    private final s job;
    @NotNull
    private final g0 scope;

    public CommonCoroutineTimer(@NotNull c0 dispatcher) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.dispatcher = dispatcher;
        s b10 = r1.b(null, 1, null);
        this.job = b10;
        this.scope = i.a(dispatcher.plus(b10));
    }

    @Override // com.unity3d.ads.core.utils.CoroutineTimer
    @NotNull
    public r start(long j10, long j11, @NotNull Function0<Unit> action) {
        r d10;
        Intrinsics.checkNotNullParameter(action, "action");
        d10 = g.d(this.scope, this.dispatcher, null, new CommonCoroutineTimer$start$1(j10, action, j11, null), 2, null);
        return d10;
    }
}
