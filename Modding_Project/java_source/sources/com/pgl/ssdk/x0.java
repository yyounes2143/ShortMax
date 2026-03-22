package com.pgl.ssdk;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes6.dex */
public class x0 {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f36845a;

    public static String a(Context context, String str) {
        return a(context, str, "");
    }

    public static void b(Context context, String str, String str2) {
        SharedPreferences a10 = a(context);
        if (a10 != null) {
            a10.edit().putString(str, str2).apply();
        }
    }

    public static String a(Context context, String str, String str2) {
        SharedPreferences a10 = a(context);
        return a10 != null ? a10.getString(str, str2) : str2;
    }

    public static void b(Context context, String str, int i10) {
        SharedPreferences a10 = a(context);
        if (a10 != null) {
            a10.edit().putInt(str, i10).apply();
        }
    }

    public static int a(Context context, String str, int i10) {
        SharedPreferences a10 = a(context);
        return a10 != null ? a10.getInt(str, i10) : i10;
    }

    public static void b(Context context, String str, long j10) {
        SharedPreferences a10 = a(context);
        if (a10 != null) {
            a10.edit().putLong(str, j10).apply();
        }
    }

    public static long a(Context context, String str, long j10) {
        SharedPreferences a10 = a(context);
        return a10 != null ? a10.getLong(str, j10) : j10;
    }

    public static SharedPreferences a(Context context) {
        if (f36845a == null) {
            f36845a = context.getSharedPreferences("ss_config", 0);
        }
        return f36845a;
    }
}
