package mt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Scopes.kt */
@Metadata
/* loaded from: classes8.dex */
public class w<T> extends kotlinx.coroutines.a<T> implements kotlin.coroutines.jvm.internal.c {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final rs.c<T> f62707d;

    /* JADX WARN: Multi-variable type inference failed */
    public w(@NotNull CoroutineContext coroutineContext, @NotNull rs.c<? super T> cVar) {
        super(coroutineContext, true, true);
        this.f62707d = cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    public void G(@Nullable Object obj) {
        i.b(kotlin.coroutines.intrinsics.a.c(this.f62707d), gt.u.a(obj, this.f62707d));
    }

    @Override // kotlinx.coroutines.a
    protected void Q0(@Nullable Object obj) {
        rs.c<T> cVar = this.f62707d;
        cVar.resumeWith(gt.u.a(obj, cVar));
    }

    @Override // kotlin.coroutines.jvm.internal.c
    @Nullable
    public final kotlin.coroutines.jvm.internal.c getCallerFrame() {
        rs.c<T> cVar = this.f62707d;
        if (cVar instanceof kotlin.coroutines.jvm.internal.c) {
            return (kotlin.coroutines.jvm.internal.c) cVar;
        }
        return null;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected final boolean l0() {
        return true;
    }

    public void U0() {
    }
}
