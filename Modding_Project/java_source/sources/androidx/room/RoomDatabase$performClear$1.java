package androidx.room;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RoomDatabase.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.RoomDatabase$performClear$1", f = "RoomDatabase.android.kt", l = {531}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class RoomDatabase$performClear$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ boolean $hasForeignKeys;
    final /* synthetic */ String[] $tableNames;
    int label;
    final /* synthetic */ RoomDatabase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomDatabase.android.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.room.RoomDatabase$performClear$1$1", f = "RoomDatabase.android.kt", l = {532, 533, 535, 541, 542, 543}, m = "invokeSuspend")
    /* renamed from: androidx.room.RoomDatabase$performClear$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<Transactor, rs.c<? super Unit>, Object> {
        final /* synthetic */ boolean $hasForeignKeys;
        final /* synthetic */ String[] $tableNames;
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ RoomDatabase this$0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RoomDatabase.android.kt */
        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "androidx.room.RoomDatabase$performClear$1$1$1", f = "RoomDatabase.android.kt", l = {537, 539}, m = "invokeSuspend")
        @SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$performClear$1$1$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,2191:1\n13472#2,2:2192\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$performClear$1$1$1\n*L\n539#1:2192,2\n*E\n"})
        /* renamed from: androidx.room.RoomDatabase$performClear$1$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C00661 extends SuspendLambda implements Function2<TransactionScope<Unit>, rs.c<? super Unit>, Object> {
            final /* synthetic */ boolean $hasForeignKeys;
            final /* synthetic */ String[] $tableNames;
            int I$0;
            int I$1;
            private /* synthetic */ Object L$0;
            Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00661(boolean z10, String[] strArr, rs.c<? super C00661> cVar) {
                super(2, cVar);
                this.$hasForeignKeys = z10;
                this.$tableNames = strArr;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                C00661 c00661 = new C00661(this.$hasForeignKeys, this.$tableNames, cVar);
                c00661.L$0 = obj;
                return c00661;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(TransactionScope<Unit> transactionScope, rs.c<? super Unit> cVar) {
                return ((C00661) create(transactionScope, cVar)).invokeSuspend(Unit.f60915a);
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x0051  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0077 -> B:20:0x007a). Please submit an issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r10) {
                /*
                    r9 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                    int r1 = r9.label
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L2e
                    if (r1 == r3) goto L26
                    if (r1 != r2) goto L1e
                    int r1 = r9.I$1
                    int r4 = r9.I$0
                    java.lang.Object r5 = r9.L$1
                    java.lang.String[] r5 = (java.lang.String[]) r5
                    java.lang.Object r6 = r9.L$0
                    androidx.room.TransactionScope r6 = (androidx.room.TransactionScope) r6
                    kotlin.f.b(r10)
                    goto L7a
                L1e:
                    java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r10.<init>(r0)
                    throw r10
                L26:
                    java.lang.Object r1 = r9.L$0
                    androidx.room.TransactionScope r1 = (androidx.room.TransactionScope) r1
                    kotlin.f.b(r10)
                    goto L47
                L2e:
                    kotlin.f.b(r10)
                    java.lang.Object r10 = r9.L$0
                    r1 = r10
                    androidx.room.TransactionScope r1 = (androidx.room.TransactionScope) r1
                    boolean r10 = r9.$hasForeignKeys
                    if (r10 == 0) goto L47
                    r9.L$0 = r1
                    r9.label = r3
                    java.lang.String r10 = "PRAGMA defer_foreign_keys = TRUE"
                    java.lang.Object r10 = androidx.room.TransactorKt.execSQL(r1, r10, r9)
                    if (r10 != r0) goto L47
                    return r0
                L47:
                    java.lang.String[] r10 = r9.$tableNames
                    int r4 = r10.length
                    r5 = 0
                    r6 = r1
                    r1 = r4
                    r4 = r5
                    r5 = r10
                L4f:
                    if (r4 >= r1) goto L7c
                    r10 = r5[r4]
                    java.lang.StringBuilder r7 = new java.lang.StringBuilder
                    r7.<init>()
                    java.lang.String r8 = "DELETE FROM `"
                    r7.append(r8)
                    r7.append(r10)
                    r10 = 96
                    r7.append(r10)
                    java.lang.String r10 = r7.toString()
                    r9.L$0 = r6
                    r9.L$1 = r5
                    r9.I$0 = r4
                    r9.I$1 = r1
                    r9.label = r2
                    java.lang.Object r10 = androidx.room.TransactorKt.execSQL(r6, r10, r9)
                    if (r10 != r0) goto L7a
                    return r0
                L7a:
                    int r4 = r4 + r3
                    goto L4f
                L7c:
                    kotlin.Unit r10 = kotlin.Unit.f60915a
                    return r10
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase$performClear$1.AnonymousClass1.C00661.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RoomDatabase roomDatabase, boolean z10, String[] strArr, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = roomDatabase;
            this.$hasForeignKeys = z10;
            this.$tableNames = strArr;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$hasForeignKeys, this.$tableNames, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Transactor transactor, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(transactor, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0086 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0092 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00b6 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r7.label
                r2 = 0
                switch(r1) {
                    case 0: goto L40;
                    case 1: goto L38;
                    case 2: goto L30;
                    case 3: goto L28;
                    case 4: goto L20;
                    case 5: goto L17;
                    case 6: goto L12;
                    default: goto La;
                }
            La:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L12:
                kotlin.f.b(r8)
                goto Lb7
            L17:
                java.lang.Object r1 = r7.L$0
                androidx.room.Transactor r1 = (androidx.room.Transactor) r1
                kotlin.f.b(r8)
                goto La9
            L20:
                java.lang.Object r1 = r7.L$0
                androidx.room.Transactor r1 = (androidx.room.Transactor) r1
                kotlin.f.b(r8)
                goto L93
            L28:
                java.lang.Object r1 = r7.L$0
                androidx.room.Transactor r1 = (androidx.room.Transactor) r1
                kotlin.f.b(r8)
                goto L87
            L30:
                java.lang.Object r1 = r7.L$0
                androidx.room.Transactor r1 = (androidx.room.Transactor) r1
                kotlin.f.b(r8)
                goto L70
            L38:
                java.lang.Object r1 = r7.L$0
                androidx.room.Transactor r1 = (androidx.room.Transactor) r1
                kotlin.f.b(r8)
                goto L56
            L40:
                kotlin.f.b(r8)
                java.lang.Object r8 = r7.L$0
                androidx.room.Transactor r8 = (androidx.room.Transactor) r8
                r7.L$0 = r8
                r1 = 1
                r7.label = r1
                java.lang.Object r1 = r8.inTransaction(r7)
                if (r1 != r0) goto L53
                return r0
            L53:
                r6 = r1
                r1 = r8
                r8 = r6
            L56:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 != 0) goto L70
                androidx.room.RoomDatabase r8 = r7.this$0
                androidx.room.InvalidationTracker r8 = r8.getInvalidationTracker()
                r7.L$0 = r1
                r3 = 2
                r7.label = r3
                java.lang.Object r8 = r8.sync$room_runtime(r7)
                if (r8 != r0) goto L70
                return r0
            L70:
                androidx.room.Transactor$SQLiteTransactionType r8 = androidx.room.Transactor.SQLiteTransactionType.IMMEDIATE
                androidx.room.RoomDatabase$performClear$1$1$1 r3 = new androidx.room.RoomDatabase$performClear$1$1$1
                boolean r4 = r7.$hasForeignKeys
                java.lang.String[] r5 = r7.$tableNames
                r3.<init>(r4, r5, r2)
                r7.L$0 = r1
                r4 = 3
                r7.label = r4
                java.lang.Object r8 = r1.withTransaction(r8, r3, r7)
                if (r8 != r0) goto L87
                return r0
            L87:
                r7.L$0 = r1
                r8 = 4
                r7.label = r8
                java.lang.Object r8 = r1.inTransaction(r7)
                if (r8 != r0) goto L93
                return r0
            L93:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 != 0) goto Lc0
                r7.L$0 = r1
                r8 = 5
                r7.label = r8
                java.lang.String r8 = "PRAGMA wal_checkpoint(FULL)"
                java.lang.Object r8 = androidx.room.TransactorKt.execSQL(r1, r8, r7)
                if (r8 != r0) goto La9
                return r0
            La9:
                r7.L$0 = r2
                r8 = 6
                r7.label = r8
                java.lang.String r8 = "VACUUM"
                java.lang.Object r8 = androidx.room.TransactorKt.execSQL(r1, r8, r7)
                if (r8 != r0) goto Lb7
                return r0
            Lb7:
                androidx.room.RoomDatabase r8 = r7.this$0
                androidx.room.InvalidationTracker r8 = r8.getInvalidationTracker()
                r8.refreshAsync()
            Lc0:
                kotlin.Unit r8 = kotlin.Unit.f60915a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase$performClear$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomDatabase$performClear$1(RoomDatabase roomDatabase, boolean z10, String[] strArr, rs.c<? super RoomDatabase$performClear$1> cVar) {
        super(2, cVar);
        this.this$0 = roomDatabase;
        this.$hasForeignKeys = z10;
        this.$tableNames = strArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RoomDatabase$performClear$1(this.this$0, this.$hasForeignKeys, this.$tableNames, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RoomDatabase$performClear$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        RoomConnectionManager roomConnectionManager;
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
            roomConnectionManager = this.this$0.connectionManager;
            if (roomConnectionManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
                roomConnectionManager = null;
            }
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$hasForeignKeys, this.$tableNames, null);
            this.label = 1;
            if (roomConnectionManager.useConnection(false, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
