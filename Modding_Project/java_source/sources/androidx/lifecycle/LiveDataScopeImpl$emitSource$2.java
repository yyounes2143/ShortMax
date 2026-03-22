package androidx.lifecycle;

import gt.g0;
import gt.s0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: CoroutineLiveData.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.LiveDataScopeImpl$emitSource$2", f = "CoroutineLiveData.kt", l = {92}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class LiveDataScopeImpl$emitSource$2 extends SuspendLambda implements Function2<g0, rs.c<? super s0>, Object> {
    final /* synthetic */ LiveData<T> $source;
    int label;
    final /* synthetic */ LiveDataScopeImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveDataScopeImpl$emitSource$2(LiveDataScopeImpl<T> liveDataScopeImpl, LiveData<T> liveData, rs.c<? super LiveDataScopeImpl$emitSource$2> cVar) {
        super(2, cVar);
        this.this$0 = liveDataScopeImpl;
        this.$source = liveData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new LiveDataScopeImpl$emitSource$2(this.this$0, this.$source, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super s0> cVar) {
        return ((LiveDataScopeImpl$emitSource$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            CoroutineLiveData target$lifecycle_livedata_release = this.this$0.getTarget$lifecycle_livedata_release();
            Object obj2 = this.$source;
            this.label = 1;
            obj = target$lifecycle_livedata_release.emitSource$lifecycle_livedata_release(obj2, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
