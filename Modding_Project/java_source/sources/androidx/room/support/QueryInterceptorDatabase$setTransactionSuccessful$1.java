package androidx.room.support;

import androidx.room.RoomDatabase;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: QueryInterceptorDatabase.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.support.QueryInterceptorDatabase$setTransactionSuccessful$1", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class QueryInterceptorDatabase$setTransactionSuccessful$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    int label;
    final /* synthetic */ QueryInterceptorDatabase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QueryInterceptorDatabase$setTransactionSuccessful$1(QueryInterceptorDatabase queryInterceptorDatabase, rs.c<? super QueryInterceptorDatabase$setTransactionSuccessful$1> cVar) {
        super(2, cVar);
        this.this$0 = queryInterceptorDatabase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new QueryInterceptorDatabase$setTransactionSuccessful$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((QueryInterceptorDatabase$setTransactionSuccessful$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        RoomDatabase.QueryCallback queryCallback;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            queryCallback = this.this$0.queryCallback;
            queryCallback.onQuery("TRANSACTION SUCCESSFUL", CollectionsKt.n());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
