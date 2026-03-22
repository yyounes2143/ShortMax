package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerInputChange;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VelocityTracker.kt */
@Metadata
/* loaded from: classes.dex */
public final class VelocityTrackerKt {
    private static final int AssumePointerMoveStoppedMilliseconds = 40;
    private static final float DefaultWeight = 1.0f;
    private static final int HistorySize = 20;
    private static final int HorizonMilliseconds = 100;
    private static final int MinSampleSize = 3;

    public static final void addPointerInputChange(@NotNull VelocityTracker velocityTracker, @NotNull PointerInputChange event) {
        Intrinsics.checkNotNullParameter(velocityTracker, "<this>");
        Intrinsics.checkNotNullParameter(event, "event");
        List<HistoricalChange> historical = event.getHistorical();
        int size = historical.size();
        for (int i10 = 0; i10 < size; i10++) {
            HistoricalChange historicalChange = historical.get(i10);
            velocityTracker.m3310addPositionUv8p0NA(historicalChange.getUptimeMillis(), historicalChange.m3140getPositionF1C5BW0());
        }
        velocityTracker.m3310addPositionUv8p0NA(event.getUptimeMillis(), event.m3208getPositionF1C5BW0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float kineticEnergyToVelocity(float f10) {
        return Math.signum(f10) * ((float) Math.sqrt(2 * Math.abs(f10)));
    }

    @NotNull
    public static final PolynomialFit polyFitLeastSquares(@NotNull List<Float> x10, @NotNull List<Float> y10, int i10) {
        int i11;
        float f10;
        float times;
        Intrinsics.checkNotNullParameter(x10, "x");
        Intrinsics.checkNotNullParameter(y10, "y");
        if (i10 >= 1) {
            if (x10.size() == y10.size()) {
                if (!x10.isEmpty()) {
                    if (i10 >= x10.size()) {
                        i11 = x10.size() - 1;
                    } else {
                        i11 = i10;
                    }
                    int i12 = i10 + 1;
                    ArrayList arrayList = new ArrayList(i12);
                    for (int i13 = 0; i13 < i12; i13++) {
                        arrayList.add(Float.valueOf(0.0f));
                    }
                    int size = x10.size();
                    int i14 = i11 + 1;
                    Matrix matrix = new Matrix(i14, size);
                    int i15 = 0;
                    while (true) {
                        f10 = 1.0f;
                        if (i15 >= size) {
                            break;
                        }
                        matrix.set(0, i15, 1.0f);
                        for (int i16 = 1; i16 < i14; i16++) {
                            matrix.set(i16, i15, matrix.get(i16 - 1, i15) * x10.get(i15).floatValue());
                        }
                        i15++;
                    }
                    Matrix matrix2 = new Matrix(i14, size);
                    Matrix matrix3 = new Matrix(i14, i14);
                    for (int i17 = 0; i17 < i14; i17++) {
                        for (int i18 = 0; i18 < size; i18++) {
                            matrix2.set(i17, i18, matrix.get(i17, i18));
                        }
                        for (int i19 = 0; i19 < i17; i19++) {
                            float times2 = matrix2.getRow(i17).times(matrix2.getRow(i19));
                            for (int i20 = 0; i20 < size; i20++) {
                                matrix2.set(i17, i20, matrix2.get(i17, i20) - (matrix2.get(i19, i20) * times2));
                            }
                        }
                        float norm = matrix2.getRow(i17).norm();
                        if (norm >= 1.0E-6d) {
                            float f11 = 1.0f / norm;
                            for (int i21 = 0; i21 < size; i21++) {
                                matrix2.set(i17, i21, matrix2.get(i17, i21) * f11);
                            }
                            for (int i22 = 0; i22 < i14; i22++) {
                                if (i22 < i17) {
                                    times = 0.0f;
                                } else {
                                    times = matrix2.getRow(i17).times(matrix.getRow(i22));
                                }
                                matrix3.set(i17, i22, times);
                            }
                        } else {
                            throw new IllegalArgumentException("Vectors are linearly dependent or zero so no solution. TODO(shepshapard), actually determine what this means");
                        }
                    }
                    Vector vector = new Vector(size);
                    for (int i23 = 0; i23 < size; i23++) {
                        vector.set(i23, y10.get(i23).floatValue() * 1.0f);
                    }
                    for (int i24 = i11; -1 < i24; i24--) {
                        arrayList.set(i24, Float.valueOf(matrix2.getRow(i24).times(vector)));
                        int i25 = i24 + 1;
                        if (i25 <= i11) {
                            int i26 = i11;
                            while (true) {
                                arrayList.set(i24, Float.valueOf(((Number) arrayList.get(i24)).floatValue() - (matrix3.get(i24, i26) * ((Number) arrayList.get(i26)).floatValue())));
                                if (i26 != i25) {
                                    i26--;
                                }
                            }
                        }
                        arrayList.set(i24, Float.valueOf(((Number) arrayList.get(i24)).floatValue() / matrix3.get(i24, i24)));
                    }
                    float f12 = 0.0f;
                    for (int i27 = 0; i27 < size; i27++) {
                        f12 += y10.get(i27).floatValue();
                    }
                    float f13 = f12 / size;
                    float f14 = 0.0f;
                    float f15 = 0.0f;
                    for (int i28 = 0; i28 < size; i28++) {
                        float floatValue = y10.get(i28).floatValue() - ((Number) arrayList.get(0)).floatValue();
                        float f16 = 1.0f;
                        for (int i29 = 1; i29 < i14; i29++) {
                            f16 *= x10.get(i28).floatValue();
                            floatValue -= ((Number) arrayList.get(i29)).floatValue() * f16;
                        }
                        f14 += floatValue * 1.0f * floatValue;
                        float floatValue2 = y10.get(i28).floatValue() - f13;
                        f15 += floatValue2 * 1.0f * floatValue2;
                    }
                    if (f15 > 1.0E-6f) {
                        f10 = 1.0f - (f14 / f15);
                    }
                    return new PolynomialFit(arrayList, f10);
                }
                throw new IllegalArgumentException("At least one point must be provided");
            }
            throw new IllegalArgumentException("x and y must be the same length");
        }
        throw new IllegalArgumentException("The degree must be at positive integer");
    }
}
