package fj;

import android.content.res.Resources;
import android.util.Log;
/* compiled from: BannerUtils.java */
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f51701a = false;

    public static int a(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static int b(int i10) {
        return 500 - (500 % i10);
    }

    public static int c(int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        return (i10 + i11) % i11;
    }

    public static boolean d() {
        return f51701a;
    }

    public static void e(String str) {
        if (d()) {
            f("BVP", str);
        }
    }

    public static void f(String str, String str2) {
        if (d()) {
            Log.e(str, str2);
        }
    }
}
