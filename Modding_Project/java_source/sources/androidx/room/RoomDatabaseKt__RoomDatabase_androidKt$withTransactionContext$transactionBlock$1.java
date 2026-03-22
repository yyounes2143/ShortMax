package androidx.room;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: RoomDatabase.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1", f = "RoomDatabase.android.kt", l = {2058}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1<R> extends SuspendLambda implements Function2<g0, rs.c<? super R>, Object> {
    final /* synthetic */ Function1<rs.c<? super R>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(Function1<? super rs.c<? super R>, ? extends Object> function1, rs.c<? super RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1> cVar) {
        super(2, cVar);
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 = new RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(this.$block, cVar);
        roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1.L$0 = obj;
        return roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;
    }

    public final Object invoke(g0 g0Var, rs.c<? super R> cVar) {
        return ((RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
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
            if (((g0) this.L$0).getCoroutineContext().get(TransactionElement.Key) != null) {
                Function1<rs.c<? super R>, Object> function1 = this.$block;
                this.label = 1;
                obj = function1.invoke(this);
                if (obj == f10) {
                    return f10;
                }
            } else {
                throw new IllegalStateException("Expected a TransactionElement in the CoroutineContext but none was found.");
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (rs.c) ((rs.c) obj));
    }
}
