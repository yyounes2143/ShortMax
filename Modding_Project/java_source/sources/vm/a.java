package vm;

import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import fr.h;
/* compiled from: LogSafeRunnable.java */
/* loaded from: classes7.dex */
public interface a extends h {
    @Override // fr.h
    @CallSuper
    default void b(@NonNull Throwable th2) throws Throwable {
        io.bidmachine.core.a.m(th2);
    }
}
