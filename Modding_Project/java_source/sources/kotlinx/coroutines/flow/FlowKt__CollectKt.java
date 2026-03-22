package kotlinx.coroutines.flow;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Collect.kt */
@Metadata
/* loaded from: classes8.dex */
public final /* synthetic */ class FlowKt__CollectKt {
    @Nullable
    public static final Object a(@NotNull kt.b<?> bVar, @NotNull rs.c<? super Unit> cVar) {
        Object collect = bVar.collect(lt.h.f62308a, cVar);
        if (collect == kotlin.coroutines.intrinsics.a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }

    @Nullable
    public static final <T> Object b(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super T, ? super rs.c<? super Unit>, ? extends Object> function2, @NotNull rs.c<? super Unit> cVar) {
        kt.b b10;
        b10 = d.b(c.K(bVar, function2), 0, null, 2, null);
        Object l10 = c.l(b10, cVar);
        if (l10 == kotlin.coroutines.intrinsics.a.f()) {
            return l10;
        }
        return Unit.f60915a;
    }

    @Nullable
    public static final <T> Object c(@NotNull kt.c<? super T> cVar, @NotNull kt.b<? extends T> bVar, @NotNull rs.c<? super Unit> cVar2) {
        c.v(cVar);
        Object collect = bVar.collect(cVar, cVar2);
        if (collect == kotlin.coroutines.intrinsics.a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }

    @NotNull
    public static final <T> r d(@NotNull kt.b<? extends T> bVar, @NotNull g0 g0Var) {
        r d10;
        d10 = gt.g.d(g0Var, null, null, new FlowKt__CollectKt$launchIn$1(bVar, null), 3, null);
        return d10;
    }
}
