package cr;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CancelableTask.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class b implements Runnable, yq.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f49732a = new AtomicBoolean(false);

    @Override // yq.a
    public void a(boolean z10) {
        this.f49732a.set(z10);
    }

    public boolean c() {
        return this.f49732a.get();
    }

    public abstract void d();

    @Override // java.lang.Runnable
    public void run() {
        if (c()) {
            return;
        }
        d();
    }
}
