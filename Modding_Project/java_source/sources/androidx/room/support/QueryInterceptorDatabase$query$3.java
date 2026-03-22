package androidx.room.support;

import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: QueryInterceptorDatabase.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.support.QueryInterceptorDatabase$query$3", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class QueryInterceptorDatabase$query$3 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ SupportSQLiteQuery $query;
    final /* synthetic */ QueryInterceptorProgram $queryInterceptorProgram;
    int label;
    final /* synthetic */ QueryInterceptorDatabase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QueryInterceptorDatabase$query$3(QueryInterceptorDatabase queryInterceptorDatabase, SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram, rs.c<? super QueryInterceptorDatabase$query$3> cVar) {
        super(2, cVar);
        this.this$0 = queryInterceptorDatabase;
        this.$query = supportSQLiteQuery;
        this.$queryInterceptorProgram = queryInterceptorProgram;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new QueryInterceptorDatabase$query$3(this.this$0, this.$query, this.$queryInterceptorProgram, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((QueryInterceptorDatabase$query$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        RoomDatabase.QueryCallback queryCallback;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            queryCallback = this.this$0.queryCallback;
            queryCallback.onQuery(this.$query.getSql(), this.$queryInterceptorProgram.getBindArgsCache$room_runtime());
            this.$queryInterceptorProgram.close();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
