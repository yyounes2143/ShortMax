package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: FlowLiveData.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.FlowLiveDataConversions$asLiveData$1", f = "FlowLiveData.kt", l = {78}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class FlowLiveDataConversions$asLiveData$1<T> extends SuspendLambda implements Function2<LiveDataScope<T>, rs.c<? super Unit>, Object> {
    final /* synthetic */ kt.b<T> $this_asLiveData;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowLiveDataConversions$asLiveData$1(kt.b<? extends T> bVar, rs.c<? super FlowLiveDataConversions$asLiveData$1> cVar) {
        super(2, cVar);
        this.$this_asLiveData = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        FlowLiveDataConversions$asLiveData$1 flowLiveDataConversions$asLiveData$1 = new FlowLiveDataConversions$asLiveData$1(this.$this_asLiveData, cVar);
        flowLiveDataConversions$asLiveData$1.L$0 = obj;
        return flowLiveDataConversions$asLiveData$1;
    }

    public final Object invoke(LiveDataScope<T> liveDataScope, rs.c<? super Unit> cVar) {
        return ((FlowLiveDataConversions$asLiveData$1) create(liveDataScope, cVar)).invokeSuspend(Unit.f60915a);
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
            final LiveDataScope liveDataScope = (LiveDataScope) this.L$0;
            kt.b<T> bVar = this.$this_asLiveData;
            kt.c<? super T> cVar = new kt.c() { // from class: androidx.lifecycle.FlowLiveDataConversions$asLiveData$1.1
                @Override // kt.c
                public final Object emit(T t10, rs.c<? super Unit> cVar2) {
                    Object emit = liveDataScope.emit(t10, cVar2);
                    if (emit == kotlin.coroutines.intrinsics.a.f()) {
                        return emit;
                    }
                    return Unit.f60915a;
                }
            };
            this.label = 1;
            if (bVar.collect(cVar, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((LiveDataScope) ((LiveDataScope) obj), cVar);
    }
}
