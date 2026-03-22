package com.bytedance.adsdk.oJ.ZYk.Pfn.oJ;
/* loaded from: classes3.dex */
public class ba {
    private static Object oJ(int i10, Number number) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return Long.valueOf(i10 % number.longValue());
            }
            if (number instanceof Float) {
                return Float.valueOf(i10 % number.floatValue());
            }
            if (number instanceof Double) {
                return Double.valueOf(i10 % number.doubleValue());
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return Integer.valueOf(i10 % number.intValue());
    }

    private static Object oJ(long j10, Number number) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return Long.valueOf(j10 % number.longValue());
            }
            if (number instanceof Float) {
                return Float.valueOf(((float) j10) % number.floatValue());
            }
            if (number instanceof Double) {
                return Double.valueOf(j10 % number.doubleValue());
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return Long.valueOf(j10 % number.intValue());
    }

    private static Object oJ(float f10, Number number) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return Float.valueOf(f10 % ((float) number.longValue()));
            }
            if (number instanceof Float) {
                return Float.valueOf(f10 % number.floatValue());
            }
            if (number instanceof Double) {
                return Double.valueOf(f10 % number.doubleValue());
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return Float.valueOf(f10 % number.intValue());
    }

    private static Object oJ(double d10, Number number) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return Double.valueOf(d10 % number.longValue());
            }
            if (number instanceof Float) {
                return Double.valueOf(d10 % number.floatValue());
            }
            if (number instanceof Double) {
                return Double.valueOf(d10 % number.doubleValue());
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return Double.valueOf(d10 % number.intValue());
    }

    public static Object oJ(Number number, Number number2) {
        if (!(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            if (number instanceof Long) {
                return oJ(number.longValue(), number2);
            }
            if (number instanceof Float) {
                return oJ(number.floatValue(), number2);
            }
            if (number instanceof Double) {
                return oJ(number.doubleValue(), number2);
            }
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
        return oJ(number.intValue(), number2);
    }
}
