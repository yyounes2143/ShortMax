package androidx.room.coroutines;

import androidx.room.Transactor;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: ConnectionPoolImpl.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.ConnectionPoolImpl$useConnection$2", f = "ConnectionPoolImpl.kt", l = {121}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class ConnectionPoolImpl$useConnection$2<R> extends SuspendLambda implements Function2<g0, rs.c<? super R>, Object> {
    final /* synthetic */ Function2<Transactor, rs.c<? super R>, Object> $block;
    final /* synthetic */ PooledConnectionImpl $confinedConnection;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ConnectionPoolImpl$useConnection$2(Function2<? super Transactor, ? super rs.c<? super R>, ? extends Object> function2, PooledConnectionImpl pooledConnectionImpl, rs.c<? super ConnectionPoolImpl$useConnection$2> cVar) {
        super(2, cVar);
        this.$block = function2;
        this.$confinedConnection = pooledConnectionImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ConnectionPoolImpl$useConnection$2(this.$block, this.$confinedConnection, cVar);
    }

    public final Object invoke(g0 g0Var, rs.c<? super R> cVar) {
        return ((ConnectionPoolImpl$useConnection$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            PooledConnectionImpl pooledConnectionImpl = this.$confinedConnection;
            this.label = 1;
            obj = function2.invoke(pooledConnectionImpl, this);
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
