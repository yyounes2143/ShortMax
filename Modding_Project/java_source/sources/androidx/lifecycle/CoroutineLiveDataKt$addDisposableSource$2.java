package androidx.lifecycle;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineLiveData.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.CoroutineLiveDataKt$addDisposableSource$2", f = "CoroutineLiveData.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class CoroutineLiveDataKt$addDisposableSource$2 extends SuspendLambda implements Function2<g0, rs.c<? super EmittedSource>, Object> {
    final /* synthetic */ LiveData<T> $source;
    final /* synthetic */ MediatorLiveData<T> $this_addDisposableSource;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineLiveDataKt$addDisposableSource$2(MediatorLiveData<T> mediatorLiveData, LiveData<T> liveData, rs.c<? super CoroutineLiveDataKt$addDisposableSource$2> cVar) {
        super(2, cVar);
        this.$this_addDisposableSource = mediatorLiveData;
        this.$source = liveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$0(MediatorLiveData mediatorLiveData, Object obj) {
        mediatorLiveData.setValue(obj);
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CoroutineLiveDataKt$addDisposableSource$2(this.$this_addDisposableSource, this.$source, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super EmittedSource> cVar) {
        return ((CoroutineLiveDataKt$addDisposableSource$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            final MediatorLiveData<T> mediatorLiveData = this.$this_addDisposableSource;
            mediatorLiveData.addSource(this.$source, new CoroutineLiveDataKt$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: androidx.lifecycle.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit invokeSuspend$lambda$0;
                    invokeSuspend$lambda$0 = CoroutineLiveDataKt$addDisposableSource$2.invokeSuspend$lambda$0(MediatorLiveData.this, obj2);
                    return invokeSuspend$lambda$0;
                }
            }));
            return new EmittedSource(this.$source, this.$this_addDisposableSource);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
