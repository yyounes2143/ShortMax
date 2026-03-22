package androidx.compose.animation;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FlingCalculator.kt */
@Metadata
/* loaded from: classes.dex */
public final class FlingCalculator {
    @NotNull
    private final Density density;
    private final float friction;
    private final float magicPhysicalCoefficient;

    /* compiled from: FlingCalculator.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class FlingInfo {
        public static final int $stable = 0;
        private final float distance;
        private final long duration;
        private final float initialVelocity;

        public FlingInfo(float f10, float f11, long j10) {
            this.initialVelocity = f10;
            this.distance = f11;
            this.duration = j10;
        }

        public static /* synthetic */ FlingInfo copy$default(FlingInfo flingInfo, float f10, float f11, long j10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = flingInfo.initialVelocity;
            }
            if ((i10 & 2) != 0) {
                f11 = flingInfo.distance;
            }
            if ((i10 & 4) != 0) {
                j10 = flingInfo.duration;
            }
            return flingInfo.copy(f10, f11, j10);
        }

        public final float component1() {
            return this.initialVelocity;
        }

        public final float component2() {
            return this.distance;
        }

        public final long component3() {
            return this.duration;
        }

        @NotNull
        public final FlingInfo copy(float f10, float f11, long j10) {
            return new FlingInfo(f10, f11, j10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlingInfo)) {
                return false;
            }
            FlingInfo flingInfo = (FlingInfo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.initialVelocity), (Object) Float.valueOf(flingInfo.initialVelocity)) && Intrinsics.areEqual((Object) Float.valueOf(this.distance), (Object) Float.valueOf(flingInfo.distance)) && this.duration == flingInfo.duration) {
                return true;
            }
            return false;
        }

        public final float getDistance() {
            return this.distance;
        }

        public final long getDuration() {
            return this.duration;
        }

        public final float getInitialVelocity() {
            return this.initialVelocity;
        }

        public int hashCode() {
            return (((Float.hashCode(this.initialVelocity) * 31) + Float.hashCode(this.distance)) * 31) + Long.hashCode(this.duration);
        }

        public final float position(long j10) {
            float f10;
            long j11 = this.duration;
            if (j11 > 0) {
                f10 = ((float) j10) / ((float) j11);
            } else {
                f10 = 1.0f;
            }
            return this.distance * Math.signum(this.initialVelocity) * AndroidFlingSpline.INSTANCE.flingPosition(f10).getDistanceCoefficient();
        }

        @NotNull
        public String toString() {
            return "FlingInfo(initialVelocity=" + this.initialVelocity + ", distance=" + this.distance + ", duration=" + this.duration + ')';
        }

        public final float velocity(long j10) {
            float f10;
            long j11 = this.duration;
            if (j11 > 0) {
                f10 = ((float) j10) / ((float) j11);
            } else {
                f10 = 1.0f;
            }
            return (((AndroidFlingSpline.INSTANCE.flingPosition(f10).getVelocityCoefficient() * Math.signum(this.initialVelocity)) * this.distance) / ((float) this.duration)) * 1000.0f;
        }
    }

    public FlingCalculator(float f10, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        this.friction = f10;
        this.density = density;
        this.magicPhysicalCoefficient = computeDeceleration(density);
    }

    private final float computeDeceleration(Density density) {
        float computeDeceleration;
        computeDeceleration = FlingCalculatorKt.computeDeceleration(0.84f, density.getDensity());
        return computeDeceleration;
    }

    private final double getSplineDeceleration(float f10) {
        return AndroidFlingSpline.INSTANCE.deceleration(f10, this.friction * this.magicPhysicalCoefficient);
    }

    public final float flingDistance(float f10) {
        float f11;
        float f12;
        double splineDeceleration = getSplineDeceleration(f10);
        f11 = FlingCalculatorKt.DecelerationRate;
        double d10 = this.friction * this.magicPhysicalCoefficient;
        f12 = FlingCalculatorKt.DecelerationRate;
        return (float) (d10 * Math.exp((f12 / (f11 - 1.0d)) * splineDeceleration));
    }

    public final long flingDuration(float f10) {
        float f11;
        double splineDeceleration = getSplineDeceleration(f10);
        f11 = FlingCalculatorKt.DecelerationRate;
        return (long) (Math.exp(splineDeceleration / (f11 - 1.0d)) * 1000.0d);
    }

    @NotNull
    public final FlingInfo flingInfo(float f10) {
        float f11;
        float f12;
        double splineDeceleration = getSplineDeceleration(f10);
        f11 = FlingCalculatorKt.DecelerationRate;
        double d10 = f11 - 1.0d;
        f12 = FlingCalculatorKt.DecelerationRate;
        return new FlingInfo(f10, (float) (this.friction * this.magicPhysicalCoefficient * Math.exp((f12 / d10) * splineDeceleration)), (long) (Math.exp(splineDeceleration / d10) * 1000.0d));
    }

    @NotNull
    public final Density getDensity() {
        return this.density;
    }
}
