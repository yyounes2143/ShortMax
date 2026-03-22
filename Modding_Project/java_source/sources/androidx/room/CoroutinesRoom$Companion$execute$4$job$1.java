package androidx.room;

import gt.g0;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: CoroutinesRoom.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.CoroutinesRoom$Companion$execute$4$job$1", f = "CoroutinesRoom.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class CoroutinesRoom$Companion$execute$4$job$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ Callable<R> $callable;
    final /* synthetic */ gt.i<R> $continuation;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutinesRoom$Companion$execute$4$job$1(Callable<R> callable, gt.i<? super R> iVar, rs.c<? super CoroutinesRoom$Companion$execute$4$job$1> cVar) {
        super(2, cVar);
        this.$callable = callable;
        this.$continuation = iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CoroutinesRoom$Companion$execute$4$job$1(this.$callable, this.$continuation, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CoroutinesRoom$Companion$execute$4$job$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            try {
                this.$continuation.resumeWith(Result.d(this.$callable.call()));
            } catch (Throwable th2) {
                rs.c cVar = this.$continuation;
                Result.a aVar = Result.f60901b;
                cVar.resumeWith(Result.d(kotlin.f.a(th2)));
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
