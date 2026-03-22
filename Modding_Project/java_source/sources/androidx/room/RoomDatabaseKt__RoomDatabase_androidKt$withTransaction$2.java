package androidx.room;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: RoomDatabase.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransaction$2", f = "RoomDatabase.android.kt", l = {2044}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class RoomDatabaseKt__RoomDatabase_androidKt$withTransaction$2<R> extends SuspendLambda implements Function1<rs.c<? super R>, Object> {
    final /* synthetic */ Function1<rs.c<? super R>, Object> $block;
    final /* synthetic */ RoomDatabase $this_withTransaction;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RoomDatabaseKt__RoomDatabase_androidKt$withTransaction$2(RoomDatabase roomDatabase, Function1<? super rs.c<? super R>, ? extends Object> function1, rs.c<? super RoomDatabaseKt__RoomDatabase_androidKt$withTransaction$2> cVar) {
        super(1, cVar);
        this.$this_withTransaction = roomDatabase;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(rs.c<?> cVar) {
        return new RoomDatabaseKt__RoomDatabase_androidKt$withTransaction$2(this.$this_withTransaction, this.$block, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((rs.c) ((rs.c) obj));
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                this.$this_withTransaction.beginTransaction();
                Function1<rs.c<? super R>, Object> function1 = this.$block;
                this.label = 1;
                obj = function1.invoke(this);
                if (obj == f10) {
                    return f10;
                }
            }
            this.$this_withTransaction.setTransactionSuccessful();
            return obj;
        } finally {
            this.$this_withTransaction.endTransaction();
        }
    }

    public final Object invoke(rs.c<? super R> cVar) {
        return ((RoomDatabaseKt__RoomDatabase_androidKt$withTransaction$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
