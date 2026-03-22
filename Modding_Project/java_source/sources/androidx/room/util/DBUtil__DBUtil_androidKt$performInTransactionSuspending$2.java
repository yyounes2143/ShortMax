package androidx.room.util;

import androidx.room.RoomDatabase;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: DBUtil.android.kt */
@Metadata
@d(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2", f = "DBUtil.android.kt", l = {260}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDBUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$2\n+ 2 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n*L\n1#1,259:1\n48#2:260\n67#2:261\n*S KotlinDebug\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$2\n*L\n98#1:260\n98#1:261\n*E\n"})
/* loaded from: classes2.dex */
public final class DBUtil__DBUtil_androidKt$performInTransactionSuspending$2<R> extends SuspendLambda implements Function1<c<? super R>, Object> {
    final /* synthetic */ Function1<c<? super R>, Object> $block;
    final /* synthetic */ RoomDatabase $db;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DBUtil__DBUtil_androidKt$performInTransactionSuspending$2(RoomDatabase roomDatabase, Function1<? super c<? super R>, ? extends Object> function1, c<? super DBUtil__DBUtil_androidKt$performInTransactionSuspending$2> cVar) {
        super(1, cVar);
        this.$db = roomDatabase;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new DBUtil__DBUtil_androidKt$performInTransactionSuspending$2(this.$db, this.$block, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((c) ((c) obj));
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
            RoomDatabase roomDatabase = this.$db;
            DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1(true, false, roomDatabase, null, this.$block);
            this.label = 1;
            obj = roomDatabase.useConnection(false, dBUtil__DBUtil_androidKt$performInTransactionSuspending$2$invokeSuspend$$inlined$internalPerform$1, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    public final Object invoke(c<? super R> cVar) {
        return ((DBUtil__DBUtil_androidKt$performInTransactionSuspending$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
