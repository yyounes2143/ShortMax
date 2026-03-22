package yq;

import androidx.annotation.CallSuper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SafeRunnable.kt */
@Metadata
/* loaded from: classes8.dex */
public interface m extends Runnable {
    default void b(@NotNull Throwable throwable) throws Throwable {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
    }

    @Override // java.lang.Runnable
    @CallSuper
    default void run() {
        try {
            s();
        } catch (Throwable th2) {
            try {
                b(th2);
                Unit unit = Unit.f60915a;
            } catch (Throwable unused) {
            }
        }
    }

    void s() throws Throwable;
}
