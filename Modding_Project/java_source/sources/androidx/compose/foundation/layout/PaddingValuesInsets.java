package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WindowInsets.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
final class PaddingValuesInsets implements WindowInsets {
    @NotNull
    private final PaddingValues paddingValues;

    public PaddingValuesInsets(@NotNull PaddingValues paddingValues) {
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        this.paddingValues = paddingValues;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PaddingValuesInsets)) {
            return false;
        }
        return Intrinsics.areEqual(((PaddingValuesInsets) obj).paddingValues, this.paddingValues);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getBottom(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return density.mo336roundToPx0680j_4(this.paddingValues.mo427calculateBottomPaddingD9Ej5fM());
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getLeft(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return density.mo336roundToPx0680j_4(this.paddingValues.mo428calculateLeftPaddingu2uoSUM(layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getRight(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return density.mo336roundToPx0680j_4(this.paddingValues.mo429calculateRightPaddingu2uoSUM(layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getTop(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return density.mo336roundToPx0680j_4(this.paddingValues.mo430calculateTopPaddingD9Ej5fM());
    }

    public int hashCode() {
        return this.paddingValues.hashCode();
    }

    @NotNull
    public String toString() {
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        float mo428calculateLeftPaddingu2uoSUM = this.paddingValues.mo428calculateLeftPaddingu2uoSUM(layoutDirection);
        float mo430calculateTopPaddingD9Ej5fM = this.paddingValues.mo430calculateTopPaddingD9Ej5fM();
        float mo429calculateRightPaddingu2uoSUM = this.paddingValues.mo429calculateRightPaddingu2uoSUM(layoutDirection);
        float mo427calculateBottomPaddingD9Ej5fM = this.paddingValues.mo427calculateBottomPaddingD9Ej5fM();
        return "PaddingValues(" + ((Object) Dp.m4060toStringimpl(mo428calculateLeftPaddingu2uoSUM)) + ", " + ((Object) Dp.m4060toStringimpl(mo430calculateTopPaddingD9Ej5fM)) + ", " + ((Object) Dp.m4060toStringimpl(mo429calculateRightPaddingu2uoSUM)) + ", " + ((Object) Dp.m4060toStringimpl(mo427calculateBottomPaddingD9Ej5fM)) + ')';
    }
}
