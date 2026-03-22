package j7;

import h7.k;
/* compiled from: DoubleUtils.java */
/* loaded from: classes5.dex */
final class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(double d10) {
        k.e(b(d10), "not a normal value");
        int exponent = Math.getExponent(d10);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d10) & 4503599627370495L;
        if (exponent == -1023) {
            return doubleToRawLongBits << 1;
        }
        return doubleToRawLongBits | 4503599627370496L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(double d10) {
        if (Math.getExponent(d10) <= 1023) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(double d10) {
        if (Math.getExponent(d10) >= -1022) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double d(double d10) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d10) & 4503599627370495L) | 4607182418800017408L);
    }
}
