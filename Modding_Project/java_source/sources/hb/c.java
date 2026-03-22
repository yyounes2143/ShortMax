package hb;

import java.util.Map;
/* loaded from: classes5.dex */
public abstract class c {
    public static void a(String str, String str2, long j10) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            i10.b(j10);
        }
    }

    public static boolean b(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.f();
        }
        return true;
    }

    public static int c(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.n();
        }
        return 7;
    }

    public static boolean d(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.w();
        }
        return true;
    }

    public static String e(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.t();
        }
        return "";
    }

    public static boolean f(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.y();
        }
        return false;
    }

    public static String g(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.x();
        }
        return "";
    }

    public static String h(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.D();
        }
        return "";
    }

    private static y0 i(String str, String str2) {
        i0 a10 = z0.e().a(str);
        if (a10 != null) {
            if ("alltype".equals(str2)) {
                y0 b10 = a10.b("oper");
                if (b10 == null) {
                    return a10.b("maint");
                }
                return b10;
            }
            return a10.b(str2);
        }
        return null;
    }

    public static Map<String, String> j(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.A();
        }
        return null;
    }

    public static long k(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.B();
        }
        return 0L;
    }

    public static int l(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.g();
        }
        return 10;
    }

    public static String m(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.E();
        }
        return "";
    }

    public static String n(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.G();
        }
        return "";
    }

    public static String o(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.C();
        }
        return "";
    }

    public static String p(String str, String str2) {
        y0 i10 = i(str, str2);
        if (i10 != null) {
            return i10.F();
        }
        return "";
    }
}
