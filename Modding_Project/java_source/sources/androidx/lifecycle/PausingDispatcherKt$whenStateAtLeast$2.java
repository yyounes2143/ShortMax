package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: PausingDispatcher.jvm.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.jvm.kt", l = {213}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class PausingDispatcherKt$whenStateAtLeast$2<T> extends SuspendLambda implements Function2<g0, rs.c<? super T>, Object> {
    final /* synthetic */ Function2<g0, rs.c<? super T>, Object> $block;
    final /* synthetic */ Lifecycle.State $minState;
    final /* synthetic */ Lifecycle $this_whenStateAtLeast;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PausingDispatcherKt$whenStateAtLeast$2(Lifecycle lifecycle, Lifecycle.State state, Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, rs.c<? super PausingDispatcherKt$whenStateAtLeast$2> cVar) {
        super(2, cVar);
        this.$this_whenStateAtLeast = lifecycle;
        this.$minState = state;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        PausingDispatcherKt$whenStateAtLeast$2 pausingDispatcherKt$whenStateAtLeast$2 = new PausingDispatcherKt$whenStateAtLeast$2(this.$this_whenStateAtLeast, this.$minState, this.$block, cVar);
        pausingDispatcherKt$whenStateAtLeast$2.L$0 = obj;
        return pausingDispatcherKt$whenStateAtLeast$2;
    }

    public final Object invoke(g0 g0Var, rs.c<? super T> cVar) {
        return ((PausingDispatcherKt$whenStateAtLeast$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        LifecycleController lifecycleController;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                lifecycleController = (LifecycleController) this.L$0;
                try {
                    kotlin.f.b(obj);
                } catch (Throwable th2) {
                    th = th2;
                    lifecycleController.finish();
                    throw th;
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            kotlinx.coroutines.r rVar = (kotlinx.coroutines.r) ((g0) this.L$0).getCoroutineContext().get(kotlinx.coroutines.r.G8);
            if (rVar != null) {
                PausingDispatcher pausingDispatcher = new PausingDispatcher();
                LifecycleController lifecycleController2 = new LifecycleController(this.$this_whenStateAtLeast, this.$minState, pausingDispatcher.dispatchQueue, rVar);
                try {
                    Function2<g0, rs.c<? super T>, Object> function2 = this.$block;
                    this.L$0 = lifecycleController2;
                    this.label = 1;
                    obj = gt.e.g(pausingDispatcher, function2, this);
                    if (obj == f10) {
                        return f10;
                    }
                    lifecycleController = lifecycleController2;
                } catch (Throwable th3) {
                    th = th3;
                    lifecycleController = lifecycleController2;
                    lifecycleController.finish();
                    throw th;
                }
            } else {
                throw new IllegalStateException("when[State] methods should have a parent job");
            }
        }
        lifecycleController.finish();
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (rs.c) ((rs.c) obj));
    }
}
