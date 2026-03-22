package androidx.compose.runtime;

import android.view.Choreographer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: MonotonicFrameClock.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.DefaultChoreographerFrameClock$choreographer$1", f = "MonotonicFrameClock.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class DefaultChoreographerFrameClock$choreographer$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Choreographer>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultChoreographerFrameClock$choreographer$1(rs.c<? super DefaultChoreographerFrameClock$choreographer$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DefaultChoreographerFrameClock$choreographer$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Choreographer> cVar) {
        return ((DefaultChoreographerFrameClock$choreographer$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            return Choreographer.getInstance();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
