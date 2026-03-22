package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Swipeable.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class ResistanceConfig {
    private final float basis;
    private final float factorAtMax;
    private final float factorAtMin;

    public ResistanceConfig(float f10, float f11, float f12) {
        this.basis = f10;
        this.factorAtMin = f11;
        this.factorAtMax = f12;
    }

    public final float computeResistance(float f10) {
        float f11;
        if (f10 < 0.0f) {
            f11 = this.factorAtMin;
        } else {
            f11 = this.factorAtMax;
        }
        if (f11 == 0.0f) {
            return 0.0f;
        }
        return (this.basis / f11) * ((float) Math.sin((e.m(f10 / this.basis, -1.0f, 1.0f) * 3.1415927f) / 2));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResistanceConfig)) {
            return false;
        }
        ResistanceConfig resistanceConfig = (ResistanceConfig) obj;
        if (this.basis == resistanceConfig.basis && this.factorAtMin == resistanceConfig.factorAtMin && this.factorAtMax == resistanceConfig.factorAtMax) {
            return true;
        }
        return false;
    }

    public final float getBasis() {
        return this.basis;
    }

    public final float getFactorAtMax() {
        return this.factorAtMax;
    }

    public final float getFactorAtMin() {
        return this.factorAtMin;
    }

    public int hashCode() {
        return (((Float.hashCode(this.basis) * 31) + Float.hashCode(this.factorAtMin)) * 31) + Float.hashCode(this.factorAtMax);
    }

    @NotNull
    public String toString() {
        return "ResistanceConfig(basis=" + this.basis + ", factorAtMin=" + this.factorAtMin + ", factorAtMax=" + this.factorAtMax + ')';
    }

    public /* synthetic */ ResistanceConfig(float f10, float f11, float f12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, (i10 & 2) != 0 ? 10.0f : f11, (i10 & 4) != 0 ? 10.0f : f12);
    }
}
