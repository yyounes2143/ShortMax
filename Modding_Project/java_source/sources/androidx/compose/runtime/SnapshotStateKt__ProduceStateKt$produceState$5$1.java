package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProduceState.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$5$1", f = "ProduceState.kt", l = {204}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SnapshotStateKt__ProduceStateKt$produceState$5$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ Function2<ProduceStateScope<T>, rs.c<? super Unit>, Object> $producer;
    final /* synthetic */ MutableState<T> $result;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SnapshotStateKt__ProduceStateKt$produceState$5$1(Function2<? super ProduceStateScope<T>, ? super rs.c<? super Unit>, ? extends Object> function2, MutableState<T> mutableState, rs.c<? super SnapshotStateKt__ProduceStateKt$produceState$5$1> cVar) {
        super(2, cVar);
        this.$producer = function2;
        this.$result = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        SnapshotStateKt__ProduceStateKt$produceState$5$1 snapshotStateKt__ProduceStateKt$produceState$5$1 = new SnapshotStateKt__ProduceStateKt$produceState$5$1(this.$producer, this.$result, cVar);
        snapshotStateKt__ProduceStateKt$produceState$5$1.L$0 = obj;
        return snapshotStateKt__ProduceStateKt$produceState$5$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SnapshotStateKt__ProduceStateKt$produceState$5$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            Function2<ProduceStateScope<T>, rs.c<? super Unit>, Object> function2 = this.$producer;
            ProduceStateScopeImpl produceStateScopeImpl = new ProduceStateScopeImpl(this.$result, ((gt.g0) this.L$0).getCoroutineContext());
            this.label = 1;
            if (function2.invoke(produceStateScopeImpl, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
