package com.bytedance.sdk.component.utils;

import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes3.dex */
public class QSm {
    private static String ZYk = "";
    private static boolean oJ = false;

    public static void ZYk() {
        oJ = false;
    }

    public static void oJ() {
        oJ = true;
    }

    public static void tB(String str, String str2) {
        if (oJ && str2 != null) {
            Log.e(ZYk(str), str2);
        }
    }

    public static void ZYk(String str, String str2) {
        if (oJ && str2 != null) {
            Log.i(ZYk(str), str2);
        }
    }

    public static void oJ(String str, String str2) {
        if (oJ && str2 != null) {
            Log.d(ZYk(str), str2);
        }
    }

    public static void tB(String str, Object... objArr) {
        if (oJ && objArr != null) {
            Log.e(ZYk(str), oJ(objArr));
        }
    }

    public static void ZYk(String str, Object... objArr) {
        if (oJ && objArr != null) {
            Log.i(ZYk(str), oJ(objArr));
        }
    }

    public static void oJ(String str, Object... objArr) {
        if (oJ && objArr != null) {
            Log.d(ZYk(str), oJ(objArr));
        }
    }

    private static String ZYk(String str) {
        if (TextUtils.isEmpty(ZYk)) {
            return str;
        }
        return oJ("[" + ZYk + "]-[" + str + "]");
    }

    public static void oJ(String str, String str2, Throwable th2) {
        if (oJ) {
            if (str2 == null && th2 == null) {
                return;
            }
            Log.e(ZYk(str), str2, th2);
        }
    }

    public static void oJ(String str) {
        ZYk = str;
    }

    private static String oJ(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            StringBuilder sb2 = new StringBuilder();
            for (Object obj : objArr) {
                if (obj != null) {
                    sb2.append(obj.toString());
                } else {
                    sb2.append(" null ");
                }
                sb2.append(" ");
            }
            return sb2.toString();
        }
        return "";
    }
}
