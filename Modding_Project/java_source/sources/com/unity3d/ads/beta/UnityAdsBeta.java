package com.unity3d.ads.beta;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UnityAdsBeta.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UnityAdsBeta {
    public static final void getToken(@NotNull TokenConfiguration configuration, @NotNull TokenListener listener) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(listener, "listener");
    }

    @NotNull
    public static final String getVersion() {
        return "";
    }

    public static final void initialize(@NotNull InitializationConfiguration configuration, @NotNull InitializationListener listener) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(listener, "listener");
    }

    public static final boolean isInitialize() {
        return true;
    }
}
