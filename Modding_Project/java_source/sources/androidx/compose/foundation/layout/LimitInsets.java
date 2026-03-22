package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WindowInsets.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
final class LimitInsets implements WindowInsets {
    @NotNull
    private final WindowInsets insets;
    private final int sides;

    public /* synthetic */ LimitInsets(WindowInsets windowInsets, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(windowInsets, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LimitInsets)) {
            return false;
        }
        LimitInsets limitInsets = (LimitInsets) obj;
        if (Intrinsics.areEqual(this.insets, limitInsets.insets) && WindowInsetsSides.m514equalsimpl0(this.sides, limitInsets.sides)) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getBottom(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        if (WindowInsetsSides.m515hasAnybkgdKaI$foundation_layout_release(this.sides, WindowInsetsSides.Companion.m526getBottomJoeWqyM())) {
            return this.insets.getBottom(density);
        }
        return 0;
    }

    @NotNull
    public final WindowInsets getInsets() {
        return this.insets;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getLeft(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        int m523getAllowLeftInRtlJoeWqyM$foundation_layout_release;
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        if (layoutDirection == LayoutDirection.Ltr) {
            m523getAllowLeftInRtlJoeWqyM$foundation_layout_release = WindowInsetsSides.Companion.m522getAllowLeftInLtrJoeWqyM$foundation_layout_release();
        } else {
            m523getAllowLeftInRtlJoeWqyM$foundation_layout_release = WindowInsetsSides.Companion.m523getAllowLeftInRtlJoeWqyM$foundation_layout_release();
        }
        if (WindowInsetsSides.m515hasAnybkgdKaI$foundation_layout_release(this.sides, m523getAllowLeftInRtlJoeWqyM$foundation_layout_release)) {
            return this.insets.getLeft(density, layoutDirection);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getRight(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        int m525getAllowRightInRtlJoeWqyM$foundation_layout_release;
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        if (layoutDirection == LayoutDirection.Ltr) {
            m525getAllowRightInRtlJoeWqyM$foundation_layout_release = WindowInsetsSides.Companion.m524getAllowRightInLtrJoeWqyM$foundation_layout_release();
        } else {
            m525getAllowRightInRtlJoeWqyM$foundation_layout_release = WindowInsetsSides.Companion.m525getAllowRightInRtlJoeWqyM$foundation_layout_release();
        }
        if (WindowInsetsSides.m515hasAnybkgdKaI$foundation_layout_release(this.sides, m525getAllowRightInRtlJoeWqyM$foundation_layout_release)) {
            return this.insets.getRight(density, layoutDirection);
        }
        return 0;
    }

    /* renamed from: getSides-JoeWqyM  reason: not valid java name */
    public final int m432getSidesJoeWqyM() {
        return this.sides;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getTop(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        if (WindowInsetsSides.m515hasAnybkgdKaI$foundation_layout_release(this.sides, WindowInsetsSides.Companion.m532getTopJoeWqyM())) {
            return this.insets.getTop(density);
        }
        return 0;
    }

    public int hashCode() {
        return (this.insets.hashCode() * 31) + WindowInsetsSides.m516hashCodeimpl(this.sides);
    }

    @NotNull
    public String toString() {
        return '(' + this.insets + " only " + ((Object) WindowInsetsSides.m518toStringimpl(this.sides)) + ')';
    }

    private LimitInsets(WindowInsets windowInsets, int i10) {
        this.insets = windowInsets;
        this.sides = i10;
    }
}
