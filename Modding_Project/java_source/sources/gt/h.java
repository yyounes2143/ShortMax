package gt;

import java.util.concurrent.Future;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Executors.kt */
@Metadata
/* loaded from: classes8.dex */
final class h implements kotlinx.coroutines.d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Future<?> f52537a;

    public h(@NotNull Future<?> future) {
        this.f52537a = future;
    }

    @Override // kotlinx.coroutines.d
    public void a(@Nullable Throwable th2) {
        this.f52537a.cancel(false);
    }

    @NotNull
    public String toString() {
        return "CancelFutureOnCancel[" + this.f52537a + ']';
    }
}
