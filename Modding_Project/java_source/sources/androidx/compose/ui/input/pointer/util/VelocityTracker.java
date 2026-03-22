package androidx.compose.ui.input.pointer.util;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.unit.VelocityKt;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.n;
import org.jetbrains.annotations.NotNull;
/* compiled from: VelocityTracker.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class VelocityTracker {
    public static final int $stable = 8;
    private int index;
    @NotNull
    private final PointAtTime[] samples;
    private final boolean useImpulse;

    public VelocityTracker() {
        PointAtTime[] pointAtTimeArr = new PointAtTime[20];
        for (int i10 = 0; i10 < 20; i10++) {
            pointAtTimeArr[i10] = null;
        }
        this.samples = pointAtTimeArr;
        this.useImpulse = true;
    }

    /* renamed from: getImpulseVelocity-9UxMQ8M  reason: not valid java name */
    private final long m3309getImpulseVelocity9UxMQ8M() {
        PointAtTime pointAtTime = this.samples[this.index];
        if (pointAtTime == null) {
            return VelocityKt.Velocity(0.0f, 0.0f);
        }
        ImpulseCalculator impulseCalculator = new ImpulseCalculator();
        ImpulseCalculator impulseCalculator2 = new ImpulseCalculator();
        int i10 = this.index;
        int i11 = 0;
        do {
            i10 = (i10 + 1) % 20;
            PointAtTime pointAtTime2 = this.samples[i10];
            if (pointAtTime2 != null) {
                long time = pointAtTime.getTime() - pointAtTime2.getTime();
                long abs = Math.abs(pointAtTime2.getTime() - pointAtTime.getTime());
                if (time <= 100) {
                    if (abs > 40) {
                        impulseCalculator.reset();
                        impulseCalculator2.reset();
                    }
                    long j10 = -time;
                    impulseCalculator.addPosition(j10, Offset.m1606getXimpl(pointAtTime2.m3302getPointF1C5BW0()));
                    impulseCalculator2.addPosition(j10, Offset.m1607getYimpl(pointAtTime2.m3302getPointF1C5BW0()));
                    i11++;
                }
            }
            if (i10 == this.index) {
                break;
            }
        } while (i11 < 20);
        if (i11 < 3) {
            return VelocityKt.Velocity(0.0f, 0.0f);
        }
        return VelocityKt.Velocity(impulseCalculator.getVelocity(), impulseCalculator2.getVelocity());
    }

    private final VelocityEstimate getLsq2VelocityEstimate() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int i10 = this.index;
        PointAtTime pointAtTime = this.samples[i10];
        if (pointAtTime == null) {
            return VelocityEstimate.Companion.getNone();
        }
        int i11 = 0;
        PointAtTime pointAtTime2 = pointAtTime;
        while (true) {
            PointAtTime pointAtTime3 = this.samples[i10];
            if (pointAtTime3 != null) {
                float time = (float) (pointAtTime.getTime() - pointAtTime3.getTime());
                float abs = (float) Math.abs(pointAtTime3.getTime() - pointAtTime2.getTime());
                if (time > 100.0f || abs > 40.0f) {
                    break;
                }
                long m3302getPointF1C5BW0 = pointAtTime3.m3302getPointF1C5BW0();
                arrayList.add(Float.valueOf(Offset.m1606getXimpl(m3302getPointF1C5BW0)));
                arrayList2.add(Float.valueOf(Offset.m1607getYimpl(m3302getPointF1C5BW0)));
                arrayList3.add(Float.valueOf(-time));
                if (i10 == 0) {
                    i10 = 20;
                }
                i10--;
                i11++;
                if (i11 >= 20) {
                    pointAtTime2 = pointAtTime3;
                    break;
                }
                pointAtTime2 = pointAtTime3;
            } else {
                break;
            }
        }
        if (i11 >= 3) {
            try {
                PolynomialFit polyFitLeastSquares = VelocityTrackerKt.polyFitLeastSquares(arrayList3, arrayList, 2);
                PolynomialFit polyFitLeastSquares2 = VelocityTrackerKt.polyFitLeastSquares(arrayList3, arrayList2, 2);
                float f10 = 1000;
                return new VelocityEstimate(OffsetKt.Offset(polyFitLeastSquares.getCoefficients().get(1).floatValue() * f10, polyFitLeastSquares2.getCoefficients().get(1).floatValue() * f10), polyFitLeastSquares.getConfidence() * polyFitLeastSquares2.getConfidence(), pointAtTime.getTime() - pointAtTime2.getTime(), Offset.m1610minusMKHz9U(pointAtTime.m3302getPointF1C5BW0(), pointAtTime2.m3302getPointF1C5BW0()), null);
            } catch (IllegalArgumentException unused) {
                return VelocityEstimate.Companion.getNone();
            }
        }
        return new VelocityEstimate(Offset.Companion.m1622getZeroF1C5BW0(), 1.0f, pointAtTime.getTime() - pointAtTime2.getTime(), Offset.m1610minusMKHz9U(pointAtTime.m3302getPointF1C5BW0(), pointAtTime2.m3302getPointF1C5BW0()), null);
    }

    /* renamed from: addPosition-Uv8p0NA  reason: not valid java name */
    public final void m3310addPositionUv8p0NA(long j10, long j11) {
        int i10 = (this.index + 1) % 20;
        this.index = i10;
        this.samples[i10] = new PointAtTime(j11, j10, null);
    }

    /* renamed from: calculateVelocity-9UxMQ8M  reason: not valid java name */
    public final long m3311calculateVelocity9UxMQ8M() {
        if (this.useImpulse) {
            return m3309getImpulseVelocity9UxMQ8M();
        }
        long m3308getPixelsPerSecondF1C5BW0 = getLsq2VelocityEstimate().m3308getPixelsPerSecondF1C5BW0();
        return VelocityKt.Velocity(Offset.m1606getXimpl(m3308getPixelsPerSecondF1C5BW0), Offset.m1607getYimpl(m3308getPixelsPerSecondF1C5BW0));
    }

    public final void resetTracking() {
        n.H(this.samples, null, 0, 0, 6, null);
    }
}
