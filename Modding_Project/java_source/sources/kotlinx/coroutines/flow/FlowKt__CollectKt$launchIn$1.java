package kotlinx.coroutines.flow;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Collect.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1", f = "Collect.kt", l = {46}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class FlowKt__CollectKt$launchIn$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61437h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ kt.b<T> f61438i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__CollectKt$launchIn$1(kt.b<? extends T> bVar, rs.c<? super FlowKt__CollectKt$launchIn$1> cVar) {
        super(2, cVar);
        this.f61438i = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new FlowKt__CollectKt$launchIn$1(this.f61438i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((FlowKt__CollectKt$launchIn$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61437h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            kt.b<T> bVar = this.f61438i;
            this.f61437h = 1;
            if (c.l(bVar, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
