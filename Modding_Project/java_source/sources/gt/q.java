package gt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobSupport;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CompletableDeferred.kt */
@Metadata
/* loaded from: classes8.dex */
public final class q<T> extends JobSupport implements p<T> {
    public q(@Nullable kotlinx.coroutines.r rVar) {
        super(true);
        j0(rVar);
    }

    @Override // gt.k0
    @Nullable
    public Object await(@NotNull rs.c<? super T> cVar) {
        Object H = H(cVar);
        kotlin.coroutines.intrinsics.a.f();
        return H;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean b0() {
        return true;
    }

    @Override // gt.p
    public boolean d(@NotNull Throwable th2) {
        return p0(new t(th2, false, 2, null));
    }

    @Override // gt.k0
    public T getCompleted() {
        return (T) W();
    }

    @Override // gt.k0
    @NotNull
    public pt.d<T> getOnAwait() {
        pt.d<T> dVar = (pt.d<T>) a0();
        Intrinsics.checkNotNull(dVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.CompletableDeferredImpl>");
        return dVar;
    }

    @Override // gt.p
    public boolean i(T t10) {
        return p0(t10);
    }
}
