package androidx.room.util;

import androidx.room.PooledConnection;
import androidx.room.TransactionScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: DBUtil.kt */
@Metadata
@d(c = "androidx.room.util.DBUtil__DBUtilKt$internalPerform$2$result$1", f = "DBUtil.kt", l = {59}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DBUtil__DBUtilKt$internalPerform$2$result$1<R> extends SuspendLambda implements Function2<TransactionScope<R>, c<? super R>, Object> {
    final /* synthetic */ Function2<PooledConnection, c<? super R>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DBUtil__DBUtilKt$internalPerform$2$result$1(Function2<? super PooledConnection, ? super c<? super R>, ? extends Object> function2, c<? super DBUtil__DBUtilKt$internalPerform$2$result$1> cVar) {
        super(2, cVar);
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        DBUtil__DBUtilKt$internalPerform$2$result$1 dBUtil__DBUtilKt$internalPerform$2$result$1 = new DBUtil__DBUtilKt$internalPerform$2$result$1(this.$block, cVar);
        dBUtil__DBUtilKt$internalPerform$2$result$1.L$0 = obj;
        return dBUtil__DBUtilKt$internalPerform$2$result$1;
    }

    public final Object invoke(TransactionScope<R> transactionScope, c<? super R> cVar) {
        return ((DBUtil__DBUtilKt$internalPerform$2$result$1) create(transactionScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Function2<PooledConnection, c<? super R>, Object> function2 = this.$block;
            this.label = 1;
            obj = function2.invoke((TransactionScope) this.L$0, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        InlineMarker.mark(10);
        return this.$block.invoke((TransactionScope) this.L$0, this);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke((TransactionScope) ((TransactionScope) obj), (c) ((c) obj2));
    }
}
