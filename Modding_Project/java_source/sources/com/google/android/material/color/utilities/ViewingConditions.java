package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class ViewingConditions {
    public static final ViewingConditions DEFAULT = defaultWithBackgroundLstar(50.0d);
    private final double aw;

    /* renamed from: c  reason: collision with root package name */
    private final double f19687c;

    /* renamed from: fl  reason: collision with root package name */
    private final double f19688fl;
    private final double flRoot;

    /* renamed from: n  reason: collision with root package name */
    private final double f19689n;
    private final double nbb;

    /* renamed from: nc  reason: collision with root package name */
    private final double f19690nc;
    private final double ncb;
    private final double[] rgbD;

    /* renamed from: z  reason: collision with root package name */
    private final double f19691z;

    private ViewingConditions(double d10, double d11, double d12, double d13, double d14, double d15, double[] dArr, double d16, double d17, double d18) {
        this.f19689n = d10;
        this.aw = d11;
        this.nbb = d12;
        this.ncb = d13;
        this.f19687c = d14;
        this.f19690nc = d15;
        this.rgbD = dArr;
        this.f19688fl = d16;
        this.flRoot = d17;
        this.f19691z = d18;
    }

    public static ViewingConditions defaultWithBackgroundLstar(double d10) {
        return make(ColorUtils.whitePointD65(), (ColorUtils.yFromLstar(50.0d) * 63.66197723675813d) / 100.0d, d10, 2.0d, false);
    }

    public static ViewingConditions make(double[] dArr, double d10, double d11, double d12, boolean z10) {
        double lerp;
        double exp;
        double max = Math.max(0.1d, d11);
        double[][] dArr2 = Cam16.XYZ_TO_CAM16RGB;
        double d13 = dArr[0];
        double[] dArr3 = dArr2[0];
        double d14 = dArr[1];
        double d15 = dArr[2];
        double d16 = (dArr3[0] * d13) + (dArr3[1] * d14) + (dArr3[2] * d15);
        double[] dArr4 = dArr2[1];
        double d17 = (dArr4[0] * d13) + (dArr4[1] * d14) + (dArr4[2] * d15);
        double[] dArr5 = dArr2[2];
        double d18 = (d13 * dArr5[0]) + (d14 * dArr5[1]) + (d15 * dArr5[2]);
        double d19 = (d12 / 10.0d) + 0.8d;
        if (d19 >= 0.9d) {
            lerp = MathUtils.lerp(0.59d, 0.69d, (d19 - 0.9d) * 10.0d);
        } else {
            lerp = MathUtils.lerp(0.525d, 0.59d, (d19 - 0.8d) * 10.0d);
        }
        double d20 = lerp;
        if (z10) {
            exp = 1.0d;
        } else {
            exp = (1.0d - (Math.exp(((-d10) - 42.0d) / 92.0d) * 0.2777777777777778d)) * d19;
        }
        double clampDouble = MathUtils.clampDouble(0.0d, 1.0d, exp);
        double[] dArr6 = {(((100.0d / d16) * clampDouble) + 1.0d) - clampDouble, (((100.0d / d17) * clampDouble) + 1.0d) - clampDouble, (((100.0d / d18) * clampDouble) + 1.0d) - clampDouble};
        double d21 = 5.0d * d10;
        double d22 = 1.0d / (d21 + 1.0d);
        double d23 = d22 * d22 * d22 * d22;
        double d24 = 1.0d - d23;
        double cbrt = (d23 * d10) + (0.1d * d24 * d24 * Math.cbrt(d21));
        double yFromLstar = ColorUtils.yFromLstar(max) / dArr[1];
        double sqrt = Math.sqrt(yFromLstar) + 1.48d;
        double pow = 0.725d / Math.pow(yFromLstar, 0.2d);
        double[] dArr7 = {Math.pow(((dArr6[0] * cbrt) * d16) / 100.0d, 0.42d), Math.pow(((dArr6[1] * cbrt) * d17) / 100.0d, 0.42d), Math.pow(((dArr6[2] * cbrt) * d18) / 100.0d, 0.42d)};
        double d25 = dArr7[0];
        double d26 = (d25 * 400.0d) / (d25 + 27.13d);
        double d27 = dArr7[1];
        double d28 = (d27 * 400.0d) / (d27 + 27.13d);
        double d29 = dArr7[2];
        double[] dArr8 = {d26, d28, (400.0d * d29) / (d29 + 27.13d)};
        return new ViewingConditions(yFromLstar, ((dArr8[0] * 2.0d) + dArr8[1] + (dArr8[2] * 0.05d)) * pow, pow, pow, d20, d19, dArr6, cbrt, Math.pow(cbrt, 0.25d), sqrt);
    }

    public double getAw() {
        return this.aw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getC() {
        return this.f19687c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getFl() {
        return this.f19688fl;
    }

    public double getFlRoot() {
        return this.flRoot;
    }

    public double getN() {
        return this.f19689n;
    }

    public double getNbb() {
        return this.nbb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getNc() {
        return this.f19690nc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getNcb() {
        return this.ncb;
    }

    public double[] getRgbD() {
        return this.rgbD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getZ() {
        return this.f19691z;
    }
}
