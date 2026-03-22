package tq;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.TimeUnit;
/* loaded from: classes8.dex */
public abstract class c extends a {
    @NonNull
    protected abstract Handler b();

    protected boolean c() {
        if (Looper.myLooper() == b().getLooper()) {
            return true;
        }
        return false;
    }

    @Override // tq.a, tq.d
    public void cancel(@NonNull Runnable runnable) {
        super.cancel(runnable);
        b().removeCallbacks(runnable);
    }

    @Override // tq.a, tq.d
    public void execute(@NonNull Runnable runnable) {
        super.execute(runnable);
        if (c()) {
            runnable.run();
        } else {
            b().post(runnable);
        }
    }

    @Override // tq.a, tq.d
    public void schedule(@NonNull Runnable runnable, long j10, @NonNull TimeUnit timeUnit) {
        super.schedule(runnable, j10, timeUnit);
        b().postDelayed(runnable, timeUnit.toMillis(j10));
    }
}
