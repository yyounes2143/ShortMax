package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import mt.a0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StateFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n+ 2 Concurrent.common.kt\nkotlinx/coroutines/internal/Concurrent_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,433:1\n37#2,2:434\n1#3:436\n426#4,11:437\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n*L\n280#1:434,2\n303#1:437,11\n*E\n"})
/* loaded from: classes8.dex */
public final class p extends lt.c<StateFlowImpl<?>> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<Object> f61810a = new AtomicReference<>(null);

    @Override // lt.c
    /* renamed from: d */
    public boolean a(@NotNull StateFlowImpl<?> stateFlowImpl) {
        a0 a0Var;
        if (mt.d.a(this.f61810a) != null) {
            return false;
        }
        AtomicReference<Object> atomicReference = this.f61810a;
        a0Var = o.f61808a;
        mt.d.b(atomicReference, a0Var);
        return true;
    }

    @Nullable
    public final Object e(@NotNull rs.c<? super Unit> cVar) {
        a0 a0Var;
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        AtomicReference atomicReference = this.f61810a;
        a0Var = o.f61808a;
        if (!androidx.compose.animation.core.a.a(atomicReference, a0Var, eVar)) {
            Result.a aVar = Result.f60901b;
            eVar.resumeWith(Result.d(Unit.f60915a));
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    @Override // lt.c
    @NotNull
    /* renamed from: f */
    public rs.c<Unit>[] b(@NotNull StateFlowImpl<?> stateFlowImpl) {
        mt.d.b(this.f61810a, null);
        return lt.b.f62305a;
    }

    public final void g() {
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        a0 a0Var4;
        AtomicReference<Object> atomicReference = this.f61810a;
        while (true) {
            Object a10 = mt.d.a(atomicReference);
            if (a10 != null) {
                a0Var = o.f61809b;
                if (a10 != a0Var) {
                    a0Var2 = o.f61808a;
                    if (a10 == a0Var2) {
                        AtomicReference<Object> atomicReference2 = this.f61810a;
                        a0Var3 = o.f61809b;
                        if (androidx.compose.animation.core.a.a(atomicReference2, a10, a0Var3)) {
                            return;
                        }
                    } else {
                        AtomicReference<Object> atomicReference3 = this.f61810a;
                        a0Var4 = o.f61808a;
                        if (androidx.compose.animation.core.a.a(atomicReference3, a10, a0Var4)) {
                            Result.a aVar = Result.f60901b;
                            ((kotlinx.coroutines.e) a10).resumeWith(Result.d(Unit.f60915a));
                            return;
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final boolean h() {
        a0 a0Var;
        a0 a0Var2;
        AtomicReference<Object> atomicReference = this.f61810a;
        a0Var = o.f61808a;
        Object andSet = atomicReference.getAndSet(a0Var);
        Intrinsics.checkNotNull(andSet);
        a0Var2 = o.f61809b;
        if (andSet == a0Var2) {
            return true;
        }
        return false;
    }
}
