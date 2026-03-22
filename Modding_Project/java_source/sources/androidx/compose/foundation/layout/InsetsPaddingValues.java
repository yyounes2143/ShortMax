package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WindowInsets.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
final class InsetsPaddingValues implements PaddingValues {
    @NotNull
    private final Density density;
    @NotNull
    private final WindowInsets insets;

    public InsetsPaddingValues(@NotNull WindowInsets insets, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(insets, "insets");
        Intrinsics.checkNotNullParameter(density, "density");
        this.insets = insets;
        this.density = density;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateBottomPadding-D9Ej5fM  reason: not valid java name */
    public float mo427calculateBottomPaddingD9Ej5fM() {
        Density density = this.density;
        return density.mo339toDpu2uoSUM(this.insets.getBottom(density));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateLeftPadding-u2uoSUM  reason: not valid java name */
    public float mo428calculateLeftPaddingu2uoSUM(@NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Density density = this.density;
        return density.mo339toDpu2uoSUM(this.insets.getLeft(density, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateRightPadding-u2uoSUM  reason: not valid java name */
    public float mo429calculateRightPaddingu2uoSUM(@NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Density density = this.density;
        return density.mo339toDpu2uoSUM(this.insets.getRight(density, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateTopPadding-D9Ej5fM  reason: not valid java name */
    public float mo430calculateTopPaddingD9Ej5fM() {
        Density density = this.density;
        return density.mo339toDpu2uoSUM(this.insets.getTop(density));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InsetsPaddingValues)) {
            return false;
        }
        InsetsPaddingValues insetsPaddingValues = (InsetsPaddingValues) obj;
        if (Intrinsics.areEqual(this.insets, insetsPaddingValues.insets) && Intrinsics.areEqual(this.density, insetsPaddingValues.density)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final WindowInsets getInsets() {
        return this.insets;
    }

    public int hashCode() {
        return (this.insets.hashCode() * 31) + this.density.hashCode();
    }

    @NotNull
    public String toString() {
        return "InsetsPaddingValues(insets=" + this.insets + ", density=" + this.density + ')';
    }
}
