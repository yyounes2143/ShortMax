package androidx.room;

import androidx.room.ObservedTableStates;
import androidx.room.Transactor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InvalidationTracker.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1", f = "InvalidationTracker.kt", l = {307, 313}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class TriggerBasedInvalidationTracker$syncTriggers$2$1$1 extends SuspendLambda implements Function2<Transactor, rs.c<? super Boolean>, Object> {
    final /* synthetic */ ObservedTableStates.ObserveOp[] $tablesToSync;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InvalidationTracker.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1", f = "InvalidationTracker.kt", l = {317, 318}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,654:1\n13537#2,3:655\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1\n*L\n314#1:655,3\n*E\n"})
    /* renamed from: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<TransactionScope<Unit>, rs.c<? super Unit>, Object> {
        final /* synthetic */ Transactor $connection;
        final /* synthetic */ ObservedTableStates.ObserveOp[] $tablesToSync;
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ TriggerBasedInvalidationTracker this$0;

        /* compiled from: InvalidationTracker.kt */
        @Metadata
        /* renamed from: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1$WhenMappings */
        /* loaded from: classes2.dex */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ObservedTableStates.ObserveOp.values().length];
                try {
                    iArr[ObservedTableStates.ObserveOp.NO_OP.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ObservedTableStates.ObserveOp.ADD.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ObservedTableStates.ObserveOp.REMOVE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ObservedTableStates.ObserveOp[] observeOpArr, TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Transactor transactor, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$tablesToSync = observeOpArr;
            this.this$0 = triggerBasedInvalidationTracker;
            this.$connection = transactor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.$tablesToSync, this.this$0, this.$connection, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(TransactionScope<Unit> transactionScope, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(transactionScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0089  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0066 -> B:20:0x0068). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0086 -> B:27:0x0087). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r11.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L2c
                if (r1 == r3) goto Le
                if (r1 != r2) goto L24
            Le:
                int r1 = r11.I$2
                int r4 = r11.I$1
                int r5 = r11.I$0
                java.lang.Object r6 = r11.L$2
                androidx.room.Transactor r6 = (androidx.room.Transactor) r6
                java.lang.Object r7 = r11.L$1
                androidx.room.TriggerBasedInvalidationTracker r7 = (androidx.room.TriggerBasedInvalidationTracker) r7
                java.lang.Object r8 = r11.L$0
                androidx.room.ObservedTableStates$ObserveOp[] r8 = (androidx.room.ObservedTableStates.ObserveOp[]) r8
                kotlin.f.b(r12)
                goto L68
            L24:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L2c:
                kotlin.f.b(r12)
                androidx.room.ObservedTableStates$ObserveOp[] r12 = r11.$tablesToSync
                androidx.room.TriggerBasedInvalidationTracker r1 = r11.this$0
                androidx.room.Transactor r4 = r11.$connection
                int r5 = r12.length
                r6 = 0
                r8 = r12
                r7 = r1
                r12 = r4
                r1 = r5
                r4 = r6
            L3c:
                if (r4 >= r1) goto L89
                r5 = r8[r4]
                int r9 = r6 + 1
                int[] r10 = androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0
                int r5 = r5.ordinal()
                r5 = r10[r5]
                if (r5 == r3) goto L86
                if (r5 == r2) goto L71
                r10 = 3
                if (r5 != r10) goto L6b
                r11.L$0 = r8
                r11.L$1 = r7
                r11.L$2 = r12
                r11.I$0 = r9
                r11.I$1 = r4
                r11.I$2 = r1
                r11.label = r2
                java.lang.Object r5 = androidx.room.TriggerBasedInvalidationTracker.access$stopTrackingTable(r7, r12, r6, r11)
                if (r5 != r0) goto L66
                return r0
            L66:
                r6 = r12
                r5 = r9
            L68:
                r12 = r6
                r6 = r5
                goto L87
            L6b:
                kotlin.NoWhenBranchMatchedException r12 = new kotlin.NoWhenBranchMatchedException
                r12.<init>()
                throw r12
            L71:
                r11.L$0 = r8
                r11.L$1 = r7
                r11.L$2 = r12
                r11.I$0 = r9
                r11.I$1 = r4
                r11.I$2 = r1
                r11.label = r3
                java.lang.Object r5 = androidx.room.TriggerBasedInvalidationTracker.access$startTrackingTable(r7, r12, r6, r11)
                if (r5 != r0) goto L66
                return r0
            L86:
                r6 = r9
            L87:
                int r4 = r4 + r3
                goto L3c
            L89:
                kotlin.Unit r12 = kotlin.Unit.f60915a
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$syncTriggers$2$1$1(ObservedTableStates.ObserveOp[] observeOpArr, TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, rs.c<? super TriggerBasedInvalidationTracker$syncTriggers$2$1$1> cVar) {
        super(2, cVar);
        this.$tablesToSync = observeOpArr;
        this.this$0 = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        TriggerBasedInvalidationTracker$syncTriggers$2$1$1 triggerBasedInvalidationTracker$syncTriggers$2$1$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1$1(this.$tablesToSync, this.this$0, cVar);
        triggerBasedInvalidationTracker$syncTriggers$2$1$1.L$0 = obj;
        return triggerBasedInvalidationTracker$syncTriggers$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Transactor transactor, rs.c<? super Boolean> cVar) {
        return ((TriggerBasedInvalidationTracker$syncTriggers$2$1$1) create(transactor, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Transactor transactor;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return kotlin.coroutines.jvm.internal.a.a(true);
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
            return kotlin.coroutines.jvm.internal.a.a(false);
        }
        Transactor.SQLiteTransactionType sQLiteTransactionType = Transactor.SQLiteTransactionType.IMMEDIATE;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$tablesToSync, this.this$0, transactor, null);
        this.L$0 = null;
        this.label = 2;
        if (transactor.withTransaction(sQLiteTransactionType, anonymousClass1, this) == f10) {
            return f10;
        }
        return kotlin.coroutines.jvm.internal.a.a(true);
    }
}
