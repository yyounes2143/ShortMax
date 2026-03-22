package hb;

import android.content.Context;
import java.util.LinkedHashMap;
/* compiled from: HmsHiAnalyticsUtils.java */
/* loaded from: classes5.dex */
public class a {
    public static void a() {
        j.a();
    }

    public static boolean b() {
        return d.e();
    }

    public static void c(Context context, boolean z10, boolean z11, boolean z12, String str, String str2) {
        new g(context).c(z10).f(z11).e(z12).a(0, str).a(1, str).b(str2).d();
    }

    public static void d(int i10, String str, LinkedHashMap<String, String> linkedHashMap) {
        d.b(i10, str, linkedHashMap);
    }

    public static void e(Context context, String str, String str2) {
        d.c(context, str, str2);
    }

    public static void f() {
        d.f();
    }

    public static void g(int i10, String str, LinkedHashMap<String, String> linkedHashMap) {
        d.d(i10, str, linkedHashMap);
    }
}
