package androidx.compose.animation.core;

import kotlin.Metadata;
/* compiled from: SpringSimulation.kt */
@Metadata
/* loaded from: classes.dex */
public final class SpringSimulation {
    private double dampedFreq;
    private float finalPosition;
    private double gammaMinus;
    private double gammaPlus;
    private boolean initialized;
    private double naturalFreq = Math.sqrt(50.0d);
    private float dampingRatio = 1.0f;

    public SpringSimulation(float f10) {
        this.finalPosition = f10;
    }

    private final void init() {
        if (this.initialized) {
            return;
        }
        if (this.finalPosition != SpringSimulationKt.getUNSET()) {
            float f10 = this.dampingRatio;
            double d10 = f10 * f10;
            if (f10 > 1.0f) {
                double d11 = this.naturalFreq;
                double d12 = d10 - 1;
                this.gammaPlus = ((-f10) * d11) + (d11 * Math.sqrt(d12));
                double d13 = this.naturalFreq;
                this.gammaMinus = ((-this.dampingRatio) * d13) - (d13 * Math.sqrt(d12));
            } else if (f10 >= 0.0f && f10 < 1.0f) {
                this.dampedFreq = this.naturalFreq * Math.sqrt(1 - d10);
            }
            this.initialized = true;
            return;
        }
        throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
    }

    public final float getAcceleration(float f10, float f11) {
        float f12 = f10 - this.finalPosition;
        double d10 = this.naturalFreq;
        return (float) (((-(d10 * d10)) * f12) - (((d10 * 2.0d) * this.dampingRatio) * f11));
    }

    public final float getDampingRatio() {
        return this.dampingRatio;
    }

    public final float getFinalPosition() {
        return this.finalPosition;
    }

    public final float getStiffness() {
        double d10 = this.naturalFreq;
        return (float) (d10 * d10);
    }

    public final void setDampingRatio(float f10) {
        if (f10 >= 0.0f) {
            this.dampingRatio = f10;
            this.initialized = false;
            return;
        }
        throw new IllegalArgumentException("Damping ratio must be non-negative");
    }

    public final void setFinalPosition(float f10) {
        this.finalPosition = f10;
    }

    public final void setStiffness(float f10) {
        if (getStiffness() > 0.0f) {
            this.naturalFreq = Math.sqrt(f10);
            this.initialized = false;
            return;
        }
        throw new IllegalArgumentException("Spring stiffness constant must be positive.");
    }

    /* renamed from: updateValues-IJZedt4$animation_core_release  reason: not valid java name */
    public final long m154updateValuesIJZedt4$animation_core_release(float f10, float f11, long j10) {
        float f12;
        double cos;
        double d10;
        init();
        float f13 = f10 - this.finalPosition;
        double d11 = j10 / 1000.0d;
        float f14 = this.dampingRatio;
        if (f14 > 1.0f) {
            double d12 = f13;
            double d13 = this.gammaMinus;
            double d14 = f11;
            double d15 = this.gammaPlus;
            double d16 = d12 - (((d13 * d12) - d14) / (d13 - d15));
            double d17 = ((d12 * d13) - d14) / (d13 - d15);
            d10 = (Math.exp(d13 * d11) * d16) + (Math.exp(this.gammaPlus * d11) * d17);
            double d18 = this.gammaMinus;
            double exp = d16 * d18 * Math.exp(d18 * d11);
            double d19 = this.gammaPlus;
            cos = exp + (d17 * d19 * Math.exp(d19 * d11));
        } else if (f14 == 1.0f) {
            double d20 = this.naturalFreq;
            double d21 = f13;
            double d22 = f11 + (d20 * d21);
            double d23 = d21 + (d22 * d11);
            double exp2 = Math.exp((-d20) * d11) * d23;
            double exp3 = d23 * Math.exp((-this.naturalFreq) * d11);
            double d24 = this.naturalFreq;
            cos = (exp3 * (-d24)) + (d22 * Math.exp((-d24) * d11));
            d10 = exp2;
        } else {
            double d25 = this.naturalFreq;
            double d26 = f13;
            double d27 = (1 / this.dampedFreq) * ((f14 * d25 * d26) + f11);
            double exp4 = Math.exp((-f14) * d25 * d11) * ((Math.cos(this.dampedFreq * d11) * d26) + (Math.sin(this.dampedFreq * d11) * d27));
            double d28 = this.naturalFreq;
            double d29 = (-d28) * exp4 * this.dampingRatio;
            double exp5 = Math.exp((-f12) * d28 * d11);
            double d30 = this.dampedFreq;
            double sin = (-d30) * d26 * Math.sin(d30 * d11);
            double d31 = this.dampedFreq;
            cos = d29 + (exp5 * (sin + (d27 * d31 * Math.cos(d31 * d11))));
            d10 = exp4;
        }
        return SpringSimulationKt.Motion((float) (d10 + this.finalPosition), (float) cos);
    }
}
