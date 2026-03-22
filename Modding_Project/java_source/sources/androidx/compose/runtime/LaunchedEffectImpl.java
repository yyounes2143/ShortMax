package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import gt.d0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Effects.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class LaunchedEffectImpl implements RememberObserver, gt.d0 {
    public static final int $stable = 8;
    @Nullable
    private r job;
    @NotNull
    private final CoroutineContext parentCoroutineContext;
    @NotNull
    private final gt.g0 scope;
    @NotNull
    private final Function2<gt.g0, rs.c<? super Unit>, Object> task;

    /* JADX WARN: Multi-variable type inference failed */
    public LaunchedEffectImpl(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super gt.g0, ? super rs.c<? super Unit>, ? extends Object> function2) {
        CoroutineContext coroutineContext2;
        this.parentCoroutineContext = coroutineContext;
        this.task = function2;
        if (coroutineContext.get(CompositionErrorContextImpl.Key) != null) {
            coroutineContext2 = this;
        } else {
            coroutineContext2 = EmptyCoroutineContext.f61040a;
        }
        this.scope = kotlinx.coroutines.i.a(coroutineContext.plus(coroutineContext2));
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) d0.a.a(this, r10, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        return (E) d0.a.b(this, bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public CoroutineContext.b<?> getKey() {
        return gt.d0.D8;
    }

    @Override // gt.d0
    public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th2) {
        CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) coroutineContext.get(CompositionErrorContextImpl.Key);
        if (compositionErrorContextImpl != null) {
            compositionErrorContextImpl.attachComposeStackTrace(th2, this);
        }
        gt.d0 d0Var = (gt.d0) this.parentCoroutineContext.get(gt.d0.D8);
        if (d0Var != null) {
            d0Var.handleException(coroutineContext, th2);
            return;
        }
        throw th2;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        return d0.a.c(this, bVar);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        r rVar = this.job;
        if (rVar != null) {
            rVar.cancel((CancellationException) new LeftCompositionCancellationException());
        }
        this.job = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        r rVar = this.job;
        if (rVar != null) {
            rVar.cancel((CancellationException) new LeftCompositionCancellationException());
        }
        this.job = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        r d10;
        r rVar = this.job;
        if (rVar != null) {
            JobKt__JobKt.f(rVar, "Old job was still running!", null, 2, null);
        }
        d10 = gt.g.d(this.scope, null, null, this.task, 3, null);
        this.job = d10;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return d0.a.d(this, coroutineContext);
    }
}
