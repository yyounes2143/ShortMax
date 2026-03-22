package androidx.compose.runtime;

import androidx.compose.runtime.Recomposer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: Recomposer.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.Recomposer$awaitIdle$2", f = "Recomposer.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class Recomposer$awaitIdle$2 extends SuspendLambda implements Function2<Recomposer.State, rs.c<? super Boolean>, Object> {
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Recomposer$awaitIdle$2(rs.c<? super Recomposer$awaitIdle$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        Recomposer$awaitIdle$2 recomposer$awaitIdle$2 = new Recomposer$awaitIdle$2(cVar);
        recomposer$awaitIdle$2.L$0 = obj;
        return recomposer$awaitIdle$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Recomposer.State state, rs.c<? super Boolean> cVar) {
        return ((Recomposer$awaitIdle$2) create(state, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z10;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            if (((Recomposer.State) this.L$0).compareTo(Recomposer.State.Idle) > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            return kotlin.coroutines.jvm.internal.a.a(z10);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
