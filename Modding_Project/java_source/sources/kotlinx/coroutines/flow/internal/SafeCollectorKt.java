package kotlinx.coroutines.flow.internal;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SafeCollector.kt */
@Metadata
/* loaded from: classes8.dex */
public final class SafeCollectorKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final n<kt.c<Object>, Object, rs.c<? super Unit>, Object> f61785a;

    static {
        SafeCollectorKt$emitFun$1 safeCollectorKt$emitFun$1 = SafeCollectorKt$emitFun$1.f61786a;
        Intrinsics.checkNotNull(safeCollectorKt$emitFun$1, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>");
        f61785a = (n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(safeCollectorKt$emitFun$1, 3);
    }

    public static final /* synthetic */ n a() {
        return f61785a;
    }
}
