package com.ss.vcbkit;

import com.bytedance.crash.Ensure;
import java.util.Map;
@Keep
/* loaded from: classes6.dex */
public class UnExpected {
    private static boolean isModuleLoaded = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init() {
        if (isModuleLoaded) {
            return;
        }
        try {
            Ensure.getInstance();
            isModuleLoaded = true;
        } catch (Throwable unused) {
            isModuleLoaded = false;
        }
    }

    public static void notReachHere(Throwable th2, String str) {
        if (isModuleLoaded) {
            Ensure.ensureNotReachHere(th2, str);
        }
    }

    @Keep
    private static void notReachHereNative(String str, String str2, Map<String, String> map) {
        if (isModuleLoaded) {
            Ensure.ensureNativeStack(str, "", Thread.currentThread().getName(), str2, map);
        }
    }

    public static void notReachHere(Throwable th2, String str, Map<String, String> map) {
        if (isModuleLoaded) {
            Ensure.ensureNotReachHere(th2, str, map);
        }
    }
}
