package l2;
/* compiled from: FLog.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static c f62073a = b.f();

    public static void A(Class<?> cls, String str, Throwable th2) {
        if (f62073a.e(6)) {
            f62073a.d(m(cls), str, th2);
        }
    }

    public static void B(String str, String str2, Object... objArr) {
        if (f62073a.e(6)) {
            f62073a.b(str, l(str2, objArr));
        }
    }

    public static void a(Class<?> cls, String str, Object obj) {
        if (f62073a.e(3)) {
            f62073a.d(m(cls), l(str, obj));
        }
    }

    public static void b(Class<?> cls, String str, Object... objArr) {
        if (f62073a.e(3)) {
            f62073a.d(m(cls), l(str, objArr));
        }
    }

    public static void c(String str, String str2) {
        if (f62073a.e(3)) {
            f62073a.d(str, str2);
        }
    }

    public static void d(String str, String str2, Throwable th2) {
        if (f62073a.e(3)) {
            f62073a.a(str, str2, th2);
        }
    }

    public static void e(Class<?> cls, String str) {
        if (f62073a.e(6)) {
            f62073a.e(m(cls), str);
        }
    }

    public static void f(Class<?> cls, String str, Throwable th2) {
        if (f62073a.e(6)) {
            f62073a.e(m(cls), str, th2);
        }
    }

    public static void g(Class<?> cls, String str, Object... objArr) {
        if (f62073a.e(6)) {
            f62073a.e(m(cls), l(str, objArr));
        }
    }

    public static void h(Class<?> cls, Throwable th2, String str, Object... objArr) {
        if (f62073a.e(6)) {
            f62073a.e(m(cls), l(str, objArr), th2);
        }
    }

    public static void i(String str, String str2) {
        if (f62073a.e(6)) {
            f62073a.e(str, str2);
        }
    }

    public static void j(String str, String str2, Throwable th2) {
        if (f62073a.e(6)) {
            f62073a.e(str, str2, th2);
        }
    }

    public static void k(String str, String str2, Object... objArr) {
        if (f62073a.e(6)) {
            f62073a.e(str, l(str2, objArr));
        }
    }

    private static String l(String str, Object... objArr) {
        return String.format(null, str, objArr);
    }

    private static String m(Class<?> cls) {
        return cls.getSimpleName();
    }

    public static boolean n(int i10) {
        return f62073a.e(i10);
    }

    public static void o(Class<?> cls, String str) {
        if (f62073a.e(2)) {
            f62073a.c(m(cls), str);
        }
    }

    public static void p(Class<?> cls, String str, Object obj) {
        if (f62073a.e(2)) {
            f62073a.c(m(cls), l(str, obj));
        }
    }

    public static void q(Class<?> cls, String str, Object obj, Object obj2) {
        if (f62073a.e(2)) {
            f62073a.c(m(cls), l(str, obj, obj2));
        }
    }

    public static void r(Class<?> cls, String str, Object obj, Object obj2, Object obj3) {
        if (n(2)) {
            o(cls, l(str, obj, obj2, obj3));
        }
    }

    public static void s(Class<?> cls, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (f62073a.e(2)) {
            f62073a.c(m(cls), l(str, obj, obj2, obj3, obj4));
        }
    }

    public static void t(Class<?> cls, String str, Object... objArr) {
        if (f62073a.e(2)) {
            f62073a.c(m(cls), l(str, objArr));
        }
    }

    public static void u(String str, String str2, Object... objArr) {
        if (f62073a.e(2)) {
            f62073a.c(str, l(str2, objArr));
        }
    }

    public static void v(Class<?> cls, String str) {
        if (f62073a.e(5)) {
            f62073a.w(m(cls), str);
        }
    }

    public static void w(Class<?> cls, String str, Throwable th2) {
        if (f62073a.e(5)) {
            f62073a.w(m(cls), str, th2);
        }
    }

    public static void x(Class<?> cls, String str, Object... objArr) {
        if (f62073a.e(5)) {
            f62073a.w(m(cls), l(str, objArr));
        }
    }

    public static void y(Class<?> cls, Throwable th2, String str, Object... objArr) {
        if (n(5)) {
            w(cls, l(str, objArr), th2);
        }
    }

    public static void z(String str, String str2, Object... objArr) {
        if (f62073a.e(5)) {
            f62073a.w(str, l(str2, objArr));
        }
    }
}
