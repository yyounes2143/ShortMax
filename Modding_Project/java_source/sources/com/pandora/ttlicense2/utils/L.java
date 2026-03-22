package com.pandora.ttlicense2.utils;

import android.util.Log;
/* loaded from: classes6.dex */
public class L {
    public static boolean ENABLE_LOG = false;
    private static final String TAG = "TTLicense";

    private L() {
    }

    private static String createLog(Object obj, String str, Object... objArr) {
        StringBuilder sb2 = new StringBuilder(obj2String(obj));
        sb2.append(" -> ");
        sb2.append(str);
        if (objArr != null) {
            for (Object obj2 : objArr) {
                sb2.append(" -> ");
                sb2.append(obj2String(obj2));
            }
        }
        return sb2.toString();
    }

    public static void d(Object obj, String str, Object... objArr) {
        if (ENABLE_LOG) {
            Log.d(TAG, createLog(obj, str, objArr));
        }
    }

    public static void e(Object obj, String str, Object... objArr) {
        if (ENABLE_LOG) {
            Log.e(TAG, createLog(obj, str, objArr));
        }
    }

    public static void i(Object obj, String str, Object... objArr) {
        if (ENABLE_LOG) {
            Log.i(TAG, createLog(obj, str, objArr));
        }
    }

    public static String obj2String(Object obj) {
        if (obj == null) {
            return "null";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (obj instanceof Number) {
            return String.valueOf(obj);
        }
        if (obj.getClass().isAnonymousClass()) {
            String obj2 = obj.toString();
            return obj2.substring(obj2.lastIndexOf(46));
        }
        return obj.getClass().getSimpleName() + '@' + Integer.toHexString(obj.hashCode());
    }

    public static String string(Object obj) {
        if (obj == null) {
            return "null";
        }
        if (ENABLE_LOG) {
            return obj.toString();
        }
        return "";
    }

    public static void v(Object obj, String str, Object... objArr) {
        if (ENABLE_LOG) {
            Log.v(TAG, createLog(obj, str, objArr));
        }
    }

    public static void w(Object obj, String str, Object... objArr) {
        if (ENABLE_LOG) {
            Log.w(TAG, createLog(obj, str, objArr));
        }
    }

    public static void d(Object obj, String str, Throwable th2, Object... objArr) {
        if (ENABLE_LOG) {
            Log.d(TAG, createLog(obj, str, objArr), th2);
        }
    }

    public static void e(Object obj, String str, Throwable th2, Object... objArr) {
        if (ENABLE_LOG) {
            Log.e(TAG, createLog(obj, str, objArr), th2);
        }
    }

    public static void i(Object obj, String str, Throwable th2, Object... objArr) {
        if (ENABLE_LOG) {
            Log.i(TAG, createLog(obj, str, objArr), th2);
        }
    }

    public static void v(Object obj, String str, Throwable th2, Object... objArr) {
        if (ENABLE_LOG) {
            Log.v(TAG, createLog(obj, str, objArr), th2);
        }
    }

    public static void w(Object obj, String str, Throwable th2, Object... objArr) {
        if (ENABLE_LOG) {
            Log.w(TAG, createLog(obj, str, objArr), th2);
        }
    }
}
