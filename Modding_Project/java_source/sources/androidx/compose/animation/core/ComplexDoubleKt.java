package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: ComplexDouble.kt */
@Metadata
/* loaded from: classes.dex */
public final class ComplexDoubleKt {
    @NotNull
    public static final Pair<ComplexDouble, ComplexDouble> complexQuadraticFormula(double d10, double d11, double d12) {
        double d13 = -d11;
        double d14 = (d11 * d11) - ((4.0d * d10) * d12);
        ComplexDouble complexSqrt = complexSqrt(d14);
        complexSqrt._real += d13;
        double d15 = d10 * 2.0d;
        complexSqrt._real /= d15;
        complexSqrt._imaginary /= d15;
        ComplexDouble complexSqrt2 = complexSqrt(d14);
        double d16 = -1;
        complexSqrt2._real *= d16;
        complexSqrt2._imaginary *= d16;
        complexSqrt2._real += d13;
        complexSqrt2._real /= d15;
        complexSqrt2._imaginary /= d15;
        return k.a(complexSqrt, complexSqrt2);
    }

    @NotNull
    public static final ComplexDouble complexSqrt(double d10) {
        if (d10 < 0.0d) {
            return new ComplexDouble(0.0d, Math.sqrt(Math.abs(d10)));
        }
        return new ComplexDouble(Math.sqrt(d10), 0.0d);
    }

    @NotNull
    public static final ComplexDouble minus(double d10, @NotNull ComplexDouble other) {
        Intrinsics.checkNotNullParameter(other, "other");
        double d11 = -1;
        other._real *= d11;
        other._imaginary *= d11;
        other._real += d10;
        return other;
    }

    @NotNull
    public static final ComplexDouble plus(double d10, @NotNull ComplexDouble other) {
        Intrinsics.checkNotNullParameter(other, "other");
        other._real += d10;
        return other;
    }

    @NotNull
    public static final ComplexDouble times(double d10, @NotNull ComplexDouble other) {
        Intrinsics.checkNotNullParameter(other, "other");
        other._real *= d10;
        other._imaginary *= d10;
        return other;
    }
}
