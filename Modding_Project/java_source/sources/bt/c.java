package bt;

import kotlin.Metadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MathJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public class c extends b {
    public static int a(int i10) {
        return Integer.signum(i10);
    }

    public static int b(double d10) {
        if (!Double.isNaN(d10)) {
            if (d10 > 2.147483647E9d) {
                return Integer.MAX_VALUE;
            }
            if (d10 < -2.147483648E9d) {
                return Integer.MIN_VALUE;
            }
            return (int) Math.round(d10);
        }
        throw new IllegalArgumentException("Cannot round NaN value.");
    }

    public static int c(float f10) {
        if (!Float.isNaN(f10)) {
            return Math.round(f10);
        }
        throw new IllegalArgumentException("Cannot round NaN value.");
    }

    public static long d(double d10) {
        if (!Double.isNaN(d10)) {
            return Math.round(d10);
        }
        throw new IllegalArgumentException("Cannot round NaN value.");
    }

    public static long e(float f10) {
        return a.d(f10);
    }
}
