package kotlinx.coroutines;

import gt.g0;
import gt.q0;
import gt.r1;
import gt.z0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineScope.kt */
@Metadata
/* loaded from: classes8.dex */
public final class i {
    @NotNull
    public static final g0 a(@NotNull CoroutineContext coroutineContext) {
        gt.s b10;
        if (coroutineContext.get(r.G8) == null) {
            b10 = JobKt__JobKt.b(null, 1, null);
            coroutineContext = coroutineContext.plus(b10);
        }
        return new mt.e(coroutineContext);
    }

    @NotNull
    public static final g0 b() {
        return new mt.e(r1.b(null, 1, null).plus(q0.c()));
    }

    public static final void c(@NotNull g0 g0Var, @NotNull String str, @Nullable Throwable th2) {
        d(g0Var, z0.a(str, th2));
    }

    public static final void d(@NotNull g0 g0Var, @Nullable CancellationException cancellationException) {
        r rVar = (r) g0Var.getCoroutineContext().get(r.G8);
        if (rVar != null) {
            rVar.cancel(cancellationException);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + g0Var).toString());
    }

    public static /* synthetic */ void e(g0 g0Var, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        d(g0Var, cancellationException);
    }

    @Nullable
    public static final <R> Object f(@NotNull Function2<? super g0, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        mt.w wVar = new mt.w(cVar.getContext(), cVar);
        Object d10 = nt.b.d(wVar, wVar, function2);
        if (d10 == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return d10;
    }

    public static final void g(@NotNull g0 g0Var) {
        t.k(g0Var.getCoroutineContext());
    }

    public static final boolean h(@NotNull g0 g0Var) {
        r rVar = (r) g0Var.getCoroutineContext().get(r.G8);
        if (rVar != null) {
            return rVar.isActive();
        }
        return true;
    }

    @NotNull
    public static final g0 i(@NotNull g0 g0Var, @NotNull CoroutineContext coroutineContext) {
        return new mt.e(g0Var.getCoroutineContext().plus(coroutineContext));
    }
}
