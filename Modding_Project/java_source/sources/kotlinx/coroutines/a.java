package kotlinx.coroutines;

import gt.a0;
import gt.e0;
import gt.g0;
import gt.h0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractCoroutine.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class a<T> extends JobSupport implements r, rs.c<T>, g0 {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final CoroutineContext f61311c;

    public a(@NotNull CoroutineContext coroutineContext, boolean z10, boolean z11) {
        super(z11);
        if (z10) {
            j0((r) coroutineContext.get(r.G8));
        }
        this.f61311c = coroutineContext.plus(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    @NotNull
    public String Q() {
        return h0.a(this) + " was cancelled";
    }

    protected void Q0(@Nullable Object obj) {
        G(obj);
    }

    public final <R> void T0(@NotNull CoroutineStart coroutineStart, R r10, @NotNull Function2<? super R, ? super rs.c<? super T>, ? extends Object> function2) {
        coroutineStart.invoke(function2, r10, this);
    }

    @Override // rs.c
    @NotNull
    public final CoroutineContext getContext() {
        return this.f61311c;
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f61311c;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void i0(@NotNull Throwable th2) {
        e0.a(this.f61311c, th2);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.r
    public boolean isActive() {
        return super.isActive();
    }

    @Override // rs.c
    public final void resumeWith(@NotNull Object obj) {
        Object q02 = q0(gt.u.b(obj));
        if (q02 == u.f61910b) {
            return;
        }
        Q0(q02);
    }

    @Override // kotlinx.coroutines.JobSupport
    @NotNull
    public String s0() {
        String g10 = a0.g(this.f61311c);
        if (g10 == null) {
            return super.s0();
        }
        return '\"' + g10 + "\":" + super.s0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.JobSupport
    protected final void z0(@Nullable Object obj) {
        if (obj instanceof gt.t) {
            gt.t tVar = (gt.t) obj;
            R0(tVar.f52556a, tVar.a());
            return;
        }
        S0(obj);
    }

    protected void S0(T t10) {
    }

    protected void R0(@NotNull Throwable th2, boolean z10) {
    }
}
