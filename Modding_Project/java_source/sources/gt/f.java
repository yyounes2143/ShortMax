package gt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineStart;
import org.jetbrains.annotations.NotNull;
/* compiled from: Builders.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BuildersKt__BuildersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"})
/* loaded from: classes8.dex */
public final /* synthetic */ class f {
    public static final <T> T a(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2) throws InterruptedException {
        u0 u0Var;
        u0 a10;
        CoroutineContext j10;
        Thread currentThread = Thread.currentThread();
        kotlin.coroutines.c cVar = (kotlin.coroutines.c) coroutineContext.get(kotlin.coroutines.c.F8);
        if (cVar == null) {
            a10 = u1.f52561a.b();
            j10 = a0.j(e1.f52533a, coroutineContext.plus(a10));
        } else {
            u0 u0Var2 = null;
            if (cVar instanceof u0) {
                u0Var = (u0) cVar;
            } else {
                u0Var = null;
            }
            if (u0Var != null) {
                if (u0Var.W()) {
                    u0Var2 = u0Var;
                }
                if (u0Var2 != null) {
                    a10 = u0Var2;
                    j10 = a0.j(e1.f52533a, coroutineContext);
                }
            }
            a10 = u1.f52561a.a();
            j10 = a0.j(e1.f52533a, coroutineContext);
        }
        c cVar2 = new c(j10, currentThread, a10);
        cVar2.T0(CoroutineStart.DEFAULT, cVar2, function2);
        return (T) cVar2.U0();
    }

    public static /* synthetic */ Object b(CoroutineContext coroutineContext, Function2 function2, int i10, Object obj) throws InterruptedException {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        return e.e(coroutineContext, function2);
    }
}
