package ib;

import android.os.Looper;
/* compiled from: HuaweiIdValidator.java */
/* loaded from: classes5.dex */
public class k0 {
    public static void a() {
        b("Must not be called on the main application thread");
    }

    public static void b(String str) {
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            return;
        }
        throw new IllegalStateException(str);
    }
}
