package gt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancellableContinuation.kt */
@Metadata
/* loaded from: classes8.dex */
final class t0 implements kotlinx.coroutines.d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final s0 f52557a;

    public t0(@NotNull s0 s0Var) {
        this.f52557a = s0Var;
    }

    @Override // kotlinx.coroutines.d
    public void a(@Nullable Throwable th2) {
        this.f52557a.dispose();
    }

    @NotNull
    public String toString() {
        return "DisposeOnCancel[" + this.f52557a + ']';
    }
}
