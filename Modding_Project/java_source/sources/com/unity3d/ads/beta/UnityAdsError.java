package com.unity3d.ads.beta;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UnityAdsError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UnityAdsError {
    private final int code;
    @NotNull
    private final String message;

    public UnityAdsError(int i10, @NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.code = i10;
        this.message = message;
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final String getMessage() {
        return this.message;
    }
}
