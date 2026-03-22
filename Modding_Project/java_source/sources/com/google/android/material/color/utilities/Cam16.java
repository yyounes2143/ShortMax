package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class Cam16 {
    private final double astar;
    private final double bstar;
    private final double chroma;
    private final double hue;

    /* renamed from: j  reason: collision with root package name */
    private final double f19672j;
    private final double jstar;

    /* renamed from: m  reason: collision with root package name */
    private final double f19673m;

    /* renamed from: q  reason: collision with root package name */
    private final double f19674q;

    /* renamed from: s  reason: collision with root package name */
    private final double f19675s;
    private final double[] tempArray = {0.0d, 0.0d, 0.0d};
    static final double[][] XYZ_TO_CAM16RGB = {new double[]{0.401288d, 0.650173d, -0.051461d}, new double[]{-0.250268d, 1.204414d, 0.045854d}, new double[]{-0.002079d, 0.048952d, 0.953127d}};
    static final double[][] CAM16RGB_TO_XYZ = {new double[]{1.8620678d, -1.0112547d, 0.14918678d}, new double[]{0.38752654d, 0.62144744d, -0.00897398d}, new double[]{-0.0158415d, -0.03412294d, 1.0499644d}};

    private Cam16(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        this.hue = d10;
        this.chroma = d11;
        this.f19672j = d12;
        this.f19674q = d13;
        this.f19673m = d14;
        this.f19675s = d15;
        this.jstar = d16;
        this.astar = d17;
        this.bstar = d18;
    }

    public static Cam16 fromInt(int i10) {
        return fromIntInViewingConditions(i10, ViewingConditions.DEFAULT);
    }

    static Cam16 fromIntInViewingConditions(int i10, ViewingConditions viewingConditions) {
        double linearized = ColorUtils.linearized((16711680 & i10) >> 16);
        double linearized2 = ColorUtils.linearized((65280 & i10) >> 8);
        double linearized3 = ColorUtils.linearized(i10 & 255);
        return fromXyzInViewingConditions((0.41233895d * linearized) + (0.35762064d * linearized2) + (0.18051042d * linearized3), (0.2126d * linearized) + (0.7152d * linearized2) + (0.0722d * linearized3), (linearized * 0.01932141d) + (linearized2 * 0.11916382d) + (linearized3 * 0.95034478d), viewingConditions);
    }

    static Cam16 fromJch(double d10, double d11, double d12) {
        return fromJchInViewingConditions(d10, d11, d12, ViewingConditions.DEFAULT);
    }

    private static Cam16 fromJchInViewingConditions(double d10, double d11, double d12, ViewingConditions viewingConditions) {
        double d13 = d10 / 100.0d;
        double c10 = (4.0d / viewingConditions.getC()) * Math.sqrt(d13) * (viewingConditions.getAw() + 4.0d) * viewingConditions.getFlRoot();
        double flRoot = d11 * viewingConditions.getFlRoot();
        double radians = Math.toRadians(d12);
        double d14 = (1.7000000000000002d * d10) / ((0.007d * d10) + 1.0d);
        double log1p = 43.859649122807014d * Math.log1p(flRoot * 0.0228d);
        return new Cam16(d12, d11, d10, c10, flRoot, Math.sqrt(((d11 / Math.sqrt(d13)) * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0d)) * 50.0d, d14, Math.cos(radians) * log1p, Math.sin(radians) * log1p);
    }

    public static Cam16 fromUcs(double d10, double d11, double d12) {
        return fromUcsInViewingConditions(d10, d11, d12, ViewingConditions.DEFAULT);
    }

    public static Cam16 fromUcsInViewingConditions(double d10, double d11, double d12, ViewingConditions viewingConditions) {
        double expm1 = (Math.expm1(Math.hypot(d11, d12) * 0.0228d) / 0.0228d) / viewingConditions.getFlRoot();
        double atan2 = Math.atan2(d12, d11) * 57.29577951308232d;
        if (atan2 < 0.0d) {
            atan2 += 360.0d;
        }
        return fromJchInViewingConditions(d10 / (1.0d - ((d10 - 100.0d) * 0.007d)), expm1, atan2, viewingConditions);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Cam16 fromXyzInViewingConditions(double d10, double d11, double d12, ViewingConditions viewingConditions) {
        double d13;
        double[][] dArr = XYZ_TO_CAM16RGB;
        double[] dArr2 = dArr[0];
        double d14 = (dArr2[0] * d10) + (dArr2[1] * d11) + (dArr2[2] * d12);
        double[] dArr3 = dArr[1];
        double d15 = (dArr3[0] * d10) + (dArr3[1] * d11) + (dArr3[2] * d12);
        double[] dArr4 = dArr[2];
        double d16 = viewingConditions.getRgbD()[0] * d14;
        double d17 = viewingConditions.getRgbD()[1] * d15;
        double d18 = viewingConditions.getRgbD()[2] * ((dArr4[0] * d10) + (dArr4[1] * d11) + (dArr4[2] * d12));
        double pow = Math.pow((viewingConditions.getFl() * Math.abs(d16)) / 100.0d, 0.42d);
        double pow2 = Math.pow((viewingConditions.getFl() * Math.abs(d17)) / 100.0d, 0.42d);
        double pow3 = Math.pow((viewingConditions.getFl() * Math.abs(d18)) / 100.0d, 0.42d);
        double signum = ((Math.signum(d16) * 400.0d) * pow) / (pow + 27.13d);
        double signum2 = ((Math.signum(d17) * 400.0d) * pow2) / (pow2 + 27.13d);
        double signum3 = ((Math.signum(d18) * 400.0d) * pow3) / (pow3 + 27.13d);
        double d19 = (((signum * 11.0d) + ((-12.0d) * signum2)) + signum3) / 11.0d;
        double d20 = ((signum + signum2) - (signum3 * 2.0d)) / 9.0d;
        double d21 = signum2 * 20.0d;
        double d22 = (((signum * 20.0d) + d21) + (21.0d * signum3)) / 20.0d;
        double d23 = (((signum * 40.0d) + d21) + signum3) / 20.0d;
        double degrees = Math.toDegrees(Math.atan2(d20, d19));
        if (degrees < 0.0d) {
            degrees += 360.0d;
        } else if (degrees >= 360.0d) {
            degrees -= 360.0d;
        }
        double d24 = degrees;
        double radians = Math.toRadians(d24);
        double pow4 = Math.pow((d23 * viewingConditions.getNbb()) / viewingConditions.getAw(), viewingConditions.getC() * viewingConditions.getZ()) * 100.0d;
        double d25 = pow4 / 100.0d;
        double c10 = (4.0d / viewingConditions.getC()) * Math.sqrt(d25) * (viewingConditions.getAw() + 4.0d) * viewingConditions.getFlRoot();
        if (d24 < 20.14d) {
            d13 = d24 + 360.0d;
        } else {
            d13 = d24;
        }
        double pow5 = Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d) * Math.pow(((((((Math.cos(Math.toRadians(d13) + 2.0d) + 3.8d) * 0.25d) * 3846.153846153846d) * viewingConditions.getNc()) * viewingConditions.getNcb()) * Math.hypot(d19, d20)) / (d22 + 0.305d), 0.9d);
        double sqrt = Math.sqrt(d25) * pow5;
        double flRoot = sqrt * viewingConditions.getFlRoot();
        double log1p = Math.log1p(flRoot * 0.0228d) * 43.859649122807014d;
        return new Cam16(d24, sqrt, pow4, c10, flRoot, Math.sqrt((pow5 * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0d)) * 50.0d, (1.7000000000000002d * pow4) / ((0.007d * pow4) + 1.0d), log1p * Math.cos(radians), log1p * Math.sin(radians));
    }

    double distance(Cam16 cam16) {
        double jstar = getJstar() - cam16.getJstar();
        double astar = getAstar() - cam16.getAstar();
        double bstar = getBstar() - cam16.getBstar();
        return Math.pow(Math.sqrt((jstar * jstar) + (astar * astar) + (bstar * bstar)), 0.63d) * 1.41d;
    }

    public double getAstar() {
        return this.astar;
    }

    public double getBstar() {
        return this.bstar;
    }

    public double getChroma() {
        return this.chroma;
    }

    public double getHue() {
        return this.hue;
    }

    public double getJ() {
        return this.f19672j;
    }

    public double getJstar() {
        return this.jstar;
    }

    public double getM() {
        return this.f19673m;
    }

    public double getQ() {
        return this.f19674q;
    }

    public double getS() {
        return this.f19675s;
    }

    public int toInt() {
        return viewed(ViewingConditions.DEFAULT);
    }

    int viewed(ViewingConditions viewingConditions) {
        double[] xyzInViewingConditions = xyzInViewingConditions(viewingConditions, this.tempArray);
        return ColorUtils.argbFromXyz(xyzInViewingConditions[0], xyzInViewingConditions[1], xyzInViewingConditions[2]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double[] xyzInViewingConditions(ViewingConditions viewingConditions, double[] dArr) {
        double d10;
        if (getChroma() != 0.0d && getJ() != 0.0d) {
            d10 = getChroma() / Math.sqrt(getJ() / 100.0d);
        } else {
            d10 = 0.0d;
        }
        double pow = Math.pow(d10 / Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d), 1.1111111111111112d);
        double radians = Math.toRadians(getHue());
        double aw = viewingConditions.getAw() * Math.pow(getJ() / 100.0d, (1.0d / viewingConditions.getC()) / viewingConditions.getZ());
        double cos = (Math.cos(2.0d + radians) + 3.8d) * 0.25d * 3846.153846153846d * viewingConditions.getNc() * viewingConditions.getNcb();
        double nbb = aw / viewingConditions.getNbb();
        double sin = Math.sin(radians);
        double cos2 = Math.cos(radians);
        double d11 = (((0.305d + nbb) * 23.0d) * pow) / (((cos * 23.0d) + ((11.0d * pow) * cos2)) + ((pow * 108.0d) * sin));
        double d12 = cos2 * d11;
        double d13 = d11 * sin;
        double d14 = nbb * 460.0d;
        double d15 = (((451.0d * d12) + d14) + (288.0d * d13)) / 1403.0d;
        double d16 = ((d14 - (891.0d * d12)) - (261.0d * d13)) / 1403.0d;
        double d17 = ((d14 - (d12 * 220.0d)) - (d13 * 6300.0d)) / 1403.0d;
        double signum = Math.signum(d15) * (100.0d / viewingConditions.getFl()) * Math.pow(Math.max(0.0d, (Math.abs(d15) * 27.13d) / (400.0d - Math.abs(d15))), 2.380952380952381d);
        double signum2 = Math.signum(d16) * (100.0d / viewingConditions.getFl()) * Math.pow(Math.max(0.0d, (Math.abs(d16) * 27.13d) / (400.0d - Math.abs(d16))), 2.380952380952381d);
        double signum3 = Math.signum(d17) * (100.0d / viewingConditions.getFl()) * Math.pow(Math.max(0.0d, (Math.abs(d17) * 27.13d) / (400.0d - Math.abs(d17))), 2.380952380952381d);
        double d18 = signum / viewingConditions.getRgbD()[0];
        double d19 = signum2 / viewingConditions.getRgbD()[1];
        double d20 = signum3 / viewingConditions.getRgbD()[2];
        double[][] dArr2 = CAM16RGB_TO_XYZ;
        double[] dArr3 = dArr2[0];
        double d21 = (dArr3[0] * d18) + (dArr3[1] * d19) + (dArr3[2] * d20);
        double[] dArr4 = dArr2[1];
        double d22 = (dArr4[0] * d18) + (dArr4[1] * d19) + (dArr4[2] * d20);
        double[] dArr5 = dArr2[2];
        double d23 = (d18 * dArr5[0]) + (d19 * dArr5[1]) + (d20 * dArr5[2]);
        if (dArr != null) {
            dArr[0] = d21;
            dArr[1] = d22;
            dArr[2] = d23;
            return dArr;
        }
        return new double[]{d21, d22, d23};
    }
}
