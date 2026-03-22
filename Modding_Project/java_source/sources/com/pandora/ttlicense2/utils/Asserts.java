package com.pandora.ttlicense2.utils;

import android.os.Looper;
/* loaded from: classes6.dex */
public class Asserts {
    public static void checkArgument(boolean z10) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException();
    }

    public static void checkMainThread() {
        checkThread(Looper.getMainLooper());
    }

    public static <T> T checkNotNull(T t10) {
        t10.getClass();
        return t10;
    }

    public static <T> T checkOneOf(T t10, T... tArr) {
        tArr.getClass();
        for (T t11 : tArr) {
            if (t10 == t11) {
                return t10;
            }
        }
        StringBuilder sb2 = new StringBuilder(91);
        for (T t12 : tArr) {
            sb2.append(t12);
            sb2.append(',');
        }
        sb2.replace(sb2.length() - 1, sb2.length() - 1, "]");
        throw new IllegalArgumentException(t10 + " must be one of " + ((Object) sb2));
    }

    public static void checkState(int i10, int... iArr) {
        for (int i11 : iArr) {
            if (i10 == i11) {
                return;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        for (int i12 : iArr) {
            sb2.append(i12);
            sb2.append(",");
        }
        sb2.replace(sb2.length() - 1, sb2.length() - 1, "]");
        throw new IllegalStateException(String.format("Thread:%s. Current state is %s, You can only call this method in %s", Thread.currentThread().getName(), Integer.valueOf(i10), sb2.toString()));
    }

    public static void checkThread(Looper looper) {
        checkNotNull(looper);
        if (Thread.currentThread() == looper.getThread()) {
            return;
        }
        throw new IllegalThreadStateException(String.format("You must call this method in %s thread!", looper.getThread()));
    }

    public static <T> T checkNotNull(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(str);
    }

    public static void checkState(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }

    public static void checkState(boolean z10, String str) {
        if (!z10) {
            throw new IllegalStateException(str);
        }
    }
}
