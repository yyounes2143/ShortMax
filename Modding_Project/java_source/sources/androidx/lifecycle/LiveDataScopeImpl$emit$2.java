package androidx.lifecycle;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: CoroutineLiveData.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.LiveDataScopeImpl$emit$2", f = "CoroutineLiveData.kt", l = {98}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class LiveDataScopeImpl$emit$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ T $value;
    int label;
    final /* synthetic */ LiveDataScopeImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveDataScopeImpl$emit$2(LiveDataScopeImpl<T> liveDataScopeImpl, T t10, rs.c<? super LiveDataScopeImpl$emit$2> cVar) {
        super(2, cVar);
        this.this$0 = liveDataScopeImpl;
        this.$value = t10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new LiveDataScopeImpl$emit$2(this.this$0, this.$value, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((LiveDataScopeImpl$emit$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            this.label = 1;
            if (target$lifecycle_livedata_release.clearSource$lifecycle_livedata_release(this) == f10) {
                return f10;
            }
        }
        this.this$0.getTarget$lifecycle_livedata_release().setValue(this.$value);
        return Unit.f60915a;
    }
}
