package androidx.compose.ui.input.pointer.util;

import kotlin.Metadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VelocityTracker.kt */
@Metadata
/* loaded from: classes.dex */
public final class ImpulseCalculator {
    private float work;
    private long previousT = Long.MAX_VALUE;
    private float previousX = Float.NaN;
    private boolean initialCondition = true;

    public final void addPosition(long j10, float f10) {
        float kineticEnergyToVelocity;
        if (this.previousT != Long.MAX_VALUE && !Float.isNaN(this.previousX)) {
            if (j10 != this.previousT) {
                kineticEnergyToVelocity = VelocityTrackerKt.kineticEnergyToVelocity(this.work);
                float f11 = (f10 - this.previousX) / (((float) (j10 - this.previousT)) * 0.001f);
                float abs = this.work + ((f11 - kineticEnergyToVelocity) * Math.abs(f11));
                this.work = abs;
                if (this.initialCondition) {
                    this.work = abs * 0.5f;
                    this.initialCondition = false;
                }
                this.previousT = j10;
                this.previousX = f10;
                return;
            }
            this.previousX = f10;
            return;
        }
        this.previousT = j10;
        this.previousX = f10;
    }

    public final float getVelocity() {
        float kineticEnergyToVelocity;
        kineticEnergyToVelocity = VelocityTrackerKt.kineticEnergyToVelocity(this.work);
        return kineticEnergyToVelocity;
    }

    public final void reset() {
        this.work = 0.0f;
        this.previousT = Long.MAX_VALUE;
        this.previousX = Float.NaN;
        this.initialCondition = true;
    }
}
