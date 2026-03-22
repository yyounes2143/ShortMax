package androidx.compose.foundation.layout;

import androidx.compose.animation.core.FloatDecayAnimationSpec;
import androidx.compose.foundation.layout.AndroidFlingSpline;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WindowInsetsConnection.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SplineBasedFloatDecayAnimationSpec implements FloatDecayAnimationSpec {
    private final float magicPhysicalCoefficient;

    public SplineBasedFloatDecayAnimationSpec(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        this.magicPhysicalCoefficient = density.getDensity() * 386.0878f * 160.0f * 0.84f;
    }

    private final double getSplineDeceleration(float f10) {
        float f11;
        AndroidFlingSpline androidFlingSpline = AndroidFlingSpline.INSTANCE;
        f11 = WindowInsetsConnection_androidKt.PlatformFlingScrollFriction;
        return androidFlingSpline.deceleration(f10, f11 * this.magicPhysicalCoefficient);
    }

    public final float flingDistance(float f10) {
        float f11;
        double d10;
        double d11;
        double splineDeceleration = getSplineDeceleration(f10);
        f11 = WindowInsetsConnection_androidKt.PlatformFlingScrollFriction;
        d10 = WindowInsetsConnection_androidKt.DecelerationRate;
        d11 = WindowInsetsConnection_androidKt.DecelMinusOne;
        return ((float) (f11 * this.magicPhysicalCoefficient * Math.exp((d10 / d11) * splineDeceleration))) * Math.signum(f10);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getAbsVelocityThreshold() {
        return 0.0f;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public long getDurationNanos(float f10, float f11) {
        double d10;
        double splineDeceleration = getSplineDeceleration(f11);
        d10 = WindowInsetsConnection_androidKt.DecelMinusOne;
        return (long) (Math.exp(splineDeceleration / d10) * 1.0E9d);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getTargetValue(float f10, float f11) {
        return f10 + flingDistance(f11);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getValueFromNanos(long j10, float f10, float f11) {
        float f12;
        long durationNanos = getDurationNanos(0.0f, f11);
        if (durationNanos > 0) {
            f12 = ((float) j10) / ((float) durationNanos);
        } else {
            f12 = 1.0f;
        }
        return f10 + (flingDistance(f11) * AndroidFlingSpline.FlingResult.m387getDistanceCoefficientimpl(AndroidFlingSpline.INSTANCE.m382flingPositionLfoxSSI(f12)));
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float getVelocityFromNanos(long j10, float f10, float f11) {
        float f12;
        long durationNanos = getDurationNanos(0.0f, f11);
        if (durationNanos > 0) {
            f12 = ((float) j10) / ((float) durationNanos);
        } else {
            f12 = 1.0f;
        }
        return ((AndroidFlingSpline.FlingResult.m388getVelocityCoefficientimpl(AndroidFlingSpline.INSTANCE.m382flingPositionLfoxSSI(f12)) * flingDistance(f11)) / ((float) durationNanos)) * 1.0E9f;
    }
}
