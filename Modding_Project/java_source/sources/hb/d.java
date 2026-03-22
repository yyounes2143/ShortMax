package hb;

import android.content.Context;
import java.util.LinkedHashMap;
/* loaded from: classes5.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private static l1 f52654a;

    private static synchronized l1 a() {
        l1 l1Var;
        synchronized (d.class) {
            try {
                if (f52654a == null) {
                    f52654a = x0.d().c();
                }
                l1Var = f52654a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return l1Var;
    }

    public static void b(int i10, String str, LinkedHashMap<String, String> linkedHashMap) {
        if (a() != null && w0.b().a()) {
            if (i10 != 1 && i10 != 0) {
                f1.j("hmsSdk", "Data type no longer collects range.type: " + i10);
                return;
            }
            f52654a.b(i10, str, linkedHashMap);
        }
    }

    @Deprecated
    public static void c(Context context, String str, String str2) {
        if (a() != null) {
            f52654a.c(context, str, str2);
        }
    }

    public static void d(int i10, String str, LinkedHashMap<String, String> linkedHashMap) {
        if (a() != null && w0.b().a()) {
            if (i10 != 1 && i10 != 0) {
                f1.j("hmsSdk", "Data type no longer collects range.type: " + i10);
                return;
            }
            f52654a.f(i10, str, linkedHashMap);
        }
    }

    public static boolean e() {
        return x0.d().b();
    }

    public static void f() {
        if (a() != null && w0.b().a()) {
            f52654a.a(-1);
        }
    }
}
