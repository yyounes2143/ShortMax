package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.MBridgeConstans;
/* compiled from: SameLogTool.java */
/* loaded from: classes5.dex */
public class p0 {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f27474a = true;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f27475b = true;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f27476c = true;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f27477d = false;

    /* renamed from: e  reason: collision with root package name */
    public static boolean f27478e = true;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f27479f = false;

    /* renamed from: g  reason: collision with root package name */
    public static boolean f27480g = true;

    /* renamed from: h  reason: collision with root package name */
    public static boolean f27481h = true;

    static {
        if (!MBridgeConstans.DEBUG) {
            f27480g = false;
            f27474a = false;
            f27476c = false;
            f27481h = false;
            f27475b = false;
            f27479f = false;
            f27478e = false;
            f27477d = false;
        }
    }

    public static void a(String str, String str2) {
        if (!f27474a || TextUtils.isEmpty(str2)) {
            return;
        }
        Log.d(a(str), str2);
    }

    public static void b(String str, String str2) {
        if (!f27475b || str2 == null) {
            return;
        }
        Log.e(a(str), str2);
    }

    public static void c(String str, String str2) {
        if (!f27476c || TextUtils.isEmpty(str2)) {
            return;
        }
        Log.i(a(str), str2);
    }

    public static void d(String str, String str2) {
        if (f27481h && !TextUtils.isEmpty(str2)) {
            Log.w(a(str), str2);
        }
    }

    public static void b(String str, String str2, Throwable th2) {
        if (!f27475b || str2 == null || th2 == null) {
            return;
        }
        Log.e(a(str), str2, th2);
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return "MBRIDGE_" + str;
    }

    public static void c(String str, String str2, Throwable th2) {
        if (!f27481h || TextUtils.isEmpty(str2)) {
            return;
        }
        Log.w(a(str), str2, th2);
    }

    public static void a(String str, String str2, Throwable th2) {
        if (!f27474a || TextUtils.isEmpty(str2)) {
            return;
        }
        Log.d(a(str), str2, th2);
    }

    public static void a(String str, Throwable th2) {
        if (!f27481h || th2 == null) {
            return;
        }
        Log.w(a(str), th2);
    }
}
