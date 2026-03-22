package androidx.room;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: InvalidationTracker.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/ObservedTableStates\n+ 2 ReentrantLock.kt\nandroidx/room/concurrent/ReentrantLockKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,654:1\n28#2,5:655\n28#2,5:660\n28#2,3:665\n32#2:670\n28#2,3:671\n32#2:676\n28#2,5:677\n28#2,5:682\n13493#3,2:668\n13493#3,2:674\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/ObservedTableStates\n*L\n523#1:655,5\n553#1:660,5\n568#1:665,3\n568#1:670\n587#1:671,3\n587#1:676\n602#1:677,5\n608#1:682,5\n570#1:668,2\n589#1:674,2\n*E\n"})
/* loaded from: classes2.dex */
public final class ObservedTableStates {
    @NotNull
    private final ReentrantLock lock = new ReentrantLock();
    private volatile boolean needsSync;
    @NotNull
    private final boolean[] tableObservedState;
    @NotNull
    private final long[] tableObserversCount;
    private volatile int version;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: InvalidationTracker.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class ObserveOp {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ ObserveOp[] $VALUES;
        public static final ObserveOp NO_OP = new ObserveOp("NO_OP", 0);
        public static final ObserveOp ADD = new ObserveOp("ADD", 1);
        public static final ObserveOp REMOVE = new ObserveOp("REMOVE", 2);

        private static final /* synthetic */ ObserveOp[] $values() {
            return new ObserveOp[]{NO_OP, ADD, REMOVE};
        }

        static {
            ObserveOp[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private ObserveOp(String str, int i10) {
        }

        @NotNull
        public static ss.a<ObserveOp> getEntries() {
            return $ENTRIES;
        }

        public static ObserveOp valueOf(String str) {
            return (ObserveOp) Enum.valueOf(ObserveOp.class, str);
        }

        public static ObserveOp[] values() {
            return (ObserveOp[]) $VALUES.clone();
        }
    }

    /* compiled from: InvalidationTracker.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class SyncState {
        @NotNull
        private final boolean[] newStates;
        @NotNull
        private final ObserveOp[] ops;
        private final int version;

        public SyncState(int i10, @NotNull ObserveOp[] ops, @NotNull boolean[] newStates) {
            Intrinsics.checkNotNullParameter(ops, "ops");
            Intrinsics.checkNotNullParameter(newStates, "newStates");
            this.version = i10;
            this.ops = ops;
            this.newStates = newStates;
        }

        @NotNull
        public final boolean[] getNewStates() {
            return this.newStates;
        }

        @NotNull
        public final ObserveOp[] getOps() {
            return this.ops;
        }

        public final int getVersion() {
            return this.version;
        }
    }

    public ObservedTableStates(int i10) {
        this.tableObserversCount = new long[i10];
        this.tableObservedState = new boolean[i10];
    }

    public final void forceNeedSync$room_runtime() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.needsSync = true;
            Unit unit = Unit.f60915a;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
        if (r12.needsSync != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onObserverAdded$room_runtime(@org.jetbrains.annotations.NotNull int[] r13) {
        /*
            r12 = this;
            java.lang.String r0 = "tableIds"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.util.concurrent.locks.ReentrantLock r0 = r12.lock
            r0.lock()
            int r1 = r13.length     // Catch: java.lang.Throwable -> L2b
            r2 = 0
            r3 = r2
            r4 = r3
        Le:
            r5 = 1
            if (r3 >= r1) goto L30
            r6 = r13[r3]     // Catch: java.lang.Throwable -> L2b
            long[] r7 = r12.tableObserversCount     // Catch: java.lang.Throwable -> L2b
            r8 = r7[r6]     // Catch: java.lang.Throwable -> L2b
            r10 = 1
            long r10 = r10 + r8
            r7[r6] = r10     // Catch: java.lang.Throwable -> L2b
            r6 = 0
            int r6 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r6 != 0) goto L2d
            int r4 = r12.version     // Catch: java.lang.Throwable -> L2b
            int r4 = r4 + r5
            r12.version = r4     // Catch: java.lang.Throwable -> L2b
            r12.needsSync = r5     // Catch: java.lang.Throwable -> L2b
            r4 = r5
            goto L2d
        L2b:
            r13 = move-exception
            goto L3b
        L2d:
            int r3 = r3 + 1
            goto Le
        L30:
            if (r4 != 0) goto L36
            boolean r13 = r12.needsSync     // Catch: java.lang.Throwable -> L2b
            if (r13 == 0) goto L37
        L36:
            r2 = r5
        L37:
            r0.unlock()
            return r2
        L3b:
            r0.unlock()
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.ObservedTableStates.onObserverAdded$room_runtime(int[]):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0033, code lost:
        if (r14.needsSync != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onObserverRemoved$room_runtime(@org.jetbrains.annotations.NotNull int[] r15) {
        /*
            r14 = this;
            java.lang.String r0 = "tableIds"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            java.util.concurrent.locks.ReentrantLock r0 = r14.lock
            r0.lock()
            int r1 = r15.length     // Catch: java.lang.Throwable -> L2a
            r2 = 0
            r3 = r2
            r4 = r3
        Le:
            r5 = 1
            if (r3 >= r1) goto L2f
            r6 = r15[r3]     // Catch: java.lang.Throwable -> L2a
            long[] r7 = r14.tableObserversCount     // Catch: java.lang.Throwable -> L2a
            r8 = r7[r6]     // Catch: java.lang.Throwable -> L2a
            r10 = 1
            long r12 = r8 - r10
            r7[r6] = r12     // Catch: java.lang.Throwable -> L2a
            int r6 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r6 != 0) goto L2c
            int r4 = r14.version     // Catch: java.lang.Throwable -> L2a
            int r4 = r4 + r5
            r14.version = r4     // Catch: java.lang.Throwable -> L2a
            r14.needsSync = r5     // Catch: java.lang.Throwable -> L2a
            r4 = r5
            goto L2c
        L2a:
            r15 = move-exception
            goto L3a
        L2c:
            int r3 = r3 + 1
            goto Le
        L2f:
            if (r4 != 0) goto L35
            boolean r15 = r14.needsSync     // Catch: java.lang.Throwable -> L2a
            if (r15 == 0) goto L36
        L35:
            r2 = r5
        L36:
            r0.unlock()
            return r2
        L3a:
            r0.unlock()
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.ObservedTableStates.onObserverRemoved$room_runtime(int[]):boolean");
    }

    public final void onSync$room_runtime(@NotNull Function1<? super ObserveOp[], Boolean> action) {
        int i10;
        boolean z10;
        boolean z11;
        ObserveOp observeOp;
        Intrinsics.checkNotNullParameter(action, "action");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.needsSync) {
                int i11 = this.version;
                boolean[] zArr = new boolean[this.tableObserversCount.length];
                int length = this.tableObserversCount.length;
                ObserveOp[] observeOpArr = new ObserveOp[length];
                int i12 = 0;
                boolean z12 = false;
                while (i12 < length) {
                    if (this.tableObserversCount[i12] > 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10 != this.tableObservedState[i12]) {
                        zArr[i12] = z10;
                        if (z10) {
                            observeOp = ObserveOp.ADD;
                        } else {
                            observeOp = ObserveOp.REMOVE;
                        }
                        z11 = true;
                    } else {
                        z11 = z12;
                        observeOp = ObserveOp.NO_OP;
                    }
                    observeOpArr[i12] = observeOp;
                    i12++;
                    z12 = z11;
                }
                if (!z12) {
                    i10 = 2;
                    InlineMarker.finallyStart(2);
                } else {
                    SyncState syncState = new SyncState(i11, observeOpArr, zArr);
                    InlineMarker.finallyStart(1);
                    reentrantLock.unlock();
                    InlineMarker.finallyEnd(1);
                    if (action.invoke(syncState.getOps()).booleanValue()) {
                        reentrantLock = this.lock;
                        reentrantLock.lock();
                        try {
                            if (this.needsSync && syncState.getVersion() == this.version) {
                                kotlin.collections.n.v(syncState.getNewStates(), this.tableObservedState, 0, 0, 0, 14, null);
                                try {
                                    this.needsSync = false;
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            }
                            Unit unit = Unit.f60915a;
                            InlineMarker.finallyStart(1);
                            reentrantLock.unlock();
                            InlineMarker.finallyEnd(1);
                            return;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } else {
                        return;
                    }
                }
            } else {
                i10 = 3;
                InlineMarker.finallyStart(3);
            }
            reentrantLock.unlock();
            InlineMarker.finallyEnd(i10);
        } finally {
            InlineMarker.finallyStart(1);
            reentrantLock.unlock();
            InlineMarker.finallyEnd(1);
        }
    }

    public final void resetTriggerState$room_runtime() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            kotlin.collections.n.I(this.tableObservedState, false, 0, 0, 6, null);
            this.needsSync = true;
            Unit unit = Unit.f60915a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
