package androidx.lifecycle;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: Lifecycle.jvm.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenCreated$1", f = "Lifecycle.jvm.kt", l = {68}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class LifecycleCoroutineScope$launchWhenCreated$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ Function2<g0, rs.c<? super Unit>, Object> $block;
    int label;
    final /* synthetic */ LifecycleCoroutineScope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LifecycleCoroutineScope$launchWhenCreated$1(LifecycleCoroutineScope lifecycleCoroutineScope, Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> function2, rs.c<? super LifecycleCoroutineScope$launchWhenCreated$1> cVar) {
        super(2, cVar);
        this.this$0 = lifecycleCoroutineScope;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new LifecycleCoroutineScope$launchWhenCreated$1(this.this$0, this.$block, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((LifecycleCoroutineScope$launchWhenCreated$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            Lifecycle lifecycle$lifecycle_common = this.this$0.getLifecycle$lifecycle_common();
            Function2<g0, rs.c<? super Unit>, Object> function2 = this.$block;
            this.label = 1;
            if (PausingDispatcherKt.whenCreated(lifecycle$lifecycle_common, function2, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
