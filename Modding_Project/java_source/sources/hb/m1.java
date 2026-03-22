package hb;
/* loaded from: classes5.dex */
public abstract class m1 {
    public static String a(String str, String str2) {
        c0 c10 = c(str, str2);
        if (c10 != null) {
            return c10.a();
        }
        return "";
    }

    public static boolean b(String str, String str2) {
        c0 c10 = c(str, str2);
        if (c10 != null && c10.h()) {
            return true;
        }
        return false;
    }

    private static c0 c(String str, String str2) {
        y0 b10;
        i0 a10 = z0.e().a(str);
        if (a10 != null && (b10 = a10.b(str2)) != null) {
            return b10.z();
        }
        return null;
    }

    public static String d(String str, String str2) {
        c0 c10 = c(str, str2);
        if (c10 != null) {
            return c10.c();
        }
        return "";
    }

    public static boolean e(String str, String str2) {
        c0 c10 = c(str, str2);
        if (c10 != null && c10.i()) {
            return true;
        }
        return false;
    }

    public static boolean f(String str, String str2) {
        y0 b10;
        i0 a10 = z0.e().a(str);
        if (a10 != null && (b10 = a10.b(str2)) != null) {
            return b10.m();
        }
        return false;
    }

    public static String g(String str, String str2) {
        c0 c10 = c(str, str2);
        if (c10 != null) {
            return c10.g();
        }
        return "";
    }

    public static boolean h(String str, String str2) {
        c0 c10 = c(str, str2);
        if (c10 != null && c10.j()) {
            return true;
        }
        return false;
    }

    public static boolean i(String str, String str2) {
        y0 b10;
        i0 a10 = z0.e().a(str);
        if (a10 != null && (b10 = a10.b(str2)) != null) {
            return b10.s();
        }
        return false;
    }

    public static String j(String str, String str2) {
        c0 c10 = c(str, str2);
        if (c10 != null) {
            return c10.e();
        }
        return "";
    }

    public static boolean k(String str, String str2) {
        c0 c10 = c(str, str2);
        if (c10 != null && c10.k()) {
            return true;
        }
        return false;
    }
}
