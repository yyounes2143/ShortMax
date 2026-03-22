package androidx.room.coroutines;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConnectionPoolImpl.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.Pool$acquireWithTimeout$2", f = "ConnectionPoolImpl.kt", l = {214}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class Pool$acquireWithTimeout$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<ConnectionWithLock> $connection;
    Object L$0;
    int label;
    final /* synthetic */ Pool this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Pool$acquireWithTimeout$2(Ref.ObjectRef<ConnectionWithLock> objectRef, Pool pool, rs.c<? super Pool$acquireWithTimeout$2> cVar) {
        super(2, cVar);
        this.$connection = objectRef;
        this.this$0 = pool;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new Pool$acquireWithTimeout$2(this.$connection, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((Pool$acquireWithTimeout$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref.ObjectRef<ConnectionWithLock> objectRef;
        T t10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                objectRef = (Ref.ObjectRef) this.L$0;
                f.b(obj);
                t10 = obj;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Ref.ObjectRef<ConnectionWithLock> objectRef2 = this.$connection;
            Pool pool = this.this$0;
            this.L$0 = objectRef2;
            this.label = 1;
            Object acquire = pool.acquire(this);
            if (acquire == f10) {
                return f10;
            }
            objectRef = objectRef2;
            t10 = acquire;
        }
        objectRef.element = t10;
        return Unit.f60915a;
    }
}
