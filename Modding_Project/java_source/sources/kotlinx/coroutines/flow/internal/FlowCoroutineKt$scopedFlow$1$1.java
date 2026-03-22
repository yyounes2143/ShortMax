package kotlinx.coroutines.flow.internal;

import at.n;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* compiled from: FlowCoroutine.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$1$1", f = "FlowCoroutine.kt", l = {47}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class FlowCoroutineKt$scopedFlow$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61776h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61777i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ n<g0, kt.c<? super R>, rs.c<? super Unit>, Object> f61778j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ kt.c<R> f61779k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowCoroutineKt$scopedFlow$1$1(n<? super g0, ? super kt.c<? super R>, ? super rs.c<? super Unit>, ? extends Object> nVar, kt.c<? super R> cVar, rs.c<? super FlowCoroutineKt$scopedFlow$1$1> cVar2) {
        super(2, cVar2);
        this.f61778j = nVar;
        this.f61779k = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        FlowCoroutineKt$scopedFlow$1$1 flowCoroutineKt$scopedFlow$1$1 = new FlowCoroutineKt$scopedFlow$1$1(this.f61778j, this.f61779k, cVar);
        flowCoroutineKt$scopedFlow$1$1.f61777i = obj;
        return flowCoroutineKt$scopedFlow$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((FlowCoroutineKt$scopedFlow$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61776h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            n<g0, kt.c<? super R>, rs.c<? super Unit>, Object> nVar = this.f61778j;
            Object obj2 = this.f61779k;
            this.f61776h = 1;
            if (nVar.invoke((g0) this.f61777i, obj2, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
