package androidx.compose.ui.unit;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Density.kt */
@Metadata
/* loaded from: classes.dex */
final class DensityImpl implements Density {
    private final float density;
    private final float fontScale;

    public DensityImpl(float f10, float f11) {
        this.density = f10;
        this.fontScale = f11;
    }

    public static /* synthetic */ DensityImpl copy$default(DensityImpl densityImpl, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = densityImpl.getDensity();
        }
        if ((i10 & 2) != 0) {
            f11 = densityImpl.getFontScale();
        }
        return densityImpl.copy(f10, f11);
    }

    public final float component1() {
        return getDensity();
    }

    public final float component2() {
        return getFontScale();
    }

    @NotNull
    public final DensityImpl copy(float f10, float f11) {
        return new DensityImpl(f10, f11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DensityImpl)) {
            return false;
        }
        DensityImpl densityImpl = (DensityImpl) obj;
        if (Intrinsics.areEqual((Object) Float.valueOf(getDensity()), (Object) Float.valueOf(densityImpl.getDensity())) && Intrinsics.areEqual((Object) Float.valueOf(getFontScale()), (Object) Float.valueOf(densityImpl.getFontScale()))) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.density;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.fontScale;
    }

    public int hashCode() {
        return (Float.hashCode(getDensity()) * 31) + Float.hashCode(getFontScale());
    }

    @NotNull
    public String toString() {
        return "DensityImpl(density=" + getDensity() + ", fontScale=" + getFontScale() + ')';
    }
}
