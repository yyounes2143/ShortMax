package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import lt.h;
import lt.m;
import mt.h0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChannelFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,241:1\n91#2,5:242\n*S KotlinDebug\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n*L\n222#1:242,5\n*E\n"})
/* loaded from: classes8.dex */
public final class a {
    @Nullable
    public static final <T, V> Object b(@NotNull CoroutineContext coroutineContext, V v10, @NotNull Object obj, @NotNull Function2<? super V, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        Object invoke;
        Object i10 = h0.i(coroutineContext, obj);
        try {
            d dVar = new d(cVar, coroutineContext);
            if (!(function2 instanceof BaseContinuationImpl)) {
                invoke = kotlin.coroutines.intrinsics.a.e(function2, v10, dVar);
            } else {
                invoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(v10, dVar);
            }
            h0.f(coroutineContext, i10);
            if (invoke == kotlin.coroutines.intrinsics.a.f()) {
                f.c(cVar);
            }
            return invoke;
        } catch (Throwable th2) {
            h0.f(coroutineContext, i10);
            throw th2;
        }
    }

    public static /* synthetic */ Object c(CoroutineContext coroutineContext, Object obj, Object obj2, Function2 function2, rs.c cVar, int i10, Object obj3) {
        if ((i10 & 4) != 0) {
            obj2 = h0.g(coroutineContext);
        }
        return b(coroutineContext, obj, obj2, function2, cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> kt.c<T> d(kt.c<? super T> cVar, CoroutineContext coroutineContext) {
        if (!(cVar instanceof m) && !(cVar instanceof h)) {
            return new UndispatchedContextCollector(cVar, coroutineContext);
        }
        return cVar;
    }
}
