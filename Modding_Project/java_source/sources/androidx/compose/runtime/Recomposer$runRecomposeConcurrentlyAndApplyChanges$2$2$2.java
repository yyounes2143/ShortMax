package androidx.compose.runtime;

import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: Recomposer.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2", f = "Recomposer.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1894:1\n33#2:1895\n1#3:1896\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2\n*L\n1006#1:1895\n*E\n"})
/* loaded from: classes.dex */
final class Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ ControlledComposition $composition;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2(Recomposer recomposer, ControlledComposition controlledComposition, rs.c<? super Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2> cVar) {
        super(2, cVar);
        this.this$0 = recomposer;
        this.$composition = controlledComposition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2(this.this$0, this.$composition, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ControlledComposition performRecompose;
        List list;
        int i10;
        gt.i deriveStateLocked;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            performRecompose = this.this$0.performRecompose(this.$composition, null);
            Object obj2 = this.this$0.stateLock;
            Recomposer recomposer = this.this$0;
            synchronized (obj2) {
                if (performRecompose != null) {
                    try {
                        list = recomposer.compositionsAwaitingApply;
                        list.add(performRecompose);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                i10 = recomposer.concurrentCompositionsOutstanding;
                recomposer.concurrentCompositionsOutstanding = i10 - 1;
                deriveStateLocked = recomposer.deriveStateLocked();
            }
            if (deriveStateLocked != null) {
                Result.a aVar = Result.f60901b;
                deriveStateLocked.resumeWith(Result.d(Unit.f60915a));
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
