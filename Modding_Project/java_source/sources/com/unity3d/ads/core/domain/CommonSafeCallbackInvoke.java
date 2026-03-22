package com.unity3d.ads.core.domain;

import gt.c0;
import gt.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonSafeCallbackInvoke.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonSafeCallbackInvoke implements SafeCallbackInvoke {
    @NotNull
    private final c0 mainDispatcher;

    public CommonSafeCallbackInvoke(@NotNull c0 mainDispatcher) {
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        this.mainDispatcher = mainDispatcher;
    }

    @Override // com.unity3d.ads.core.domain.SafeCallbackInvoke
    public void invoke(@NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        g.d(i.a(this.mainDispatcher), null, null, new CommonSafeCallbackInvoke$invoke$1(block, null), 3, null);
    }
}
