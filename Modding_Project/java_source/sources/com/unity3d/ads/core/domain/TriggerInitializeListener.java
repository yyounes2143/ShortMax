package com.unity3d.ads.core.domain;

import com.unity3d.ads.UnityAds;
import gt.c0;
import gt.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: TriggerInitializeListener.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TriggerInitializeListener {
    @NotNull
    private final c0 coroutineDispatcher;

    public TriggerInitializeListener(@NotNull c0 coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        this.coroutineDispatcher = coroutineDispatcher;
    }

    public final void error(@NotNull UnityAds.UnityAdsInitializationError unityAdsInitializationError, @NotNull String errorMsg) {
        Intrinsics.checkNotNullParameter(unityAdsInitializationError, "unityAdsInitializationError");
        Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
        g.d(i.a(this.coroutineDispatcher), null, null, new TriggerInitializeListener$error$1(unityAdsInitializationError, errorMsg, null), 3, null);
    }

    public final void success() {
        g.d(i.a(this.coroutineDispatcher), null, null, new TriggerInitializeListener$success$1(null), 3, null);
    }
}
