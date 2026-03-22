package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Swipeable.kt */
@Immutable
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public final class FixedThreshold implements ThresholdConfig {
    private final float offset;

    public /* synthetic */ FixedThreshold(float f10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10);
    }

    /* renamed from: component1-D9Ej5fM  reason: not valid java name */
    private final float m1092component1D9Ej5fM() {
        return this.offset;
    }

    /* renamed from: copy-0680j_4$default  reason: not valid java name */
    public static /* synthetic */ FixedThreshold m1093copy0680j_4$default(FixedThreshold fixedThreshold, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = fixedThreshold.offset;
        }
        return fixedThreshold.m1094copy0680j_4(f10);
    }

    @Override // androidx.compose.material.ThresholdConfig
    public float computeThreshold(@NotNull Density density, float f10, float f11) {
        Intrinsics.checkNotNullParameter(density, "<this>");
        return f10 + (density.mo342toPx0680j_4(this.offset) * Math.signum(f11 - f10));
    }

    @NotNull
    /* renamed from: copy-0680j_4  reason: not valid java name */
    public final FixedThreshold m1094copy0680j_4(float f10) {
        return new FixedThreshold(f10, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof FixedThreshold) && Dp.m4054equalsimpl0(this.offset, ((FixedThreshold) obj).offset)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Dp.m4055hashCodeimpl(this.offset);
    }

    @NotNull
    public String toString() {
        return "FixedThreshold(offset=" + ((Object) Dp.m4060toStringimpl(this.offset)) + ')';
    }

    private FixedThreshold(float f10) {
        this.offset = f10;
    }
}
