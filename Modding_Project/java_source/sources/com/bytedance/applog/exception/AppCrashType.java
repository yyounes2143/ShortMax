package com.bytedance.applog.exception;
/* loaded from: classes3.dex */
public class AppCrashType {
    public static final int ALL = Integer.MAX_VALUE;
    public static final int JAVA = 1;

    public static boolean hasCrashType(int i10, int i11) {
        if ((i10 & i11) != 0) {
            return true;
        }
        return false;
    }

    public static boolean hasJavaCrashType(int i10) {
        return hasCrashType(i10, 1);
    }
}
