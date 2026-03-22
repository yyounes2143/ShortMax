package androidx.room;

import gt.g0;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: CoroutinesRoom.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.CoroutinesRoom$Companion$execute$2", f = "CoroutinesRoom.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class CoroutinesRoom$Companion$execute$2<R> extends SuspendLambda implements Function2<g0, rs.c<? super R>, Object> {
    final /* synthetic */ Callable<R> $callable;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutinesRoom$Companion$execute$2(Callable<R> callable, rs.c<? super CoroutinesRoom$Companion$execute$2> cVar) {
        super(2, cVar);
        this.$callable = callable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CoroutinesRoom$Companion$execute$2(this.$callable, cVar);
    }

    public final Object invoke(g0 g0Var, rs.c<? super R> cVar) {
        return ((CoroutinesRoom$Companion$execute$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            return this.$callable.call();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (rs.c) ((rs.c) obj));
    }
}
