package com.moloco.sdk.internal;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.publisher.MolocoAdError;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final MolocoAdError f32027a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c f32028b;

    public c0(@NotNull MolocoAdError molocoAdError, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c subErrorType) {
        Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
        Intrinsics.checkNotNullParameter(subErrorType, "subErrorType");
        this.f32027a = molocoAdError;
        this.f32028b = subErrorType;
    }

    @NotNull
    public final MolocoAdError a() {
        return this.f32027a;
    }

    @NotNull
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c b() {
        return this.f32028b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        if (Intrinsics.areEqual(this.f32027a, c0Var.f32027a) && Intrinsics.areEqual(this.f32028b, c0Var.f32028b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f32027a.hashCode() * 31) + this.f32028b.hashCode();
    }

    @NotNull
    public String toString() {
        return "MolocoInternalAdError(molocoAdError=" + this.f32027a + ", subErrorType=" + this.f32028b + ')';
    }
}
