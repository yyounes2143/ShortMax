package androidx.lifecycle;

import com.ss.ttvideoengine.log.IVideoEventLogger;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineLiveData.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.BlockRunner$maybeRun$1", f = "CoroutineLiveData.kt", l = {IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class BlockRunner$maybeRun$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BlockRunner<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockRunner$maybeRun$1(BlockRunner<T> blockRunner, rs.c<? super BlockRunner$maybeRun$1> cVar) {
        super(2, cVar);
        this.this$0 = blockRunner;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        BlockRunner$maybeRun$1 blockRunner$maybeRun$1 = new BlockRunner$maybeRun$1(this.this$0, cVar);
        blockRunner$maybeRun$1.L$0 = obj;
        return blockRunner$maybeRun$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((BlockRunner$maybeRun$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineLiveData coroutineLiveData;
        Function2 function2;
        Function0 function0;
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
            coroutineLiveData = ((BlockRunner) this.this$0).liveData;
            LiveDataScopeImpl liveDataScopeImpl = new LiveDataScopeImpl(coroutineLiveData, ((g0) this.L$0).getCoroutineContext());
            function2 = ((BlockRunner) this.this$0).block;
            this.label = 1;
            if (function2.invoke(liveDataScopeImpl, this) == f10) {
                return f10;
            }
        }
        function0 = ((BlockRunner) this.this$0).onDone;
        function0.invoke();
        return Unit.f60915a;
    }
}
