package androidx.lifecycle;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: CoroutineLiveData.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.EmittedSource$dispose$1", f = "CoroutineLiveData.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class EmittedSource$dispose$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    int label;
    final /* synthetic */ EmittedSource this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmittedSource$dispose$1(EmittedSource emittedSource, rs.c<? super EmittedSource$dispose$1> cVar) {
        super(2, cVar);
        this.this$0 = emittedSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new EmittedSource$dispose$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((EmittedSource$dispose$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            this.this$0.removeSource();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
