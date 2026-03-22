package fr;

import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
/* compiled from: SafeRunnable.java */
/* loaded from: classes8.dex */
public interface h extends Runnable {
    void b(@NonNull Throwable th2) throws Throwable;

    @Override // java.lang.Runnable
    @CallSuper
    default void run() {
        try {
            s();
        } catch (Throwable th2) {
            try {
                b(th2);
            } catch (Throwable unused) {
            }
        }
    }

    void s() throws Throwable;
}
