package kotlinx.coroutines.flow.internal;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import lt.m;
/* compiled from: Merge.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge$collectTo$2$1", f = "Merge.kt", l = {92}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class ChannelLimitedFlowMerge$collectTo$2$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61752h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ kt.b<T> f61753i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ m<T> f61754j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelLimitedFlowMerge$collectTo$2$1(kt.b<? extends T> bVar, m<T> mVar, rs.c<? super ChannelLimitedFlowMerge$collectTo$2$1> cVar) {
        super(2, cVar);
        this.f61753i = bVar;
        this.f61754j = mVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ChannelLimitedFlowMerge$collectTo$2$1(this.f61753i, this.f61754j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ChannelLimitedFlowMerge$collectTo$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61752h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            kt.b<T> bVar = this.f61753i;
            Object obj2 = this.f61754j;
            this.f61752h = 1;
            if (bVar.collect(obj2, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
