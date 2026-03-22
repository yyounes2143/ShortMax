package androidx.room.coroutines;

import androidx.room.Transactor;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: PassthroughConnectionPool.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.PassthroughConnectionPool$useConnection$2", f = "PassthroughConnectionPool.kt", l = {59}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class PassthroughConnectionPool$useConnection$2<R> extends SuspendLambda implements Function2<g0, rs.c<? super R>, Object> {
    final /* synthetic */ Function2<Transactor, rs.c<? super R>, Object> $block;
    final /* synthetic */ PassthroughConnection $connectionWrapper;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PassthroughConnectionPool$useConnection$2(Function2<? super Transactor, ? super rs.c<? super R>, ? extends Object> function2, PassthroughConnection passthroughConnection, rs.c<? super PassthroughConnectionPool$useConnection$2> cVar) {
        super(2, cVar);
        this.$block = function2;
        this.$connectionWrapper = passthroughConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new PassthroughConnectionPool$useConnection$2(this.$block, this.$connectionWrapper, cVar);
    }

    public final Object invoke(g0 g0Var, rs.c<? super R> cVar) {
        return ((PassthroughConnectionPool$useConnection$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Function2<Transactor, rs.c<? super R>, Object> function2 = this.$block;
            PassthroughConnection passthroughConnection = this.$connectionWrapper;
            this.label = 1;
            obj = function2.invoke(passthroughConnection, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (rs.c) ((rs.c) obj));
    }
}
