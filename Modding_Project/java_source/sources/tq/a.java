package tq;

import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import java.util.concurrent.TimeUnit;
/* loaded from: classes8.dex */
public abstract class a implements d {
    private void a(@NonNull Runnable runnable, boolean z10) {
        try {
            if (runnable instanceof sq.a) {
                ((sq.a) runnable).a(z10);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // tq.d
    @CallSuper
    public void cancel(@NonNull Runnable runnable) {
        a(runnable, true);
    }

    @Override // tq.d
    @CallSuper
    public void execute(@NonNull Runnable runnable) {
        a(runnable, false);
    }

    @Override // tq.d
    @CallSuper
    public void schedule(@NonNull Runnable runnable, long j10, @NonNull TimeUnit timeUnit) {
        a(runnable, false);
    }
}
