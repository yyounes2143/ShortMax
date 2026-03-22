package kotlinx.coroutines;

import gt.g1;
import gt.s0;
import gt.z0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Job.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,692:1\n1317#2,2:693\n1317#2,2:695\n1317#2,2:697\n1317#2,2:699\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n520#1:693,2\n534#1:695,2\n628#1:697,2\n652#1:699,2\n*E\n"})
/* loaded from: classes8.dex */
public final /* synthetic */ class JobKt__JobKt {
    @NotNull
    public static final gt.s a(@Nullable r rVar) {
        return new s(rVar);
    }

    public static /* synthetic */ gt.s b(r rVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            rVar = null;
        }
        return t.a(rVar);
    }

    public static final void c(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        r rVar = (r) coroutineContext.get(r.G8);
        if (rVar != null) {
            rVar.cancel(cancellationException);
        }
    }

    public static final void d(@NotNull r rVar, @NotNull String str, @Nullable Throwable th2) {
        rVar.cancel(z0.a(str, th2));
    }

    public static /* synthetic */ void e(CoroutineContext coroutineContext, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        t.c(coroutineContext, cancellationException);
    }

    public static /* synthetic */ void f(r rVar, String str, Throwable th2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            th2 = null;
        }
        t.d(rVar, str, th2);
    }

    @Nullable
    public static final Object g(@NotNull r rVar, @NotNull rs.c<? super Unit> cVar) {
        r.a.b(rVar, null, 1, null);
        Object join = rVar.join(cVar);
        if (join == kotlin.coroutines.intrinsics.a.f()) {
            return join;
        }
        return Unit.f60915a;
    }

    public static final void h(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        Sequence<r> children;
        r rVar = (r) coroutineContext.get(r.G8);
        if (rVar != null && (children = rVar.getChildren()) != null) {
            for (r rVar2 : children) {
                rVar2.cancel(cancellationException);
            }
        }
    }

    public static /* synthetic */ void i(CoroutineContext coroutineContext, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        t.h(coroutineContext, cancellationException);
    }

    @NotNull
    public static final s0 j(@NotNull r rVar, @NotNull s0 s0Var) {
        s0 o10;
        o10 = o(rVar, false, new l(s0Var), 1, null);
        return o10;
    }

    public static final void k(@NotNull CoroutineContext coroutineContext) {
        r rVar = (r) coroutineContext.get(r.G8);
        if (rVar != null) {
            t.l(rVar);
        }
    }

    public static final void l(@NotNull r rVar) {
        if (rVar.isActive()) {
            return;
        }
        throw rVar.getCancellationException();
    }

    @NotNull
    public static final r m(@NotNull CoroutineContext coroutineContext) {
        r rVar = (r) coroutineContext.get(r.G8);
        if (rVar != null) {
            return rVar;
        }
        throw new IllegalStateException(("Current context doesn't contain Job in it: " + coroutineContext).toString());
    }

    @NotNull
    public static final s0 n(@NotNull r rVar, boolean z10, @NotNull g1 g1Var) {
        if (rVar instanceof JobSupport) {
            return ((JobSupport) rVar).k0(z10, g1Var);
        }
        return rVar.invokeOnCompletion(g1Var.u(), z10, new JobKt__JobKt$invokeOnCompletion$1(g1Var));
    }

    public static /* synthetic */ s0 o(r rVar, boolean z10, g1 g1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return t.n(rVar, z10, g1Var);
    }

    public static final boolean p(@NotNull CoroutineContext coroutineContext) {
        r rVar = (r) coroutineContext.get(r.G8);
        if (rVar != null) {
            return rVar.isActive();
        }
        return true;
    }
}
