package hb;
/* loaded from: classes5.dex */
public class f1 {

    /* renamed from: a  reason: collision with root package name */
    private static k0 f52687a = new k0();

    public static void a(int i10) {
        f52687a.b(i10);
    }

    public static void b(String str, String str2) {
        if (d() && str != null && str2 != null) {
            f52687a.d(3, str, str2);
        }
    }

    public static void c(String str, String str2, Object... objArr) {
        if (i() && str != null && str2 != null) {
            f52687a.d(4, str, String.format(str2, objArr));
        }
    }

    private static boolean d() {
        return f52687a.e(3);
    }

    public static void e(String str, String str2) {
        if (g() && str != null && str2 != null) {
            f52687a.d(6, str, str2);
        }
    }

    public static void f(String str, String str2, Object... objArr) {
        j(str, String.format(str2, objArr));
    }

    private static boolean g() {
        return f52687a.e(6);
    }

    public static void h(String str, String str2) {
        if (i() && str != null && str2 != null) {
            f52687a.d(4, str, str2);
        }
    }

    private static boolean i() {
        return f52687a.e(4);
    }

    public static void j(String str, String str2) {
        if (str != null && str2 != null) {
            f52687a.d(4, str, str2);
        }
    }

    private static boolean k() {
        return f52687a.e(5);
    }

    public static void l(String str, String str2) {
        if (str != null && str2 != null) {
            f52687a.d(5, str, str2);
        }
    }

    public static void m(String str, String str2) {
        if (k() && str != null && str2 != null) {
            f52687a.d(5, str, str2);
        }
    }
}
