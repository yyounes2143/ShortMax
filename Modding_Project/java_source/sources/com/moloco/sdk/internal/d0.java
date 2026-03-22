package com.moloco.sdk.internal;

import com.moloco.sdk.publisher.MolocoAdError;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class d0 {
    @NotNull
    public static final c0 a(@NotNull String adUnitId, @NotNull MolocoAdError.ErrorType errorType, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c subErrorType) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(errorType, "errorType");
        Intrinsics.checkNotNullParameter(subErrorType, "subErrorType");
        return new c0(new MolocoAdError("Moloco", adUnitId, errorType, null, 8, null), subErrorType);
    }
}
