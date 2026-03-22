package nt;

import gt.t;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.u;
import mt.h0;
import mt.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Undispatched.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUndispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n+ 2 ProbesSupport.kt\nkotlinx/coroutines/internal/ProbesSupportKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,105:1\n8#2:106\n11#2,2:110\n91#3,3:107\n95#3:112\n57#4,2:113\n57#4,2:115\n57#4,2:117\n*S KotlinDebug\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n*L\n14#1:106\n19#1:110,2\n18#1:107,3\n18#1:112\n88#1:113,2\n89#1:115,2\n103#1:117,2\n*E\n"})
/* loaded from: classes8.dex */
public final class b {
    private static final Void a(w<?> wVar, DispatchException dispatchException) {
        wVar.p0(new t(dispatchException.getCause(), false, 2, null));
        throw dispatchException.getCause();
    }

    private static final boolean b(w<?> wVar, Throwable th2) {
        if ((th2 instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th2).f61305a == wVar) {
            return false;
        }
        return true;
    }

    public static final <R, T> void c(@NotNull Function2<? super R, ? super c<? super T>, ? extends Object> function2, R r10, @NotNull c<? super T> cVar) {
        Object invoke;
        c a10 = f.a(cVar);
        try {
            CoroutineContext context = a10.getContext();
            Object i10 = h0.i(context, null);
            f.b(a10);
            if (!(function2 instanceof BaseContinuationImpl)) {
                invoke = kotlin.coroutines.intrinsics.a.e(function2, r10, a10);
            } else {
                invoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r10, a10);
            }
            h0.f(context, i10);
            if (invoke != kotlin.coroutines.intrinsics.a.f()) {
                a10.resumeWith(Result.d(invoke));
            }
        } catch (Throwable th2) {
            th = th2;
            if (th instanceof DispatchException) {
                th = ((DispatchException) th).getCause();
            }
            Result.a aVar = Result.f60901b;
            a10.resumeWith(Result.d(kotlin.f.a(th)));
        }
    }

    @Nullable
    public static final <T, R> Object d(@NotNull w<? super T> wVar, R r10, @NotNull Function2<? super R, ? super c<? super T>, ? extends Object> function2) {
        return f(wVar, true, r10, function2);
    }

    @Nullable
    public static final <T, R> Object e(@NotNull w<? super T> wVar, R r10, @NotNull Function2<? super R, ? super c<? super T>, ? extends Object> function2) {
        return f(wVar, false, r10, function2);
    }

    private static final <T, R> Object f(w<? super T> wVar, boolean z10, R r10, Function2<? super R, ? super c<? super T>, ? extends Object> function2) {
        Object tVar;
        try {
            if (!(function2 instanceof BaseContinuationImpl)) {
                tVar = kotlin.coroutines.intrinsics.a.e(function2, r10, wVar);
            } else {
                tVar = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r10, wVar);
            }
        } catch (DispatchException e10) {
            a(wVar, e10);
            throw new KotlinNothingValueException();
        } catch (Throwable th2) {
            tVar = new t(th2, false, 2, null);
        }
        if (tVar == kotlin.coroutines.intrinsics.a.f()) {
            return kotlin.coroutines.intrinsics.a.f();
        }
        Object q02 = wVar.q0(tVar);
        if (q02 == u.f61910b) {
            return kotlin.coroutines.intrinsics.a.f();
        }
        wVar.U0();
        if (q02 instanceof t) {
            if (!z10 && !b(wVar, ((t) q02).f52556a)) {
                if (tVar instanceof t) {
                    throw ((t) tVar).f52556a;
                }
                return tVar;
            }
            throw ((t) q02).f52556a;
        }
        return u.h(q02);
    }
}
