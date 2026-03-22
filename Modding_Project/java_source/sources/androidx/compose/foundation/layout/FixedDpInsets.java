package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WindowInsets.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
final class FixedDpInsets implements WindowInsets {
    private final float bottomDp;
    private final float leftDp;
    private final float rightDp;
    private final float topDp;

    public /* synthetic */ FixedDpInsets(float f10, float f11, float f12, float f13, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FixedDpInsets)) {
            return false;
        }
        FixedDpInsets fixedDpInsets = (FixedDpInsets) obj;
        if (Dp.m4054equalsimpl0(this.leftDp, fixedDpInsets.leftDp) && Dp.m4054equalsimpl0(this.topDp, fixedDpInsets.topDp) && Dp.m4054equalsimpl0(this.rightDp, fixedDpInsets.rightDp) && Dp.m4054equalsimpl0(this.bottomDp, fixedDpInsets.bottomDp)) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getBottom(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return density.mo336roundToPx0680j_4(this.bottomDp);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getLeft(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return density.mo336roundToPx0680j_4(this.leftDp);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getRight(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return density.mo336roundToPx0680j_4(this.rightDp);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getTop(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return density.mo336roundToPx0680j_4(this.topDp);
    }

    public int hashCode() {
        return (((((Dp.m4055hashCodeimpl(this.leftDp) * 31) + Dp.m4055hashCodeimpl(this.topDp)) * 31) + Dp.m4055hashCodeimpl(this.rightDp)) * 31) + Dp.m4055hashCodeimpl(this.bottomDp);
    }

    @NotNull
    public String toString() {
        return "Insets(left=" + ((Object) Dp.m4060toStringimpl(this.leftDp)) + ", top=" + ((Object) Dp.m4060toStringimpl(this.topDp)) + ", right=" + ((Object) Dp.m4060toStringimpl(this.rightDp)) + ", bottom=" + ((Object) Dp.m4060toStringimpl(this.bottomDp)) + ')';
    }

    private FixedDpInsets(float f10, float f11, float f12, float f13) {
        this.leftDp = f10;
        this.topDp = f11;
        this.rightDp = f12;
        this.bottomDp = f13;
    }
}
