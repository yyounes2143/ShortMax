package com.mbridge.msdk.tracker.network;

import android.util.Log;
import java.util.Locale;
/* compiled from: VolleyLog.java */
/* loaded from: classes6.dex */
public class c0 {

    /* renamed from: a  reason: collision with root package name */
    public static String f30264a = "TrackManager_Volley";

    /* renamed from: b  reason: collision with root package name */
    private static final String f30265b = "com.mbridge.msdk.tracker.network.c0";

    public static void a(Throwable th2, String str, Object... objArr) {
        Log.e(f30264a, a(str, objArr), th2);
    }

    public static void b(String str, Object... objArr) {
        Log.d(f30264a, a(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        Log.e(f30264a, a(str, objArr));
    }

    private static String a(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i10 = 2;
        while (true) {
            if (i10 < stackTrace.length) {
                if (!stackTrace[i10].getClassName().equals(f30265b)) {
                    String className = stackTrace[i10].getClassName();
                    String substring = className.substring(className.lastIndexOf(46) + 1);
                    str2 = substring.substring(substring.lastIndexOf(36) + 1) + "." + stackTrace[i10].getMethodName();
                    break;
                }
                i10++;
            } else {
                str2 = "<unknown>";
                break;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    public static void d(String str, Object... objArr) {
    }
}
