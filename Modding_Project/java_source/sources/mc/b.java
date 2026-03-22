package mc;

import android.util.Log;
/* compiled from: TTVideoLog.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static int f62502a = 112;

    public static final void a(String str, String str2) {
        if (((f62502a >> 1) & 1) == 1) {
            Log.d("TTVideoLog", String.format("<%s>%s", str, str2));
        }
    }

    public static void b(Throwable th2) {
        if (((f62502a >> 1) & 1) == 1) {
            th2.printStackTrace();
        }
    }

    public static void c(String str, String str2) {
        if (((f62502a >> 6) & 1) == 1) {
            Log.e("TTVideoLog", String.format("<%s>%s", str, str2));
        }
    }

    public static final void d(String str, String str2) {
        if (((f62502a >> 2) & 1) == 1) {
            Log.i("TTVideoLog", String.format("<%s>%s", str, str2));
        }
    }

    public static final void e(int i10, int i11) {
        f62502a = (i11 << i10) | ((~(1 << i10)) & f62502a);
    }
}
