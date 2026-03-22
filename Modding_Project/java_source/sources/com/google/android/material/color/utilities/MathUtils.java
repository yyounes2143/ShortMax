package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public class MathUtils {
    private MathUtils() {
    }

    public static double clampDouble(double d10, double d11, double d12) {
        if (d12 < d10) {
            return d10;
        }
        if (d12 > d11) {
            return d11;
        }
        return d12;
    }

    public static int clampInt(int i10, int i11, int i12) {
        if (i12 < i10) {
            return i10;
        }
        if (i12 > i11) {
            return i11;
        }
        return i12;
    }

    public static double differenceDegrees(double d10, double d11) {
        return 180.0d - Math.abs(Math.abs(d10 - d11) - 180.0d);
    }

    public static double lerp(double d10, double d11, double d12) {
        return ((1.0d - d12) * d10) + (d12 * d11);
    }

    public static double[] matrixMultiply(double[] dArr, double[][] dArr2) {
        double d10 = dArr[0];
        double[] dArr3 = dArr2[0];
        double d11 = dArr[1];
        double d12 = dArr[2];
        double d13 = (dArr3[0] * d10) + (dArr3[1] * d11) + (dArr3[2] * d12);
        double[] dArr4 = dArr2[1];
        double d14 = (dArr4[0] * d10) + (dArr4[1] * d11) + (dArr4[2] * d12);
        double[] dArr5 = dArr2[2];
        return new double[]{d13, d14, (d10 * dArr5[0]) + (d11 * dArr5[1]) + (d12 * dArr5[2])};
    }

    public static double rotationDirection(double d10, double d11) {
        if (sanitizeDegreesDouble(d11 - d10) <= 180.0d) {
            return 1.0d;
        }
        return -1.0d;
    }

    public static double sanitizeDegreesDouble(double d10) {
        double d11 = d10 % 360.0d;
        if (d11 < 0.0d) {
            return d11 + 360.0d;
        }
        return d11;
    }

    public static int sanitizeDegreesInt(int i10) {
        int i11 = i10 % 360;
        if (i11 < 0) {
            return i11 + 360;
        }
        return i11;
    }

    public static int signum(double d10) {
        if (d10 < 0.0d) {
            return -1;
        }
        if (d10 == 0.0d) {
            return 0;
        }
        return 1;
    }
}
