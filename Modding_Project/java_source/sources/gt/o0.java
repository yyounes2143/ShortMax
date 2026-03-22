package gt;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DispatchedTask.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 4 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,220:1\n184#1,17:238\n1#2:221\n236#3:222\n237#3,2:233\n239#3:237\n103#4,10:223\n114#4,2:235\n57#5,2:255\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n*L\n174#1:238,17\n162#1:222\n162#1:233,2\n162#1:237\n162#1:223,10\n162#1:235,2\n204#1:255,2\n*E\n"})
/* loaded from: classes8.dex */
public final class o0 {
    public static final <T> void a(@NotNull kotlinx.coroutines.k<? super T> kVar, int i10) {
        boolean z10;
        rs.c<? super T> c10 = kVar.c();
        if (i10 == 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 && (c10 instanceof mt.h) && b(i10) == b(kVar.f61825c)) {
            mt.h hVar = (mt.h) c10;
            c0 c0Var = hVar.f62663d;
            CoroutineContext context = hVar.getContext();
            if (mt.i.d(c0Var, context)) {
                mt.i.c(c0Var, context, kVar);
                return;
            } else {
                e(kVar);
                return;
            }
        }
        d(kVar, c10, z10);
    }

    public static final boolean b(int i10) {
        if (i10 == 1 || i10 == 2) {
            return true;
        }
        return false;
    }

    public static final boolean c(int i10) {
        if (i10 == 2) {
            return true;
        }
        return false;
    }

    public static final <T> void d(@NotNull kotlinx.coroutines.k<? super T> kVar, @NotNull rs.c<? super T> cVar, boolean z10) {
        Object h10;
        w1<?> w1Var;
        boolean V0;
        Object j10 = kVar.j();
        Throwable d10 = kVar.d(j10);
        if (d10 != null) {
            Result.a aVar = Result.f60901b;
            h10 = kotlin.f.a(d10);
        } else {
            Result.a aVar2 = Result.f60901b;
            h10 = kVar.h(j10);
        }
        Object d11 = Result.d(h10);
        if (z10) {
            Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
            mt.h hVar = (mt.h) cVar;
            rs.c<T> cVar2 = hVar.f62664e;
            Object obj = hVar.f62666g;
            CoroutineContext context = cVar2.getContext();
            Object i10 = mt.h0.i(context, obj);
            if (i10 != mt.h0.f62667a) {
                w1Var = a0.m(cVar2, context, i10);
            } else {
                w1Var = null;
            }
            try {
                hVar.f62664e.resumeWith(d11);
                Unit unit = Unit.f60915a;
                if (w1Var != null) {
                    if (!V0) {
                        return;
                    }
                }
                return;
            } finally {
                if (w1Var == null || w1Var.V0()) {
                    mt.h0.f(context, i10);
                }
            }
        }
        cVar.resumeWith(d11);
    }

    private static final void e(kotlinx.coroutines.k<?> kVar) {
        u0 b10 = u1.f52561a.b();
        if (b10.x()) {
            b10.t(kVar);
            return;
        }
        b10.v(true);
        try {
            d(kVar, kVar.c(), true);
            do {
            } while (b10.T());
        } finally {
            try {
            } finally {
            }
        }
    }
}
