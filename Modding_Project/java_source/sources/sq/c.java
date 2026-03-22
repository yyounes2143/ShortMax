package sq;

import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes8.dex */
public class c implements Runnable {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f66572a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f66573b;

    public c(int i10, @NonNull Runnable runnable) {
        this.f66572a = runnable;
        this.f66573b = new AtomicInteger(i10);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f66573b.decrementAndGet() > 0) {
            return;
        }
        this.f66572a.run();
    }
}
