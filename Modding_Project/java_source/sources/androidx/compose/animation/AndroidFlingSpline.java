package androidx.compose.animation;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SplineBasedDecay.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidFlingSpline {
    @NotNull
    public static final AndroidFlingSpline INSTANCE = new AndroidFlingSpline();
    private static final int NbSamples = 100;
    @NotNull
    private static final float[] SplinePositions;
    @NotNull
    private static final float[] SplineTimes;

    /* compiled from: SplineBasedDecay.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class FlingResult {
        public static final int $stable = 0;
        private final float distanceCoefficient;
        private final float velocityCoefficient;

        public FlingResult(float f10, float f11) {
            this.distanceCoefficient = f10;
            this.velocityCoefficient = f11;
        }

        public static /* synthetic */ FlingResult copy$default(FlingResult flingResult, float f10, float f11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = flingResult.distanceCoefficient;
            }
            if ((i10 & 2) != 0) {
                f11 = flingResult.velocityCoefficient;
            }
            return flingResult.copy(f10, f11);
        }

        public final float component1() {
            return this.distanceCoefficient;
        }

        public final float component2() {
            return this.velocityCoefficient;
        }

        @NotNull
        public final FlingResult copy(float f10, float f11) {
            return new FlingResult(f10, f11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlingResult)) {
                return false;
            }
            FlingResult flingResult = (FlingResult) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.distanceCoefficient), (Object) Float.valueOf(flingResult.distanceCoefficient)) && Intrinsics.areEqual((Object) Float.valueOf(this.velocityCoefficient), (Object) Float.valueOf(flingResult.velocityCoefficient))) {
                return true;
            }
            return false;
        }

        public final float getDistanceCoefficient() {
            return this.distanceCoefficient;
        }

        public final float getVelocityCoefficient() {
            return this.velocityCoefficient;
        }

        public int hashCode() {
            return (Float.hashCode(this.distanceCoefficient) * 31) + Float.hashCode(this.velocityCoefficient);
        }

        @NotNull
        public String toString() {
            return "FlingResult(distanceCoefficient=" + this.distanceCoefficient + ", velocityCoefficient=" + this.velocityCoefficient + ')';
        }
    }

    static {
        float[] fArr = new float[101];
        SplinePositions = fArr;
        float[] fArr2 = new float[101];
        SplineTimes = fArr2;
        SplineBasedDecayKt.computeSplineInfo(fArr, fArr2, 100);
    }

    private AndroidFlingSpline() {
    }

    public final double deceleration(float f10, float f11) {
        return Math.log((Math.abs(f10) * 0.35f) / f11);
    }

    @NotNull
    public final FlingResult flingPosition(float f10) {
        float f11;
        float f12;
        float f13 = 100;
        int i10 = (int) (f13 * f10);
        if (i10 < 100) {
            float f14 = i10 / f13;
            int i11 = i10 + 1;
            float f15 = i11 / f13;
            float[] fArr = SplinePositions;
            float f16 = fArr[i10];
            f12 = (fArr[i11] - f16) / (f15 - f14);
            f11 = f16 + ((f10 - f14) * f12);
        } else {
            f11 = 1.0f;
            f12 = 0.0f;
        }
        return new FlingResult(f11, f12);
    }
}
