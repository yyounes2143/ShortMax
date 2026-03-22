package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import mt.w;
import org.jetbrains.annotations.NotNull;
/* compiled from: FlowCoroutine.kt */
@Metadata
/* loaded from: classes8.dex */
final class b<T> extends w<T> {
    public b(@NotNull CoroutineContext coroutineContext, @NotNull rs.c<? super T> cVar) {
        super(coroutineContext, cVar);
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean R(@NotNull Throwable th2) {
        if (th2 instanceof ChildCancelledException) {
            return true;
        }
        return L(th2);
    }
}
