package androidx.compose.animation;

import androidx.compose.animation.core.FloatDecayAnimationSpec;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SplineBasedFloatDecayAnimationSpec.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class SplineBasedFloatDecayAnimationSpec implements FloatDecayAnimationSpec {
    public static final int $stable = 0;
    @NotNull
    private final FlingCalculator flingCalculator;

    public SplineBasedFloatDecayAnimationSpec(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        this.flingCalculator = new FlingCalculator(SplineBasedFloatDecayAnimationSpec_androidKt.getPlatformFlingScrollFriction(), density);
    }

    private final float flingDistance(float f10) {
        return this.flingCalculator.flingDistance(f10) * Math.signum(f10);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getAbsVelocityThreshold() {
        return 0.0f;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public long getDurationNanos(float f10, float f11) {
        return this.flingCalculator.flingDuration(f11) * 1000000;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getTargetValue(float f10, float f11) {
        return f10 + flingDistance(f11);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getValueFromNanos(long j10, float f10, float f11) {
        return f10 + this.flingCalculator.flingInfo(f11).position(j10 / 1000000);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getVelocityFromNanos(long j10, float f10, float f11) {
        return this.flingCalculator.flingInfo(f11).velocity(j10 / 1000000);
    }
}
