package com.unity3d.ads.adplayer;

import gt.c0;
import gt.g0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdPlayerScope.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdPlayerScope implements g0 {
    private final /* synthetic */ g0 $$delegate_0;
    @NotNull
    private final c0 defaultDispatcher;

    public AdPlayerScope(@NotNull c0 defaultDispatcher) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        this.defaultDispatcher = defaultDispatcher;
        this.$$delegate_0 = i.a(defaultDispatcher);
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }
}
