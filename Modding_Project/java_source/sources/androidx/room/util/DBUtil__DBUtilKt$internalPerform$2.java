package androidx.room.util;

import androidx.room.InvalidationTracker;
import androidx.room.PooledConnection;
import androidx.room.RoomDatabase;
import androidx.room.Transactor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: DBUtil.kt */
@Metadata
@d(c = "androidx.room.util.DBUtil__DBUtilKt$internalPerform$2", f = "DBUtil.kt", l = {56, 57, 59, 60, 65}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDBUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt$internalPerform$2\n*L\n1#1,171:1\n*E\n"})
/* loaded from: classes2.dex */
public final class DBUtil__DBUtilKt$internalPerform$2<R> extends SuspendLambda implements Function2<Transactor, c<? super R>, Object> {
    final /* synthetic */ Function2<PooledConnection, c<? super R>, Object> $block;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ boolean $isReadOnly;
    final /* synthetic */ RoomDatabase $this_internalPerform;
    /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DBUtil__DBUtilKt$internalPerform$2(boolean z10, boolean z11, RoomDatabase roomDatabase, Function2<? super PooledConnection, ? super c<? super R>, ? extends Object> function2, c<? super DBUtil__DBUtilKt$internalPerform$2> cVar) {
        super(2, cVar);
        this.$inTransaction = z10;
        this.$isReadOnly = z11;
        this.$this_internalPerform = roomDatabase;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        DBUtil__DBUtilKt$internalPerform$2 dBUtil__DBUtilKt$internalPerform$2 = new DBUtil__DBUtilKt$internalPerform$2(this.$inTransaction, this.$isReadOnly, this.$this_internalPerform, this.$block, cVar);
        dBUtil__DBUtilKt$internalPerform$2.L$0 = obj;
        return dBUtil__DBUtilKt$internalPerform$2;
    }

    public final Object invoke(Transactor transactor, c<? super R> cVar) {
        return ((DBUtil__DBUtilKt$internalPerform$2) create(transactor, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil__DBUtilKt$internalPerform$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        Transactor.SQLiteTransactionType sQLiteTransactionType;
        Transactor transactor = (Transactor) this.L$0;
        InlineMarker.mark(10);
        if (this.$inTransaction) {
            boolean z10 = this.$isReadOnly;
            if (z10) {
                sQLiteTransactionType = Transactor.SQLiteTransactionType.DEFERRED;
            } else {
                sQLiteTransactionType = Transactor.SQLiteTransactionType.IMMEDIATE;
            }
            if (!z10) {
                InlineMarker.mark(0);
                Object inTransaction = transactor.inTransaction(this);
                InlineMarker.mark(1);
                if (!((Boolean) inTransaction).booleanValue()) {
                    InvalidationTracker invalidationTracker = this.$this_internalPerform.getInvalidationTracker();
                    InlineMarker.mark(0);
                    invalidationTracker.sync$room_runtime(this);
                    InlineMarker.mark(1);
                }
            }
            DBUtil__DBUtilKt$internalPerform$2$result$1 dBUtil__DBUtilKt$internalPerform$2$result$1 = new DBUtil__DBUtilKt$internalPerform$2$result$1(this.$block, null);
            InlineMarker.mark(0);
            Object withTransaction = transactor.withTransaction(sQLiteTransactionType, dBUtil__DBUtilKt$internalPerform$2$result$1, this);
            InlineMarker.mark(1);
            if (!this.$isReadOnly) {
                InlineMarker.mark(0);
                Object inTransaction2 = transactor.inTransaction(this);
                InlineMarker.mark(1);
                if (!((Boolean) inTransaction2).booleanValue()) {
                    this.$this_internalPerform.getInvalidationTracker().refreshAsync();
                    return withTransaction;
                }
                return withTransaction;
            }
            return withTransaction;
        }
        return this.$block.invoke(transactor, this);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Transactor transactor, Object obj) {
        return invoke(transactor, (c) ((c) obj));
    }
}
