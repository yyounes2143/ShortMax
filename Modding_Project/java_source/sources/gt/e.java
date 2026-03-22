package gt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineStart;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class e {
    @NotNull
    public static final <T> k0<T> a(@NotNull g0 g0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2) {
        return g.a(g0Var, coroutineContext, coroutineStart, function2);
    }

    public static /* synthetic */ k0 b(g0 g0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i10, Object obj) {
        return g.b(g0Var, coroutineContext, coroutineStart, function2, i10, obj);
    }

    @NotNull
    public static final kotlinx.coroutines.r c(@NotNull g0 g0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return g.c(g0Var, coroutineContext, coroutineStart, function2);
    }

    public static /* synthetic */ kotlinx.coroutines.r d(g0 g0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i10, Object obj) {
        return g.d(g0Var, coroutineContext, coroutineStart, function2, i10, obj);
    }

    public static final <T> T e(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2) throws InterruptedException {
        return (T) f.a(coroutineContext, function2);
    }

    public static /* synthetic */ Object f(CoroutineContext coroutineContext, Function2 function2, int i10, Object obj) throws InterruptedException {
        return f.b(coroutineContext, function2, i10, obj);
    }

    @Nullable
    public static final <T> Object g(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return g.e(coroutineContext, function2, cVar);
    }
}
