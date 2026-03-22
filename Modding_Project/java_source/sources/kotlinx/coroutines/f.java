package kotlinx.coroutines;

import gt.g1;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CancellableContinuationImpl.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f extends g1 {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final e<?> f61395e;

    public f(@NotNull e<?> eVar) {
        this.f61395e = eVar;
    }

    @Override // gt.g1
    public boolean u() {
        return true;
    }

    @Override // gt.g1
    public void v(@Nullable Throwable th2) {
        e<?> eVar = this.f61395e;
        eVar.O(eVar.z(t()));
    }
}
