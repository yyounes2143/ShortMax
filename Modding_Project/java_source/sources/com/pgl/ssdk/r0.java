package com.pgl.ssdk;

import android.os.Handler;
/* loaded from: classes6.dex */
public class r0 {
    public static Handler a() {
        return a1.a().b();
    }

    public static Handler b() {
        return a1.a().c();
    }

    public static void a(Runnable runnable) {
        Handler a10;
        if (runnable == null || (a10 = a()) == null) {
            return;
        }
        a10.post(runnable);
    }

    public static void b(Runnable runnable) {
        Handler b10;
        if (runnable == null || (b10 = b()) == null) {
            return;
        }
        b10.post(runnable);
    }
}
