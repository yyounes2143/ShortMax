package com.bytedance.adsdk.oJ.ZYk.Pfn.oJ;
/* loaded from: classes3.dex */
public class ZYk {
    private static boolean oJ(int i10, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return i10 == number.intValue();
        } else if (number instanceof Long) {
            return ((long) i10) == number.longValue();
        } else if (number instanceof Float) {
            return ((float) i10) == number.floatValue();
        } else if (number instanceof Double) {
            return ((double) i10) == number.doubleValue();
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    private static boolean oJ(long j10, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return j10 == ((long) number.intValue());
        } else if (number instanceof Long) {
            return j10 == number.longValue();
        } else if (number instanceof Float) {
            return ((float) j10) == number.floatValue();
        } else if (number instanceof Double) {
            return ((double) j10) == number.doubleValue();
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    private static boolean oJ(float f10, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return f10 == ((float) number.intValue());
        } else if (number instanceof Long) {
            return f10 == ((float) number.longValue());
        } else if (number instanceof Float) {
            return f10 == number.floatValue();
        } else if (number instanceof Double) {
            return ((double) f10) == number.doubleValue();
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    private static boolean oJ(double d10, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return d10 == ((double) number.intValue());
        } else if (number instanceof Long) {
            return d10 == ((double) number.longValue());
        } else if (number instanceof Float) {
            return d10 == ((double) number.floatValue());
        } else if (number instanceof Double) {
            return d10 == number.doubleValue();
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    public static boolean oJ(Number number, Number number2) {
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
