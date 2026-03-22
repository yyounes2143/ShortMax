package mt;

import gt.u0;
import gt.u1;
import gt.w1;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DispatchException;
import org.jetbrains.annotations.NotNull;
/* compiled from: DispatchedContinuation.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 2 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,313:1\n293#1,5:321\n298#1,12:327\n310#1:395\n297#1:397\n298#1,12:399\n310#1:428\n207#2,7:314\n214#2,23:342\n237#2,2:375\n239#2:379\n217#2:380\n219#2:396\n1#3:326\n1#3:398\n1#3:429\n184#4,3:339\n187#4,14:381\n184#4,17:411\n184#4,17:430\n103#5,10:365\n114#5,2:377\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n*L\n278#1:321,5\n278#1:327,12\n278#1:395\n283#1:397\n283#1:399,12\n283#1:428\n278#1:314,7\n278#1:342,23\n278#1:375,2\n278#1:379\n278#1:380\n278#1:396\n278#1:326\n283#1:398\n278#1:339,3\n278#1:381,14\n283#1:411,17\n309#1:430,17\n278#1:365,10\n278#1:377,2\n*E\n"})
/* loaded from: classes8.dex */
public final class i {
    @NotNull

    /* renamed from: a */
    private static final a0 f62671a = new a0("UNDEFINED");
    @NotNull

    /* renamed from: b */
    public static final a0 f62672b = new a0("REUSABLE_CLAIMED");

    public static final /* synthetic */ a0 a() {
        return f62671a;
    }

    public static final <T> void b(@NotNull rs.c<? super T> cVar, @NotNull Object obj) {
        w1<?> w1Var;
        if (cVar instanceof h) {
            h hVar = (h) cVar;
            Object b10 = gt.u.b(obj);
            if (d(hVar.f62663d, hVar.getContext())) {
                hVar.f62665f = b10;
                hVar.f61825c = 1;
                c(hVar.f62663d, hVar.getContext(), hVar);
                return;
            }
            u0 b11 = u1.f52561a.b();
            if (b11.x()) {
                hVar.f62665f = b10;
                hVar.f61825c = 1;
                b11.t(hVar);
                return;
            }
            b11.v(true);
            try {
                kotlinx.coroutines.r rVar = (kotlinx.coroutines.r) hVar.getContext().get(kotlinx.coroutines.r.G8);
                if (rVar != null && !rVar.isActive()) {
                    CancellationException cancellationException = rVar.getCancellationException();
                    hVar.a(b10, cancellationException);
                    Result.a aVar = Result.f60901b;
                    hVar.resumeWith(Result.d(kotlin.f.a(cancellationException)));
                } else {
                    rs.c<T> cVar2 = hVar.f62664e;
                    Object obj2 = hVar.f62666g;
                    CoroutineContext context = cVar2.getContext();
                    Object i10 = h0.i(context, obj2);
                    if (i10 != h0.f62667a) {
                        w1Var = gt.a0.m(cVar2, context, i10);
                    } else {
                        w1Var = null;
                    }
                    hVar.f62664e.resumeWith(obj);
                    Unit unit = Unit.f60915a;
                    if (w1Var == null || w1Var.V0()) {
                        h0.f(context, i10);
                    }
                }
                do {
                } while (b11.T());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        cVar.resumeWith(obj);
    }

    public static final void c(@NotNull gt.c0 c0Var, @NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        try {
            c0Var.dispatch(coroutineContext, runnable);
        } catch (Throwable th2) {
            throw new DispatchException(th2, c0Var, coroutineContext);
        }
    }

    public static final boolean d(@NotNull gt.c0 c0Var, @NotNull CoroutineContext coroutineContext) {
        try {
            return c0Var.isDispatchNeeded(coroutineContext);
        } catch (Throwable th2) {
            throw new DispatchException(th2, c0Var, coroutineContext);
        }
    }

    public static final boolean e(@NotNull h<? super Unit> hVar) {
        Unit unit = Unit.f60915a;
        u0 b10 = u1.f52561a.b();
        if (b10.P()) {
            return false;
        }
        if (b10.x()) {
            hVar.f62665f = unit;
            hVar.f61825c = 1;
            b10.t(hVar);
            return true;
        }
        b10.v(true);
        try {
            hVar.run();
            do {
            } while (b10.T());
        } finally {
            try {
                return false;
            } finally {
            }
        }
        return false;
    }
}
