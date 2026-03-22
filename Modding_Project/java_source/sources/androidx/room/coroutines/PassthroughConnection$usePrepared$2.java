package androidx.room.coroutines;

import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PassthroughConnectionPool.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.PassthroughConnection$usePrepared$2", f = "PassthroughConnectionPool.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nPassthroughConnectionPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PassthroughConnectionPool.kt\nandroidx/room/coroutines/PassthroughConnection$usePrepared$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n1#2:178\n*E\n"})
/* loaded from: classes2.dex */
public final class PassthroughConnection$usePrepared$2 extends SuspendLambda implements Function1<rs.c<? super Object>, Object> {
    final /* synthetic */ Function1<SQLiteStatement, R> $block;
    final /* synthetic */ String $sql;
    int label;
    final /* synthetic */ PassthroughConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PassthroughConnection$usePrepared$2(PassthroughConnection passthroughConnection, String str, Function1<? super SQLiteStatement, ? extends R> function1, rs.c<? super PassthroughConnection$usePrepared$2> cVar) {
        super(1, cVar);
        this.this$0 = passthroughConnection;
        this.$sql = str;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(rs.c<?> cVar) {
        return new PassthroughConnection$usePrepared$2(this.this$0, this.$sql, this.$block, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(rs.c<? super Object> cVar) {
        return invoke2((rs.c<Object>) cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            SQLiteStatement prepare = this.this$0.getDelegate().prepare(this.$sql);
            try {
                Object invoke = this.$block.invoke(prepare);
                ys.a.a(prepare, null);
                return invoke;
            } finally {
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(rs.c<Object> cVar) {
        return ((PassthroughConnection$usePrepared$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
