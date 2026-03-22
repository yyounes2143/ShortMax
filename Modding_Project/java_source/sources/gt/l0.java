package gt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.common.kt */
@Metadata
/* loaded from: classes8.dex */
public class l0<T> extends kotlinx.coroutines.a<T> implements k0<T> {
    public l0(@NotNull CoroutineContext coroutineContext, boolean z10) {
        super(coroutineContext, true, z10);
    }

    static /* synthetic */ <T> Object U0(l0<T> l0Var, rs.c<? super T> cVar) {
        Object H = l0Var.H(cVar);
        kotlin.coroutines.intrinsics.a.f();
        return H;
    }

    @Override // gt.k0
    @Nullable
    public Object await(@NotNull rs.c<? super T> cVar) {
        return U0(this, cVar);
    }

    @Override // gt.k0
    public T getCompleted() {
        return (T) W();
    }
}
