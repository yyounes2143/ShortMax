package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: SpringEstimation.kt */
@Metadata
/* loaded from: classes.dex */
public final class SpringEstimationKt {
    public static final long estimateAnimationDurationMillis(float f10, float f11, float f12, float f13, float f14) {
        return estimateAnimationDurationMillis(f10, f11, f12, f13, f14);
    }

    private static final double estimateCriticallyDamped(Pair<ComplexDouble, ComplexDouble> pair, final double d10, double d11, double d12) {
        boolean z10;
        double d13;
        Function1<Double, Double> function1;
        Function1<Double, Double> function12;
        double d14;
        int i10;
        double d15 = d12;
        final double real = pair.e().getReal();
        double d16 = real * d10;
        final double d17 = d11 - d16;
        double log = Math.log(Math.abs(d15 / d10)) / real;
        double estimateCriticallyDamped$t2Iterate = estimateCriticallyDamped$t2Iterate(Math.log(Math.abs(d15 / d17)), real) / real;
        boolean z11 = true;
        if (!Double.isInfinite(log) && !Double.isNaN(log)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            d13 = estimateCriticallyDamped$t2Iterate;
        } else {
            if (Double.isInfinite(estimateCriticallyDamped$t2Iterate) || Double.isNaN(estimateCriticallyDamped$t2Iterate)) {
                z11 = false;
            }
            if (z11) {
                log = Math.max(log, estimateCriticallyDamped$t2Iterate);
            }
            d13 = log;
        }
        double d18 = (-(d16 + d17)) / (real * d17);
        if (!Double.isNaN(d18) && d18 > 0.0d) {
            if (d18 > 0.0d && (-estimateCriticallyDamped$xInflection(d10, real, d18, d17)) < d15) {
                if (d17 < 0.0d && d10 > 0.0d) {
                    d13 = 0.0d;
                }
            } else {
                d13 = (-(2.0d / real)) - (d10 / d17);
                final double d19 = d15;
                function1 = new Function1<Double, Double>() { // from class: androidx.compose.animation.core.SpringEstimationKt$estimateCriticallyDamped$fn$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @NotNull
                    public final Double invoke(double d20) {
                        return Double.valueOf(((d10 + (d17 * d20)) * Math.exp(real * d20)) + d19);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Double invoke(Double d20) {
                        return invoke(d20.doubleValue());
                    }
                };
                function12 = new Function1<Double, Double>() { // from class: androidx.compose.animation.core.SpringEstimationKt$estimateCriticallyDamped$fnPrime$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @NotNull
                    public final Double invoke(double d20) {
                        double d21 = d17;
                        double d22 = real;
                        return Double.valueOf(((d21 * ((d22 * d20) + 1)) + (d10 * d22)) * Math.exp(d22 * d20));
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Double invoke(Double d20) {
                        return invoke(d20.doubleValue());
                    }
                };
                d14 = Double.MAX_VALUE;
                i10 = 0;
                while (d14 > 0.001d && i10 < 100) {
                    i10++;
                    double doubleValue = d13 - (function1.invoke(Double.valueOf(d13)).doubleValue() / function12.invoke(Double.valueOf(d13)).doubleValue());
                    double abs = Math.abs(d13 - doubleValue);
                    d13 = doubleValue;
                    d14 = abs;
                }
                return d13;
            }
        }
        d15 = -d15;
        final double d192 = d15;
        function1 = new Function1<Double, Double>() { // from class: androidx.compose.animation.core.SpringEstimationKt$estimateCriticallyDamped$fn$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            public final Double invoke(double d20) {
                return Double.valueOf(((d10 + (d17 * d20)) * Math.exp(real * d20)) + d192);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Double invoke(Double d20) {
                return invoke(d20.doubleValue());
            }
        };
        function12 = new Function1<Double, Double>() { // from class: androidx.compose.animation.core.SpringEstimationKt$estimateCriticallyDamped$fnPrime$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            public final Double invoke(double d20) {
                double d21 = d17;
                double d22 = real;
                return Double.valueOf(((d21 * ((d22 * d20) + 1)) + (d10 * d22)) * Math.exp(d22 * d20));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Double invoke(Double d20) {
                return invoke(d20.doubleValue());
            }
        };
        d14 = Double.MAX_VALUE;
        i10 = 0;
        while (d14 > 0.001d) {
            i10++;
            double doubleValue2 = d13 - (function1.invoke(Double.valueOf(d13)).doubleValue() / function12.invoke(Double.valueOf(d13)).doubleValue());
            double abs2 = Math.abs(d13 - doubleValue2);
            d13 = doubleValue2;
            d14 = abs2;
        }
        return d13;
    }

    private static final double estimateCriticallyDamped$t2Iterate(double d10, double d11) {
        double d12 = d10;
        for (int i10 = 0; i10 < 6; i10++) {
            d12 = d10 - Math.log(Math.abs(d12 / d11));
        }
        return d12;
    }

    private static final double estimateCriticallyDamped$xInflection(double d10, double d11, double d12, double d13) {
        double d14 = d11 * d12;
        return (d10 * Math.exp(d14)) + (d13 * d12 * Math.exp(d14));
    }

    private static final long estimateDurationInternal(Pair<ComplexDouble, ComplexDouble> pair, double d10, double d11, double d12, double d13) {
        double estimateCriticallyDamped;
        int i10 = (d12 > 0.0d ? 1 : (d12 == 0.0d ? 0 : -1));
        if (i10 == 0 && d11 == 0.0d) {
            return 0L;
        }
        if (i10 < 0) {
            d11 = -d11;
        }
        double d14 = d11;
        double abs = Math.abs(d12);
        if (d10 > 1.0d) {
            estimateCriticallyDamped = estimateOverDamped(pair, abs, d14, d13);
        } else if (d10 < 1.0d) {
            estimateCriticallyDamped = estimateUnderDamped(pair, abs, d14, d13);
        } else {
            estimateCriticallyDamped = estimateCriticallyDamped(pair, abs, d14, d13);
        }
        return (long) (estimateCriticallyDamped * 1000.0d);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00e8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final double estimateOverDamped(kotlin.Pair<androidx.compose.animation.core.ComplexDouble, androidx.compose.animation.core.ComplexDouble> r31, double r32, double r34, double r36) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SpringEstimationKt.estimateOverDamped(kotlin.Pair, double, double, double):double");
    }

    /* renamed from: estimateOverDamped$xInflection-0  reason: not valid java name */
    private static final double m153estimateOverDamped$xInflection0(double d10, double d11, double d12, double d13, double d14) {
        return (d10 * Math.exp(d11 * d12)) + (d13 * Math.exp(d14 * d12));
    }

    private static final double estimateUnderDamped(Pair<ComplexDouble, ComplexDouble> pair, double d10, double d11, double d12) {
        double real = pair.e().getReal();
        double imaginary = (d11 - (real * d10)) / pair.e().getImaginary();
        return Math.log(d12 / Math.sqrt((d10 * d10) + (imaginary * imaginary))) / real;
    }

    private static final boolean isNotFinite(double d10) {
        boolean z10;
        if (!Double.isInfinite(d10) && !Double.isNaN(d10)) {
            z10 = true;
        } else {
            z10 = false;
        }
        return !z10;
    }

    private static final double iterateNewtonsMethod(double d10, Function1<? super Double, Double> function1, Function1<? super Double, Double> function12) {
        return d10 - (function1.invoke(Double.valueOf(d10)).doubleValue() / function12.invoke(Double.valueOf(d10)).doubleValue());
    }

    public static final long estimateAnimationDurationMillis(double d10, double d11, double d12, double d13, double d14) {
        return estimateDurationInternal(ComplexDoubleKt.complexQuadraticFormula(1.0d, 2.0d * d11 * Math.sqrt(d10), d10), d11, d12, d13, d14);
    }

    public static final long estimateAnimationDurationMillis(double d10, double d11, double d12, double d13, double d14, double d15) {
        return estimateDurationInternal(ComplexDoubleKt.complexQuadraticFormula(d12, d11, d10), d11 / (Math.sqrt(d10 * d12) * 2.0d), d13, d14, d15);
    }
}
