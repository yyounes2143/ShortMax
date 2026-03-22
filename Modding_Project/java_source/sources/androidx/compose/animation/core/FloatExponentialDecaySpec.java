package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: FloatDecayAnimationSpec.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class FloatExponentialDecaySpec implements FloatDecayAnimationSpec {
    public static final int $stable = 0;
    private final float absVelocityThreshold;
    private final float friction;

    public FloatExponentialDecaySpec() {
        this(0.0f, 0.0f, 3, null);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getAbsVelocityThreshold() {
        return this.absVelocityThreshold;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public long getDurationNanos(float f10, float f11) {
        return ((((float) Math.log(getAbsVelocityThreshold() / Math.abs(f11))) * 1000.0f) / this.friction) * 1000000;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getTargetValue(float f10, float f11) {
        if (Math.abs(f11) <= getAbsVelocityThreshold()) {
            return f10;
        }
        double log = Math.log(Math.abs(getAbsVelocityThreshold() / f11));
        float f12 = this.friction;
        return (f10 - (f11 / f12)) + ((f11 / f12) * ((float) Math.exp((f12 * ((log / f12) * 1000)) / 1000.0f)));
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getValueFromNanos(long j10, float f10, float f11) {
        float f12 = this.friction;
        return (f10 - (f11 / f12)) + ((f11 / f12) * ((float) Math.exp((f12 * ((float) (j10 / 1000000))) / 1000.0f)));
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getVelocityFromNanos(long j10, float f10, float f11) {
        return f11 * ((float) Math.exp((((float) (j10 / 1000000)) / 1000.0f) * this.friction));
    }

    public FloatExponentialDecaySpec(float f10, float f11) {
        this.absVelocityThreshold = Math.max(1.0E-7f, Math.abs(f11));
        this.friction = Math.max(1.0E-4f, f10) * (-4.2f);
    }

    public /* synthetic */ FloatExponentialDecaySpec(float f10, float f11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 1.0f : f10, (i10 & 2) != 0 ? 0.1f : f11);
    }
}
