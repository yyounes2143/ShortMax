package androidx.room.coroutines;

import androidx.room.TransactionScope;
import androidx.room.Transactor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
/* compiled from: PassthroughConnectionPool.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.PassthroughConnection$withTransaction$2", f = "PassthroughConnectionPool.kt", l = {103}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class PassthroughConnection$withTransaction$2 extends SuspendLambda implements Function1<rs.c<? super Object>, Object> {
    final /* synthetic */ Function2<TransactionScope<R>, rs.c<? super R>, Object> $block;
    final /* synthetic */ Transactor.SQLiteTransactionType $type;
    int label;
    final /* synthetic */ PassthroughConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PassthroughConnection$withTransaction$2(PassthroughConnection passthroughConnection, Transactor.SQLiteTransactionType sQLiteTransactionType, Function2<? super TransactionScope<R>, ? super rs.c<? super R>, ? extends Object> function2, rs.c<? super PassthroughConnection$withTransaction$2> cVar) {
        super(1, cVar);
        this.this$0 = passthroughConnection;
        this.$type = sQLiteTransactionType;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(rs.c<?> cVar) {
        return new PassthroughConnection$withTransaction$2(this.this$0, this.$type, this.$block, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(rs.c<? super Object> cVar) {
        return invoke2((rs.c<Object>) cVar);
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
            PassthroughConnection passthroughConnection = this.this$0;
            Transactor.SQLiteTransactionType sQLiteTransactionType = this.$type;
            Function2<TransactionScope<R>, rs.c<? super R>, Object> function2 = this.$block;
            this.label = 1;
            obj = passthroughConnection.transaction(sQLiteTransactionType, function2, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(rs.c<Object> cVar) {
        return ((PassthroughConnection$withTransaction$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
