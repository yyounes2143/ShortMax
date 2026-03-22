package androidx.room.support;

import androidx.room.RoomDatabase;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: QueryInterceptorStatement.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.support.QueryInterceptorStatement$executeUpdateDelete$1", f = "QueryInterceptorStatement.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class QueryInterceptorStatement$executeUpdateDelete$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ List<Object> $argsCopy;
    int label;
    final /* synthetic */ QueryInterceptorStatement this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QueryInterceptorStatement$executeUpdateDelete$1(QueryInterceptorStatement queryInterceptorStatement, List<? extends Object> list, rs.c<? super QueryInterceptorStatement$executeUpdateDelete$1> cVar) {
        super(2, cVar);
        this.this$0 = queryInterceptorStatement;
        this.$argsCopy = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new QueryInterceptorStatement$executeUpdateDelete$1(this.this$0, this.$argsCopy, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((QueryInterceptorStatement$executeUpdateDelete$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        RoomDatabase.QueryCallback queryCallback;
        String str;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            queryCallback = this.this$0.queryCallback;
            str = this.this$0.sqlStatement;
            queryCallback.onQuery(str, this.$argsCopy);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
