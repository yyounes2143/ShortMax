package gt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Yield.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a2 {
    @Nullable
    public static final Object a(@NotNull rs.c<? super Unit> cVar) {
        mt.h hVar;
        Object obj;
        CoroutineContext context = cVar.getContext();
        kotlinx.coroutines.t.k(context);
        rs.c c10 = kotlin.coroutines.intrinsics.a.c(cVar);
        if (c10 instanceof mt.h) {
            hVar = (mt.h) c10;
        } else {
            hVar = null;
        }
        if (hVar == null) {
            obj = Unit.f60915a;
        } else {
            if (mt.i.d(hVar.f62663d, context)) {
                hVar.m(context, Unit.f60915a);
            } else {
                z1 z1Var = new z1();
                CoroutineContext plus = context.plus(z1Var);
                Unit unit = Unit.f60915a;
                hVar.m(plus, unit);
                if (z1Var.f52580a) {
                    if (mt.i.e(hVar)) {
                        obj = kotlin.coroutines.intrinsics.a.f();
                    } else {
                        obj = unit;
                    }
                }
            }
            obj = kotlin.coroutines.intrinsics.a.f();
        }
        if (obj == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (obj == kotlin.coroutines.intrinsics.a.f()) {
            return obj;
        }
        return Unit.f60915a;
    }
}
