package androidx.room;

import android.database.SQLException;
import androidx.room.Transactor;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.y0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InvalidationTracker.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1", f = "InvalidationTracker.kt", l = {418, 425}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 extends SuspendLambda implements Function2<Transactor, rs.c<? super Set<? extends Integer>>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InvalidationTracker.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1$1", f = "InvalidationTracker.kt", l = {426}, m = "invokeSuspend")
    /* renamed from: androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<TransactionScope<Set<? extends Integer>>, rs.c<? super Set<? extends Integer>>, Object> {
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ TriggerBasedInvalidationTracker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = triggerBasedInvalidationTracker;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(TransactionScope<Set<Integer>> transactionScope, rs.c<? super Set<Integer>> cVar) {
            return ((AnonymousClass1) create(transactionScope, cVar)).invokeSuspend(Unit.f60915a);
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
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.this$0;
                this.label = 1;
                obj = triggerBasedInvalidationTracker.checkInvalidatedTables((TransactionScope) this.L$0, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(TransactionScope<Set<? extends Integer>> transactionScope, rs.c<? super Set<? extends Integer>> cVar) {
            return invoke2((TransactionScope<Set<Integer>>) transactionScope, (rs.c<? super Set<Integer>>) cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, rs.c<? super TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1> cVar) {
        super(2, cVar);
        this.this$0 = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(this.this$0, cVar);
        triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1.L$0 = obj;
        return triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(Transactor transactor, rs.c<? super Set<Integer>> cVar) {
        return ((TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1) create(transactor, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Transactor transactor;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return (Set) obj;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                transactor = (Transactor) this.L$0;
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                transactor = (Transactor) this.L$0;
                this.L$0 = transactor;
                this.label = 1;
                obj = transactor.inTransaction(this);
                if (obj == f10) {
                    return f10;
                }
            }
            if (((Boolean) obj).booleanValue()) {
                return y0.f();
            }
            Transactor.SQLiteTransactionType sQLiteTransactionType = Transactor.SQLiteTransactionType.IMMEDIATE;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
            this.L$0 = null;
            this.label = 2;
            obj = transactor.withTransaction(sQLiteTransactionType, anonymousClass1, this);
            if (obj == f10) {
                return f10;
            }
            return (Set) obj;
        } catch (SQLException unused) {
            return y0.f();
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Transactor transactor, rs.c<? super Set<? extends Integer>> cVar) {
        return invoke2(transactor, (rs.c<? super Set<Integer>>) cVar);
    }
}
