package kotlinx.coroutines.flow;

import gt.g0;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class c {
    @Nullable
    public static final <T> Object A(@NotNull kt.b<? extends T> bVar, @NotNull rs.c<? super T> cVar) {
        return FlowKt__ReduceKt.d(bVar, cVar);
    }

    @NotNull
    public static final <T, R> kt.b<R> B(@NotNull kt.b<? extends T> bVar, int i10, @NotNull Function2<? super T, ? super rs.c<? super kt.b<? extends R>>, ? extends Object> function2) {
        return FlowKt__MergeKt.a(bVar, i10, function2);
    }

    @NotNull
    public static final <T> kt.b<T> D(@NotNull kt.b<? extends kt.b<? extends T>> bVar) {
        return FlowKt__MergeKt.c(bVar);
    }

    @NotNull
    public static final <T> kt.b<T> E(@NotNull kt.b<? extends kt.b<? extends T>> bVar, int i10) {
        return FlowKt__MergeKt.d(bVar, i10);
    }

    @NotNull
    public static final <T> kt.b<T> F(@NotNull Function2<? super kt.c<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return FlowKt__BuildersKt.e(function2);
    }

    @NotNull
    public static final <T1, T2, R> kt.b<R> G(@NotNull kt.b<? extends T1> bVar, @NotNull kt.b<? extends T2> bVar2, @NotNull at.n<? super T1, ? super T2, ? super rs.c<? super R>, ? extends Object> nVar) {
        return FlowKt__ZipKt.c(bVar, bVar2, nVar);
    }

    @NotNull
    public static final <T> kt.b<T> H(T t10) {
        return FlowKt__BuildersKt.f(t10);
    }

    @NotNull
    public static final <T> kt.b<T> I(@NotNull kt.b<? extends T> bVar, @NotNull CoroutineContext coroutineContext) {
        return d.f(bVar, coroutineContext);
    }

    @NotNull
    public static final <T> r J(@NotNull kt.b<? extends T> bVar, @NotNull g0 g0Var) {
        return FlowKt__CollectKt.d(bVar, g0Var);
    }

    @NotNull
    public static final <T, R> kt.b<R> K(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super T, ? super rs.c<? super R>, ? extends Object> function2) {
        return FlowKt__MergeKt.e(bVar, function2);
    }

    @NotNull
    public static final <T> kt.b<T> L(@NotNull Iterable<? extends kt.b<? extends T>> iterable) {
        return FlowKt__MergeKt.f(iterable);
    }

    @NotNull
    public static final <T> kt.b<T> M(@NotNull kt.b<? extends T>... bVarArr) {
        return FlowKt__MergeKt.g(bVarArr);
    }

    @NotNull
    public static final <T> kt.b<T> N(@NotNull kt.b<? extends T> bVar, @NotNull at.n<? super kt.c<? super T>, ? super Throwable, ? super rs.c<? super Unit>, ? extends Object> nVar) {
        return FlowKt__EmittersKt.d(bVar, nVar);
    }

    @NotNull
    public static final <T> kt.b<T> O(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super T, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return FlowKt__TransformKt.b(bVar, function2);
    }

    @NotNull
    public static final <T> kt.b<T> P(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super kt.c<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return FlowKt__EmittersKt.e(bVar, function2);
    }

    @NotNull
    public static final <T> kt.f<T> Q(@NotNull kt.f<? extends T> fVar, @NotNull Function2<? super kt.c<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return FlowKt__ShareKt.e(fVar, function2);
    }

    @NotNull
    public static final <T> kt.f<T> R(@NotNull kt.b<? extends T> bVar, @NotNull g0 g0Var, @NotNull m mVar, int i10) {
        return FlowKt__ShareKt.f(bVar, g0Var, mVar, i10);
    }

    @Nullable
    public static final <T> Object S(@NotNull kt.b<? extends T> bVar, @NotNull rs.c<? super T> cVar) {
        return FlowKt__ReduceKt.e(bVar, cVar);
    }

    @NotNull
    public static final <T> kt.i<T> T(@NotNull kt.b<? extends T> bVar, @NotNull g0 g0Var, @NotNull m mVar, T t10) {
        return FlowKt__ShareKt.g(bVar, g0Var, mVar, t10);
    }

    @NotNull
    public static final <T> kt.b<T> U(@NotNull kt.b<? extends T> bVar, int i10) {
        return FlowKt__LimitKt.d(bVar, i10);
    }

    @NotNull
    public static final <T> kt.b<T> V(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super T, ? super rs.c<? super Boolean>, ? extends Object> function2) {
        return FlowKt__LimitKt.e(bVar, function2);
    }

    @Nullable
    public static final <T, C extends Collection<? super T>> Object W(@NotNull kt.b<? extends T> bVar, @NotNull C c10, @NotNull rs.c<? super C> cVar) {
        return FlowKt__CollectionKt.a(bVar, c10, cVar);
    }

    @NotNull
    public static final <T, R> kt.b<R> X(@NotNull kt.b<? extends T> bVar, @NotNull at.n<? super kt.c<? super R>, ? super T, ? super rs.c<? super Unit>, ? extends Object> nVar) {
        return FlowKt__MergeKt.h(bVar, nVar);
    }

    @NotNull
    public static final <T, R> kt.b<R> Y(@NotNull kt.b<? extends T> bVar, @NotNull at.n<? super kt.c<? super R>, ? super T, ? super rs.c<? super Boolean>, ? extends Object> nVar) {
        return FlowKt__LimitKt.f(bVar, nVar);
    }

    @NotNull
    public static final <T> kt.b<T> a(@NotNull Iterable<? extends T> iterable) {
        return FlowKt__BuildersKt.a(iterable);
    }

    @NotNull
    public static final <T> kt.b<T> b(@NotNull Function1<? super rs.c<? super T>, ? extends Object> function1) {
        return FlowKt__BuildersKt.b(function1);
    }

    @NotNull
    public static final <T> kt.f<T> c(@NotNull kt.d<T> dVar) {
        return FlowKt__ShareKt.a(dVar);
    }

    @NotNull
    public static final <T> kt.i<T> d(@NotNull kt.e<T> eVar) {
        return FlowKt__ShareKt.b(eVar);
    }

    @NotNull
    public static final <T> kt.b<T> e(@NotNull kt.b<? extends T> bVar, int i10, @NotNull BufferOverflow bufferOverflow) {
        return d.a(bVar, i10, bufferOverflow);
    }

    @NotNull
    public static final <T> kt.b<T> g(@NotNull Function2<? super jt.h<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return FlowKt__BuildersKt.c(function2);
    }

    @NotNull
    public static final <T> kt.b<T> h(@NotNull kt.b<? extends T> bVar) {
        return d.c(bVar);
    }

    @NotNull
    public static final <T> kt.b<T> i(@NotNull kt.b<? extends T> bVar, @NotNull at.n<? super kt.c<? super T>, ? super Throwable, ? super rs.c<? super Unit>, ? extends Object> nVar) {
        return FlowKt__ErrorsKt.a(bVar, nVar);
    }

    @Nullable
    public static final <T> Object j(@NotNull kt.b<? extends T> bVar, @NotNull kt.c<? super T> cVar, @NotNull rs.c<? super Throwable> cVar2) {
        return FlowKt__ErrorsKt.b(bVar, cVar, cVar2);
    }

    @NotNull
    public static final <T> kt.b<T> k(@NotNull Function2<? super jt.h<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return FlowKt__BuildersKt.d(function2);
    }

    @Nullable
    public static final Object l(@NotNull kt.b<?> bVar, @NotNull rs.c<? super Unit> cVar) {
        return FlowKt__CollectKt.a(bVar, cVar);
    }

    @Nullable
    public static final <T> Object m(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super T, ? super rs.c<? super Unit>, ? extends Object> function2, @NotNull rs.c<? super Unit> cVar) {
        return FlowKt__CollectKt.b(bVar, function2, cVar);
    }

    @NotNull
    public static final <T1, T2, R> kt.b<R> n(@NotNull kt.b<? extends T1> bVar, @NotNull kt.b<? extends T2> bVar2, @NotNull at.n<? super T1, ? super T2, ? super rs.c<? super R>, ? extends Object> nVar) {
        return FlowKt__ZipKt.b(bVar, bVar2, nVar);
    }

    @NotNull
    public static final <T> kt.b<T> o(@NotNull kt.b<? extends T> bVar) {
        return d.e(bVar);
    }

    @NotNull
    public static final <T> kt.b<T> p(@NotNull jt.i<? extends T> iVar) {
        return FlowKt__ChannelsKt.b(iVar);
    }

    @NotNull
    public static final <T> kt.b<T> q(@NotNull kt.b<? extends T> bVar, long j10) {
        return FlowKt__DelayKt.b(bVar, j10);
    }

    @NotNull
    public static final <T> kt.b<T> r(@NotNull kt.b<? extends T> bVar) {
        return h.e(bVar);
    }

    @NotNull
    public static final <T> kt.b<T> s(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super T, ? super rs.c<? super Boolean>, ? extends Object> function2) {
        return FlowKt__LimitKt.b(bVar, function2);
    }

    @Nullable
    public static final <T> Object t(@NotNull kt.c<? super T> cVar, @NotNull jt.i<? extends T> iVar, @NotNull rs.c<? super Unit> cVar2) {
        return FlowKt__ChannelsKt.c(cVar, iVar, cVar2);
    }

    @Nullable
    public static final <T> Object u(@NotNull kt.c<? super T> cVar, @NotNull kt.b<? extends T> bVar, @NotNull rs.c<? super Unit> cVar2) {
        return FlowKt__CollectKt.c(cVar, bVar, cVar2);
    }

    public static final void v(@NotNull kt.c<?> cVar) {
        FlowKt__EmittersKt.b(cVar);
    }

    @NotNull
    public static final <T> kt.b<T> w(@NotNull kt.b<? extends T> bVar) {
        return FlowKt__TransformKt.a(bVar);
    }

    @Nullable
    public static final <T> Object x(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super T, ? super rs.c<? super Boolean>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return FlowKt__ReduceKt.a(bVar, function2, cVar);
    }

    @Nullable
    public static final <T> Object y(@NotNull kt.b<? extends T> bVar, @NotNull rs.c<? super T> cVar) {
        return FlowKt__ReduceKt.b(bVar, cVar);
    }

    @Nullable
    public static final <T> Object z(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super T, ? super rs.c<? super Boolean>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return FlowKt__ReduceKt.c(bVar, function2, cVar);
    }
}
