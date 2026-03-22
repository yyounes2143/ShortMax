package h7;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: Preconditions.java */
/* loaded from: classes5.dex */
public final class k {
    private static String a(int i10, int i11, String str) {
        if (i10 < 0) {
            return m.a("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return m.a("%s (%s) must be less than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException("negative size: " + i11);
    }

    private static String b(int i10, int i11, String str) {
        if (i10 < 0) {
            return m.a("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return m.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException("negative size: " + i11);
    }

    private static String c(int i10, int i11, int i12) {
        if (i10 >= 0 && i10 <= i12) {
            if (i11 >= 0 && i11 <= i12) {
                return m.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            }
            return b(i11, i12, "end index");
        }
        return b(i10, i12, "start index");
    }

    public static void d(boolean z10) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException();
    }

    public static void e(boolean z10, Object obj) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    public static void f(boolean z10, String str, int i10, int i11) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(m.a(str, Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    public static void g(boolean z10, String str, long j10) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(m.a(str, Long.valueOf(j10)));
    }

    public static int h(int i10, int i11) {
        return i(i10, i11, TextureRenderKeys.KEY_IS_INDEX);
    }

    public static int i(int i10, int i11, String str) {
        if (i10 >= 0 && i10 < i11) {
            return i10;
        }
        throw new IndexOutOfBoundsException(a(i10, i11, str));
    }

    public static <T> T j(T t10) {
        t10.getClass();
        return t10;
    }

    public static <T> T k(T t10, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static int l(int i10, int i11) {
        return m(i10, i11, TextureRenderKeys.KEY_IS_INDEX);
    }

    public static int m(int i10, int i11, String str) {
        if (i10 >= 0 && i10 <= i11) {
            return i10;
        }
        throw new IndexOutOfBoundsException(b(i10, i11, str));
    }

    public static void n(int i10, int i11, int i12) {
        if (i10 >= 0 && i11 >= i10 && i11 <= i12) {
            return;
        }
        throw new IndexOutOfBoundsException(c(i10, i11, i12));
    }

    public static void o(boolean z10) {
        if (z10) {
            return;
        }
        throw new IllegalStateException();
    }

    public static void p(boolean z10, Object obj) {
        if (z10) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    public static void q(boolean z10, String str, int i10) {
        if (z10) {
            return;
        }
        throw new IllegalStateException(m.a(str, Integer.valueOf(i10)));
    }

    public static void r(boolean z10, String str, Object obj) {
        if (z10) {
            return;
        }
        throw new IllegalStateException(m.a(str, obj));
    }
}
