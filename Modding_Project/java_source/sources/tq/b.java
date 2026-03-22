package tq;

import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes8.dex */
public abstract class b implements Runnable, sq.a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f67670a = new AtomicBoolean(false);

    @Override // sq.a
    public void a(boolean z10) {
        this.f67670a.set(z10);
    }

    public boolean c() {
        return this.f67670a.get();
    }

    public abstract void d();

    @Override // java.lang.Runnable
    public final void run() {
        if (c()) {
            return;
        }
        d();
    }
}
