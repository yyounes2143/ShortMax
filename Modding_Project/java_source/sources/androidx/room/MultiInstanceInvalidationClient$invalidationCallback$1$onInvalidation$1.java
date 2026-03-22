package androidx.room;

import gt.g0;
import java.util.Arrays;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.y0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: MultiInstanceInvalidationClient.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1", f = "MultiInstanceInvalidationClient.android.kt", l = {87}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ String[] $tables;
    Object L$0;
    int label;
    final /* synthetic */ MultiInstanceInvalidationClient this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(String[] strArr, MultiInstanceInvalidationClient multiInstanceInvalidationClient, rs.c<? super MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1> cVar) {
        super(2, cVar);
        this.$tables = strArr;
        this.this$0 = multiInstanceInvalidationClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(this.$tables, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kt.d dVar;
        Set<String> set;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                set = (Set) this.L$0;
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            String[] strArr = this.$tables;
            Set<String> j10 = y0.j(Arrays.copyOf(strArr, strArr.length));
            dVar = this.this$0.invalidatedTables;
            this.L$0 = j10;
            this.label = 1;
            if (dVar.emit(j10, this) == f10) {
                return f10;
            }
            set = j10;
        }
        this.this$0.getInvalidationTracker().notifyObserversByTableNames$room_runtime(set);
        return Unit.f60915a;
    }
}
