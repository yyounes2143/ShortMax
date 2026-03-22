package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes6.dex */
public class n0 {

    /* renamed from: a  reason: collision with root package name */
    public static int f36802a = -1;

    /* renamed from: b  reason: collision with root package name */
    public static String f36803b = null;

    /* renamed from: c  reason: collision with root package name */
    private static String f36804c = "api16-access-ttp.tiktokpangle.us";

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f36805d = {"api16-access-ttp.tiktokpangle.us", "api16-access-ttp-b.tiktokpangle.us", "api16-access-ttp.tiktokpangle-b.us", "api16-access-ttp-b.tiktokpangle-b.us"};

    /* renamed from: e  reason: collision with root package name */
    private static int f36806e = Integer.MIN_VALUE;

    /* renamed from: f  reason: collision with root package name */
    public static String f36807f = "";

    public static String a() {
        return f36802a == 1 ? "VA" : "SG";
    }

    public static String b() {
        return f36807f;
    }

    public static void a(int i10) {
        f36802a = i10;
    }

    public static void b(String str) {
        f36807f = str;
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f36803b = str;
    }

    public static void b(Context context) {
        if (TextUtils.isEmpty(f36803b)) {
            u0.a("updateIndex");
            int i10 = f36806e;
            if (i10 < Integer.MAX_VALUE) {
                int i11 = i10 + 1;
                f36806e = i11;
                x0.b(context, "domain_index", i11);
                return;
            }
            f36806e = 0;
        }
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(f36803b)) {
            return f36803b;
        }
        try {
            if (f36806e == Integer.MIN_VALUE) {
                f36806e = x0.a(context, "domain_index", 0);
            }
            String[] strArr = f36805d;
            return strArr[f36806e % strArr.length];
        } catch (Throwable unused) {
            return f36804c;
        }
    }
}
