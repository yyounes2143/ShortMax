package jr;

import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: CancelableTask.java */
/* loaded from: classes8.dex */
public abstract class b implements Runnable {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f60542a = new AtomicBoolean(false);

    public boolean a() {
        return this.f60542a.get();
    }

    public abstract void c();

    public void d(boolean z10) {
        this.f60542a.set(z10);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (a()) {
            return;
        }
        c();
    }
}
