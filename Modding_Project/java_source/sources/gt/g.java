package gt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.c;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineStart;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Builders.common.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuilders.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,268:1\n91#2,5:269\n*S KotlinDebug\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n*L\n164#1:269,5\n*E\n"})
/* loaded from: classes8.dex */
public final /* synthetic */ class g {
    @NotNull
    public static final <T> k0<T> a(@NotNull g0 g0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2) {
        l0 l0Var;
        CoroutineContext j10 = a0.j(g0Var, coroutineContext);
        if (coroutineStart.isLazy()) {
            l0Var = new h1(j10, function2);
        } else {
            l0Var = new l0(j10, true);
        }
        ((kotlinx.coroutines.a) l0Var).T0(coroutineStart, l0Var, function2);
        return l0Var;
    }

    public static /* synthetic */ k0 b(g0 g0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        if ((i10 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return e.a(g0Var, coroutineContext, coroutineStart, function2);
    }

    @NotNull
    public static final kotlinx.coroutines.r c(@NotNull g0 g0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> function2) {
        kotlinx.coroutines.a p1Var;
        CoroutineContext j10 = a0.j(g0Var, coroutineContext);
        if (coroutineStart.isLazy()) {
            p1Var = new i1(j10, function2);
        } else {
            p1Var = new p1(j10, true);
        }
        p1Var.T0(coroutineStart, p1Var, function2);
        return p1Var;
    }

    public static /* synthetic */ kotlinx.coroutines.r d(g0 g0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        if ((i10 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return e.c(g0Var, coroutineContext, coroutineStart, function2);
    }

    @Nullable
    public static final <T> Object e(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        Object V0;
        CoroutineContext context = cVar.getContext();
        CoroutineContext k10 = a0.k(context, coroutineContext);
        kotlinx.coroutines.t.k(k10);
        if (k10 == context) {
            mt.w wVar = new mt.w(k10, cVar);
            V0 = nt.b.d(wVar, wVar, function2);
        } else {
            c.b bVar = kotlin.coroutines.c.F8;
            if (Intrinsics.areEqual(k10.get(bVar), context.get(bVar))) {
                w1 w1Var = new w1(k10, cVar);
                CoroutineContext context2 = w1Var.getContext();
                Object i10 = mt.h0.i(context2, null);
                try {
                    Object d10 = nt.b.d(w1Var, w1Var, function2);
                    mt.h0.f(context2, i10);
                    V0 = d10;
                } catch (Throwable th2) {
                    mt.h0.f(context2, i10);
                    throw th2;
                }
            } else {
                kotlinx.coroutines.j jVar = new kotlinx.coroutines.j(k10, cVar);
                nt.a.b(function2, jVar, jVar);
                V0 = jVar.V0();
            }
        }
        if (V0 == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return V0;
    }
}
