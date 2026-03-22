package kotlinx.coroutines.channels;

import gt.e0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.h;
import org.jetbrains.annotations.NotNull;
/* compiled from: Produce.kt */
@Metadata
/* loaded from: classes8.dex */
final class f<E> extends jt.e<E> implements jt.h<E> {
    public f(@NotNull CoroutineContext coroutineContext, @NotNull jt.d<E> dVar) {
        super(coroutineContext, dVar, true, true);
    }

    @Override // kotlinx.coroutines.a
    protected void R0(@NotNull Throwable th2, boolean z10) {
        if (!U0().a(th2) && !z10) {
            e0.a(getContext(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.a
    /* renamed from: V0 */
    public void S0(@NotNull Unit unit) {
        h.a.a(U0(), null, 1, null);
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.JobSupport, kotlinx.coroutines.r
    public boolean isActive() {
        return super.isActive();
    }
}
