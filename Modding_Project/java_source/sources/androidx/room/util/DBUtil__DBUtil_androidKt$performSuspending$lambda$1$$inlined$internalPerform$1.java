package androidx.room.util;

import androidx.room.RoomDatabase;
import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.coroutines.RawConnectionAccessor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: DBUtil.kt */
@Metadata
@d(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1", f = "DBUtil.android.kt", l = {56, 57, 59, 60}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDBUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt$internalPerform$2\n+ 2 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt\n*L\n1#1,171:1\n55#2,2:172\n*E\n"})
/* loaded from: classes2.dex */
public final class DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1<R> extends SuspendLambda implements Function2<Transactor, c<? super R>, Object> {
    final /* synthetic */ Function1 $block$inlined;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ boolean $isReadOnly;
    final /* synthetic */ RoomDatabase $this_internalPerform;
    /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* compiled from: DBUtil.kt */
    @Metadata
    @d(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1$1", f = "DBUtil.android.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nDBUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt$internalPerform$2$result$1\n+ 2 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt\n*L\n1#1,59:1\n55#2,2:60\n*E\n"})
    /* renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<TransactionScope<R>, c<? super R>, Object> {
        final /* synthetic */ Function1 $block$inlined;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(c cVar, Function1 function1) {
            super(2, cVar);
            this.$block$inlined = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(cVar, this.$block$inlined);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        public final Object invoke(TransactionScope<R> transactionScope, c<? super R> cVar) {
            return ((AnonymousClass1) create(transactionScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.label == 0) {
                f.b(obj);
                TransactionScope transactionScope = (TransactionScope) this.L$0;
                Intrinsics.checkNotNull(transactionScope, "null cannot be cast to non-null type androidx.room.coroutines.RawConnectionAccessor");
                return this.$block$inlined.invoke(((RawConnectionAccessor) transactionScope).getRawConnection());
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke((TransactionScope) ((TransactionScope) obj), (c) ((c) obj2));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(boolean z10, boolean z11, RoomDatabase roomDatabase, c cVar, Function1 function1) {
        super(2, cVar);
        this.$inTransaction = z10;
        this.$isReadOnly = z11;
        this.$this_internalPerform = roomDatabase;
        this.$block$inlined = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(this.$inTransaction, this.$isReadOnly, this.$this_internalPerform, cVar, this.$block$inlined);
        dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1.L$0 = obj;
        return dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;
    }

    public final Object invoke(Transactor transactor, c<? super R> cVar) {
        return ((DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1) create(transactor, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Transactor transactor, Object obj) {
        return invoke(transactor, (c) ((c) obj));
    }
}
