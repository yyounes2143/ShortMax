package kotlinx.coroutines;

import gt.g1;
import gt.s0;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Job.kt */
@Metadata
/* loaded from: classes8.dex */
final class l extends g1 {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final s0 f61826e;

    public l(@NotNull s0 s0Var) {
        this.f61826e = s0Var;
    }

    @Override // gt.g1
    public boolean u() {
        return false;
    }

    @Override // gt.g1
    public void v(@Nullable Throwable th2) {
        this.f61826e.dispose();
    }
}
