package mt;

import gt.s0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
/* compiled from: NamedDispatcher.kt */
@Metadata
/* loaded from: classes8.dex */
public final class t extends gt.c0 implements gt.m0 {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ gt.m0 f62704a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final gt.c0 f62705b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f62706c;

    public t(@NotNull gt.c0 c0Var, @NotNull String str) {
        gt.m0 m0Var;
        if (c0Var instanceof gt.m0) {
            m0Var = (gt.m0) c0Var;
        } else {
            m0Var = null;
        }
        this.f62704a = m0Var == null ? gt.j0.a() : m0Var;
        this.f62705b = c0Var;
        this.f62706c = str;
    }

    @Override // gt.m0
    public void a(long j10, @NotNull gt.i<? super Unit> iVar) {
        this.f62704a.a(j10, iVar);
    }

    @Override // gt.m0
    @NotNull
    public s0 c(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return this.f62704a.c(j10, runnable, coroutineContext);
    }

    @Override // gt.c0
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        this.f62705b.dispatch(coroutineContext, runnable);
    }

    @Override // gt.c0
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        this.f62705b.dispatchYield(coroutineContext, runnable);
    }

    @Override // gt.c0
    public boolean isDispatchNeeded(@NotNull CoroutineContext coroutineContext) {
        return this.f62705b.isDispatchNeeded(coroutineContext);
    }

    @Override // gt.c0
    @NotNull
    public String toString() {
        return this.f62706c;
    }
}
