package b7;

import android.os.Trace;
import androidx.annotation.RequiresApi;
/* compiled from: TraceUtil.java */
/* loaded from: classes4.dex */
public final class p0 {
    public static void a(String str) {
        if (s0.f2506a >= 18) {
            b(str);
        }
    }

    @RequiresApi(18)
    private static void b(String str) {
        Trace.beginSection(str);
    }

    public static void c() {
        if (s0.f2506a >= 18) {
            d();
        }
    }

    @RequiresApi(18)
    private static void d() {
        Trace.endSection();
    }
}
