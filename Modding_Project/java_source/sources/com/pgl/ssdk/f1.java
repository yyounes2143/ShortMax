package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes6.dex */
public class f1 {

    /* renamed from: a  reason: collision with root package name */
    public static int f36755a = 504;

    /* renamed from: b  reason: collision with root package name */
    public static String f36756b = null;

    /* renamed from: c  reason: collision with root package name */
    public static String f36757c = "";

    /* renamed from: d  reason: collision with root package name */
    static boolean f36758d;

    /* renamed from: e  reason: collision with root package name */
    private static long f36759e;

    /* renamed from: f  reason: collision with root package name */
    private static Context f36760f;

    public static void a(Context context, String str) {
        if (f36760f == null) {
            f36760f = context;
        }
        int i10 = f36755a;
        if (i10 == 102 || i10 == 202 || i10 == 200) {
            return;
        }
        f36759e = System.currentTimeMillis();
        f36758d = false;
        f36756b = str;
        f36755a = 102;
        r0.b(new o0(context, 301, null));
    }

    public static void b() {
        Context context = f36760f;
        if (context != null) {
            r0.b(new o0(context, 301, null));
            f36755a = 102;
            com.pgl.ssdk.ces.b.h().a();
            z.a();
        }
    }

    public static synchronized String a() {
        String str;
        synchronized (f1.class) {
            try {
                if (TextUtils.isEmpty(f36757c)) {
                    f36757c = (String) com.pgl.ssdk.ces.a.meta(303, f36760f, null);
                }
                str = f36757c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    public static synchronized Object a(byte[] bArr) {
        synchronized (f1.class) {
            if (bArr != null) {
                return com.pgl.ssdk.ces.a.meta(302, f36760f, bArr);
            }
            return null;
        }
    }
}
