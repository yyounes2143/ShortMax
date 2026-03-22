package androidx.room;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: RoomDatabase.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2", f = "RoomDatabase.kt", l = {502}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2<R> extends SuspendLambda implements Function2<g0, rs.c<? super R>, Object> {
    final /* synthetic */ Function2<Transactor, rs.c<? super R>, Object> $block;
    final /* synthetic */ RoomDatabase $this_useWriterConnection;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2(RoomDatabase roomDatabase, Function2<? super Transactor, ? super rs.c<? super R>, ? extends Object> function2, rs.c<? super RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2> cVar) {
        super(2, cVar);
        this.$this_useWriterConnection = roomDatabase;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2(this.$this_useWriterConnection, this.$block, cVar);
    }

    public final Object invoke(g0 g0Var, rs.c<? super R> cVar) {
        return ((RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            RoomDatabase roomDatabase = this.$this_useWriterConnection;
            Function2<Transactor, rs.c<? super R>, Object> function2 = this.$block;
            this.label = 1;
            obj = roomDatabase.useConnection(false, function2, this);
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
