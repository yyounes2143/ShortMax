package gt;

import java.util.concurrent.Future;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Executors.kt */
@Metadata
/* loaded from: classes8.dex */
final class r0 implements s0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Future<?> f52554a;

    public r0(@NotNull Future<?> future) {
        this.f52554a = future;
    }

    @Override // gt.s0
    public void dispose() {
        this.f52554a.cancel(false);
    }

    @NotNull
    public String toString() {
        return "DisposableFutureHandle[" + this.f52554a + ']';
    }
}
