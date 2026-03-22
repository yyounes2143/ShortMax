package androidx.room;

import gt.g0;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InvalidationTracker.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1", f = "InvalidationTracker.kt", l = {238, 238, 242}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class TriggerBasedInvalidationTracker$createFlow$1 extends SuspendLambda implements Function2<kt.c<? super Set<? extends String>>, rs.c<? super Unit>, Object> {
    final /* synthetic */ boolean $emitInitialState;
    final /* synthetic */ String[] $resolvedTableNames;
    final /* synthetic */ int[] $tableIds;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InvalidationTracker.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1", f = "InvalidationTracker.kt", l = {238}, m = "invokeSuspend")
    /* renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
        int label;
        final /* synthetic */ TriggerBasedInvalidationTracker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = triggerBasedInvalidationTracker;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.this$0, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                if (triggerBasedInvalidationTracker.syncTriggers$room_runtime(this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InvalidationTracker.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,654:1\n3912#2:655\n4011#2:656\n13537#2,2:657\n4012#2,2:659\n13539#2:661\n4014#2:662\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2\n*L\n250#1:655\n250#1:656\n250#1:657,2\n250#1:659,2\n250#1:661\n250#1:662\n*E\n"})
    /* renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass2<T> implements kt.c {
        final /* synthetic */ kt.c<Set<String>> $$this$flow;
        final /* synthetic */ Ref.ObjectRef<int[]> $currentVersions;
        final /* synthetic */ boolean $emitInitialState;
        final /* synthetic */ String[] $resolvedTableNames;
        final /* synthetic */ int[] $tableIds;

        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Ref.ObjectRef<int[]> objectRef, boolean z10, kt.c<? super Set<String>> cVar, String[] strArr, int[] iArr) {
            this.$currentVersions = objectRef;
            this.$emitInitialState = z10;
            this.$$this$flow = cVar;
            this.$resolvedTableNames = strArr;
            this.$tableIds = iArr;
        }

        @Override // kt.c
        public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
            return emit((int[]) obj, (rs.c<? super Unit>) cVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(int[] r13, rs.c<? super kotlin.Unit> r14) {
            /*
                r12 = this;
                boolean r0 = r14 instanceof androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
                if (r0 == 0) goto L13
                r0 = r14
                androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
                r0.<init>(r12, r14)
            L18:
                java.lang.Object r14 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.label
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L39
                if (r2 == r4) goto L31
                if (r2 != r3) goto L29
                goto L31
            L29:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r14)
                throw r13
            L31:
                java.lang.Object r13 = r0.L$0
                int[] r13 = (int[]) r13
                kotlin.f.b(r14)
                goto L9f
            L39:
                kotlin.f.b(r14)
                kotlin.jvm.internal.Ref$ObjectRef<int[]> r14 = r12.$currentVersions
                T r2 = r14.element
                if (r2 != 0) goto L59
                boolean r14 = r12.$emitInitialState
                if (r14 == 0) goto L9f
                kt.c<java.util.Set<java.lang.String>> r14 = r12.$$this$flow
                java.lang.String[] r2 = r12.$resolvedTableNames
                java.util.Set r2 = kotlin.collections.n.G1(r2)
                r0.L$0 = r13
                r0.label = r4
                java.lang.Object r14 = r14.emit(r2, r0)
                if (r14 != r1) goto L9f
                return r1
            L59:
                java.lang.String[] r2 = r12.$resolvedTableNames
                int[] r4 = r12.$tableIds
                java.util.ArrayList r5 = new java.util.ArrayList
                r5.<init>()
                int r6 = r2.length
                r7 = 0
                r8 = r7
            L65:
                if (r7 >= r6) goto L88
                r9 = r2[r7]
                int r10 = r8 + 1
                T r11 = r14.element
                if (r11 == 0) goto L80
                int[] r11 = (int[]) r11
                r8 = r4[r8]
                r11 = r11[r8]
                r8 = r13[r8]
                if (r11 == r8) goto L7c
                r5.add(r9)
            L7c:
                int r7 = r7 + 1
                r8 = r10
                goto L65
            L80:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r14 = "Required value was null."
                r13.<init>(r14)
                throw r13
            L88:
                boolean r14 = r5.isEmpty()
                if (r14 != 0) goto L9f
                kt.c<java.util.Set<java.lang.String>> r14 = r12.$$this$flow
                java.util.Set r2 = kotlin.collections.CollectionsKt.i1(r5)
                r0.L$0 = r13
                r0.label = r3
                java.lang.Object r14 = r14.emit(r2, r0)
                if (r14 != r1) goto L9f
                return r1
            L9f:
                kotlin.jvm.internal.Ref$ObjectRef<int[]> r14 = r12.$currentVersions
                r14.element = r13
                kotlin.Unit r13 = kotlin.Unit.f60915a
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$createFlow$1.AnonymousClass2.emit(int[], rs.c):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$createFlow$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, int[] iArr, boolean z10, String[] strArr, rs.c<? super TriggerBasedInvalidationTracker$createFlow$1> cVar) {
        super(2, cVar);
        this.this$0 = triggerBasedInvalidationTracker;
        this.$tableIds = iArr;
        this.$emitInitialState = z10;
        this.$resolvedTableNames = strArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        TriggerBasedInvalidationTracker$createFlow$1 triggerBasedInvalidationTracker$createFlow$1 = new TriggerBasedInvalidationTracker$createFlow$1(this.this$0, this.$tableIds, this.$emitInitialState, this.$resolvedTableNames, cVar);
        triggerBasedInvalidationTracker$createFlow$1.L$0 = obj;
        return triggerBasedInvalidationTracker$createFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(kt.c<? super Set<? extends String>> cVar, rs.c<? super Unit> cVar2) {
        return invoke2((kt.c<? super Set<String>>) cVar, cVar2);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0094 A[RETURN] */
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
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L32
            if (r1 == r5) goto L2a
            if (r1 == r4) goto L22
            if (r1 == r3) goto L1a
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L1a:
            kotlin.f.b(r12)     // Catch: java.lang.Throwable -> L1f
            goto L95
        L1f:
            r12 = move-exception
            goto L9b
        L22:
            java.lang.Object r1 = r11.L$0
            kt.c r1 = (kt.c) r1
            kotlin.f.b(r12)
            goto L70
        L2a:
            java.lang.Object r1 = r11.L$0
            kt.c r1 = (kt.c) r1
            kotlin.f.b(r12)
            goto L5c
        L32:
            kotlin.f.b(r12)
            java.lang.Object r12 = r11.L$0
            kt.c r12 = (kt.c) r12
            androidx.room.TriggerBasedInvalidationTracker r1 = r11.this$0
            androidx.room.ObservedTableStates r1 = androidx.room.TriggerBasedInvalidationTracker.access$getObservedTableStates$p(r1)
            int[] r6 = r11.$tableIds
            boolean r1 = r1.onObserverAdded$room_runtime(r6)
            if (r1 == 0) goto L72
            androidx.room.TriggerBasedInvalidationTracker r1 = r11.this$0
            androidx.room.RoomDatabase r1 = androidx.room.TriggerBasedInvalidationTracker.access$getDatabase$p(r1)
            r11.L$0 = r12
            r11.label = r5
            r5 = 0
            java.lang.Object r1 = androidx.room.util.DBUtil.getCoroutineContext(r1, r5, r11)
            if (r1 != r0) goto L59
            return r0
        L59:
            r10 = r1
            r1 = r12
            r12 = r10
        L5c:
            kotlin.coroutines.CoroutineContext r12 = (kotlin.coroutines.CoroutineContext) r12
            androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1 r5 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1
            androidx.room.TriggerBasedInvalidationTracker r6 = r11.this$0
            r5.<init>(r6, r2)
            r11.L$0 = r1
            r11.label = r4
            java.lang.Object r12 = gt.e.g(r12, r5, r11)
            if (r12 != r0) goto L70
            return r0
        L70:
            r7 = r1
            goto L73
        L72:
            r7 = r12
        L73:
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef     // Catch: java.lang.Throwable -> L1f
            r5.<init>()     // Catch: java.lang.Throwable -> L1f
            androidx.room.TriggerBasedInvalidationTracker r12 = r11.this$0     // Catch: java.lang.Throwable -> L1f
            androidx.room.ObservedTableVersions r12 = androidx.room.TriggerBasedInvalidationTracker.access$getObservedTableVersions$p(r12)     // Catch: java.lang.Throwable -> L1f
            androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2 r1 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2     // Catch: java.lang.Throwable -> L1f
            boolean r6 = r11.$emitInitialState     // Catch: java.lang.Throwable -> L1f
            java.lang.String[] r8 = r11.$resolvedTableNames     // Catch: java.lang.Throwable -> L1f
            int[] r9 = r11.$tableIds     // Catch: java.lang.Throwable -> L1f
            r4 = r1
            r4.<init>(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L1f
            r11.L$0 = r2     // Catch: java.lang.Throwable -> L1f
            r11.label = r3     // Catch: java.lang.Throwable -> L1f
            java.lang.Object r12 = r12.collect(r1, r11)     // Catch: java.lang.Throwable -> L1f
            if (r12 != r0) goto L95
            return r0
        L95:
            kotlin.KotlinNothingValueException r12 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L1f
            r12.<init>()     // Catch: java.lang.Throwable -> L1f
            throw r12     // Catch: java.lang.Throwable -> L1f
        L9b:
            androidx.room.TriggerBasedInvalidationTracker r0 = r11.this$0
            androidx.room.ObservedTableStates r0 = androidx.room.TriggerBasedInvalidationTracker.access$getObservedTableStates$p(r0)
            int[] r1 = r11.$tableIds
            r0.onObserverRemoved$room_runtime(r1)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$createFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(kt.c<? super Set<String>> cVar, rs.c<? super Unit> cVar2) {
        return ((TriggerBasedInvalidationTracker$createFlow$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
