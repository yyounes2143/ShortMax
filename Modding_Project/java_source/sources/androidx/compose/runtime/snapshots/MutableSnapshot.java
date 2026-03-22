package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.snapshots.tooling.SnapshotInstanceObservers;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserver;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserverKt;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Snapshot.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/MutableSnapshot\n+ 2 SnapshotObserver.kt\nandroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 SnapshotId.jvm.kt\nandroidx/compose/runtime/snapshots/SnapshotId_jvmKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 8 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 9 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 10 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 11 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,2486:1\n1102#1,2:2499\n1108#1,3:2505\n1111#1:2510\n1112#1,5:2513\n1102#1,2:2601\n1108#1,3:2608\n1111#1:2613\n1112#1,5:2616\n1102#1,9:2701\n1111#1:2712\n1112#1,5:2715\n166#2,12:2487\n178#2,2:2518\n166#2,12:2589\n178#2,2:2621\n1893#3:2501\n1893#3:2508\n1893#3:2520\n1893#3:2532\n1893#3:2603\n1893#3:2611\n1893#3:2689\n1893#3:2697\n1893#3:2710\n1893#3:2720\n1893#3:2722\n33#4:2502\n33#4:2509\n33#4:2521\n33#4:2533\n33#4:2604\n33#4:2612\n33#4:2690\n33#4:2698\n33#4:2711\n33#4:2721\n33#4:2723\n36#5:2503\n36#5:2504\n36#5:2512\n36#5:2606\n36#5:2607\n36#5:2615\n36#5:2699\n36#5:2700\n36#5:2714\n1#6:2511\n1#6:2605\n1#6:2614\n1#6:2678\n1#6:2713\n1#6:2724\n34#7,5:2522\n34#7,5:2527\n34#7,5:2584\n34#7,3:2686\n38#7:2691\n34#7,5:2692\n231#8,3:2534\n200#8,7:2537\n211#8,3:2545\n214#8,9:2549\n234#8:2558\n231#8,3:2559\n200#8,7:2562\n211#8,3:2570\n214#8,9:2574\n234#8:2583\n231#8,3:2636\n200#8,7:2639\n211#8,3:2647\n214#8,9:2651\n234#8:2660\n231#8,3:2661\n200#8,7:2664\n211#8,3:2672\n214#8,2:2676\n217#8,6:2679\n234#8:2685\n1399#9:2544\n1270#9:2548\n1399#9:2569\n1270#9:2573\n1399#9:2646\n1270#9:2650\n1399#9:2671\n1270#9:2675\n34#10,4:2623\n49#10,4:2627\n49#10,4:2632\n206#11:2631\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/MutableSnapshot\n*L\n772#1:2499,2\n772#1:2505,3\n772#1:2510\n772#1:2513,5\n924#1:2601,2\n924#1:2608,3\n924#1:2613\n924#1:2616,5\n1119#1:2701,9\n1119#1:2712\n1119#1:2715,5\n769#1:2487,12\n769#1:2518,2\n918#1:2589,12\n918#1:2621,2\n773#1:2501\n772#1:2508\n831#1:2520\n887#1:2532\n925#1:2603\n924#1:2611\n1085#1:2689\n1110#1:2697\n1119#1:2710\n1122#1:2720\n1143#1:2722\n773#1:2502\n772#1:2509\n831#1:2521\n887#1:2533\n925#1:2604\n924#1:2612\n1085#1:2690\n1110#1:2698\n1119#1:2711\n1122#1:2721\n1143#1:2723\n775#1:2503\n781#1:2504\n772#1:2512\n926#1:2606\n930#1:2607\n924#1:2615\n1111#1:2699\n1114#1:2700\n1119#1:2714\n772#1:2511\n924#1:2614\n1119#1:2713\n873#1:2522,5\n879#1:2527,5\n892#1:2584,5\n1082#1:2686,3\n1082#1:2691\n1093#1:2692,5\n890#1:2534,3\n890#1:2537,7\n890#1:2545,3\n890#1:2549,9\n890#1:2558\n891#1:2559,3\n891#1:2562,7\n891#1:2570,3\n891#1:2574,9\n891#1:2583\n990#1:2636,3\n990#1:2639,7\n990#1:2647,3\n990#1:2651,9\n990#1:2660\n1025#1:2661,3\n1025#1:2664,7\n1025#1:2672,3\n1025#1:2676,2\n1025#1:2679,6\n1025#1:2685\n890#1:2544\n890#1:2548\n891#1:2569\n891#1:2573\n990#1:2646\n990#1:2650\n1025#1:2671\n1025#1:2675\n944#1:2623,4\n968#1:2627,4\n972#1:2632,4\n972#1:2631\n*E\n"})
/* loaded from: classes.dex */
public class MutableSnapshot extends Snapshot {
    private boolean applied;
    @Nullable
    private List<? extends StateObject> merged;
    @Nullable
    private MutableScatterSet<StateObject> modified;
    @NotNull
    private SnapshotIdSet previousIds;
    @NotNull
    private int[] previousPinnedSnapshots;
    @Nullable
    private final Function1<Object, Unit> readObserver;
    private int snapshots;
    private int writeCount;
    @Nullable
    private final Function1<Object, Unit> writeObserver;
    @NotNull
    private static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    @NotNull
    private static final int[] EmptyIntArray = new int[0];

    /* compiled from: Snapshot.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public MutableSnapshot(long j10, @NotNull SnapshotIdSet snapshotIdSet, @Nullable Function1<Object, Unit> function1, @Nullable Function1<Object, Unit> function12) {
        super(j10, snapshotIdSet, (DefaultConstructorMarker) null);
        this.readObserver = function1;
        this.writeObserver = function12;
        this.previousIds = SnapshotIdSet.Companion.getEMPTY();
        this.previousPinnedSnapshots = EmptyIntArray;
        this.snapshots = 1;
    }

    private final void abandon() {
        long j10;
        MutableScatterSet<StateObject> modified$runtime = getModified$runtime();
        if (modified$runtime != null) {
            validateNotApplied();
            setModified$runtime(null);
            long snapshotId = getSnapshotId();
            Object[] objArr = modified$runtime.elements;
            long[] jArr = modified$runtime.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i10 = 0;
                while (true) {
                    long j11 = jArr[i10];
                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i11 = 8 - ((~(i10 - length)) >>> 31);
                        for (int i12 = 0; i12 < i11; i12++) {
                            if ((255 & j11) < 128) {
                                for (StateRecord firstStateRecord = ((StateObject) objArr[(i10 << 3) + i12]).getFirstStateRecord(); firstStateRecord != null; firstStateRecord = firstStateRecord.getNext$runtime()) {
                                    if (firstStateRecord.getSnapshotId$runtime() == snapshotId || CollectionsKt.g0(this.previousIds, Long.valueOf(firstStateRecord.getSnapshotId$runtime()))) {
                                        j10 = SnapshotKt.INVALID_SNAPSHOT;
                                        firstStateRecord.setSnapshotId$runtime(j10);
                                    }
                                }
                            }
                            j11 >>= 8;
                        }
                        if (i11 != 8) {
                            break;
                        }
                    }
                    if (i10 == length) {
                        break;
                    }
                    i10++;
                }
            }
        }
        closeAndReleasePinning$runtime();
    }

    private final void releasePreviouslyPinnedSnapshotsLocked() {
        int length = this.previousPinnedSnapshots.length;
        for (int i10 = 0; i10 < length; i10++) {
            SnapshotKt.releasePinningLocked(this.previousPinnedSnapshots[i10]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MutableSnapshot takeNestedMutableSnapshot$default(MutableSnapshot mutableSnapshot, Function1 function1, Function1 function12, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                function1 = null;
            }
            if ((i10 & 2) != 0) {
                function12 = null;
            }
            return mutableSnapshot.takeNestedMutableSnapshot(function1, function12);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: takeNestedMutableSnapshot");
    }

    private final void validateNotApplied() {
        if (this.applied) {
            PreconditionsKt.throwIllegalStateException("Unsupported operation on a snapshot that has been applied");
        }
    }

    private final void validateNotAppliedOrPinned() {
        boolean z10;
        if (this.applied && ((Snapshot) this).pinningTrackingHandle < 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalStateException("Unsupported operation on a disposed or applied snapshot");
        }
    }

    public final <T> T advance$runtime(@NotNull Function0<? extends T> function0) {
        long j10;
        long j11;
        long j12;
        SnapshotIdSet snapshotIdSet;
        recordPrevious$runtime(getSnapshotId());
        T invoke = function0.invoke();
        if (!getApplied$runtime() && !getDisposed$runtime()) {
            long snapshotId = getSnapshotId();
            synchronized (SnapshotKt.getLock()) {
                try {
                    j10 = SnapshotKt.nextSnapshotId;
                    j11 = SnapshotKt.nextSnapshotId;
                    j12 = 1;
                    SnapshotKt.nextSnapshotId = j11 + j12;
                    setSnapshotId$runtime(j10);
                    snapshotIdSet = SnapshotKt.openSnapshots;
                    SnapshotKt.openSnapshots = snapshotIdSet.set(getSnapshotId());
                    Unit unit = Unit.f60915a;
                    InlineMarker.finallyStart(1);
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
            InlineMarker.finallyEnd(1);
            setInvalid$runtime(SnapshotKt.addRange(getInvalid$runtime(), snapshotId + j12, getSnapshotId()));
        }
        return invoke;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00dd A[LOOP:1: B:39:0x00db->B:40:0x00dd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.compose.runtime.snapshots.SnapshotApplyResult apply() {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.MutableSnapshot.apply():androidx.compose.runtime.snapshots.SnapshotApplyResult");
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void closeLocked$runtime() {
        SnapshotIdSet snapshotIdSet;
        snapshotIdSet = SnapshotKt.openSnapshots;
        SnapshotKt.openSnapshots = snapshotIdSet.clear(getSnapshotId()).andNot(this.previousIds);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
        if (!getDisposed$runtime()) {
            super.dispose();
            mo1497nestedDeactivated$runtime(this);
            SnapshotObserverKt.dispatchObserverOnPreDispose(this);
        }
    }

    public final boolean getApplied$runtime() {
        return this.applied;
    }

    @Nullable
    public final List<StateObject> getMerged$runtime() {
        return this.merged;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public MutableScatterSet<StateObject> getModified$runtime() {
        return this.modified;
    }

    @NotNull
    public final SnapshotIdSet getPreviousIds$runtime() {
        return this.previousIds;
    }

    @NotNull
    public final int[] getPreviousPinnedSnapshots$runtime() {
        return this.previousPinnedSnapshots;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    /* renamed from: getReadObserver$runtime */
    public Function1<Object, Unit> getReadObserver() {
        return this.readObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean getReadOnly() {
        return false;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public int getWriteCount$runtime() {
        return this.writeCount;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public Function1<Object, Unit> getWriteObserver$runtime() {
        return this.writeObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean hasPendingChanges() {
        MutableScatterSet<StateObject> modified$runtime = getModified$runtime();
        if (modified$runtime == null || !modified$runtime.isNotEmpty()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x006c, code lost:
        r2 = androidx.compose.runtime.snapshots.SnapshotKt.readable(r7, getSnapshotId(), r6);
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.runtime.snapshots.SnapshotApplyResult innerApplyLocked$runtime(long r26, @org.jetbrains.annotations.NotNull androidx.collection.MutableScatterSet<androidx.compose.runtime.snapshots.StateObject> r28, @org.jetbrains.annotations.Nullable java.util.Map<androidx.compose.runtime.snapshots.StateRecord, ? extends androidx.compose.runtime.snapshots.StateRecord> r29, @org.jetbrains.annotations.NotNull androidx.compose.runtime.snapshots.SnapshotIdSet r30) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.MutableSnapshot.innerApplyLocked$runtime(long, androidx.collection.MutableScatterSet, java.util.Map, androidx.compose.runtime.snapshots.SnapshotIdSet):androidx.compose.runtime.snapshots.SnapshotApplyResult");
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* renamed from: nestedActivated$runtime */
    public void mo1496nestedActivated$runtime(@NotNull Snapshot snapshot) {
        this.snapshots++;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* renamed from: nestedDeactivated$runtime */
    public void mo1497nestedDeactivated$runtime(@NotNull Snapshot snapshot) {
        boolean z10;
        if (this.snapshots > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("no pending nested snapshots");
        }
        int i10 = this.snapshots - 1;
        this.snapshots = i10;
        if (i10 == 0 && !this.applied) {
            abandon();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void notifyObjectsInitialized$runtime() {
        if (!this.applied && !getDisposed$runtime()) {
            advance$runtime();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* renamed from: recordModified$runtime */
    public void mo1498recordModified$runtime(@NotNull StateObject stateObject) {
        MutableScatterSet<StateObject> modified$runtime = getModified$runtime();
        if (modified$runtime == null) {
            modified$runtime = ScatterSetKt.mutableScatterSetOf();
            setModified$runtime(modified$runtime);
        }
        modified$runtime.add(stateObject);
    }

    public final void recordPrevious$runtime(long j10) {
        synchronized (SnapshotKt.getLock()) {
            this.previousIds = this.previousIds.set(j10);
            Unit unit = Unit.f60915a;
        }
    }

    public final void recordPreviousList$runtime(@NotNull SnapshotIdSet snapshotIdSet) {
        synchronized (SnapshotKt.getLock()) {
            this.previousIds = this.previousIds.or(snapshotIdSet);
            Unit unit = Unit.f60915a;
        }
    }

    public final void recordPreviousPinnedSnapshot$runtime(int i10) {
        if (i10 >= 0) {
            this.previousPinnedSnapshots = kotlin.collections.n.K(this.previousPinnedSnapshots, i10);
        }
    }

    public final void recordPreviousPinnedSnapshots$runtime(@NotNull int[] iArr) {
        if (iArr.length == 0) {
            return;
        }
        int[] iArr2 = this.previousPinnedSnapshots;
        if (iArr2.length != 0) {
            iArr = kotlin.collections.n.L(iArr2, iArr);
        }
        this.previousPinnedSnapshots = iArr;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void releasePinnedSnapshotsForCloseLocked$runtime() {
        releasePreviouslyPinnedSnapshotsLocked();
        super.releasePinnedSnapshotsForCloseLocked$runtime();
    }

    public final void setApplied$runtime(boolean z10) {
        this.applied = z10;
    }

    public final void setMerged$runtime(@Nullable List<? extends StateObject> list) {
        this.merged = list;
    }

    public void setModified$runtime(@Nullable MutableScatterSet<StateObject> mutableScatterSet) {
        this.modified = mutableScatterSet;
    }

    public final void setPreviousIds$runtime(@NotNull SnapshotIdSet snapshotIdSet) {
        this.previousIds = snapshotIdSet;
    }

    public final void setPreviousPinnedSnapshots$runtime(@NotNull int[] iArr) {
        this.previousPinnedSnapshots = iArr;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void setWriteCount$runtime(int i10) {
        this.writeCount = i10;
    }

    @NotNull
    public MutableSnapshot takeNestedMutableSnapshot(@Nullable Function1<Object, Unit> function1, @Nullable Function1<Object, Unit> function12) {
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        long j10;
        long j11;
        long j12;
        SnapshotIdSet snapshotIdSet;
        NestedMutableSnapshot nestedMutableSnapshot;
        Function1 mergedWriteObserver;
        long j13;
        long j14;
        SnapshotIdSet snapshotIdSet2;
        validateNotDisposed$runtime();
        validateNotAppliedOrPinned();
        PersistentList access$getObservers$p = SnapshotObserverKt.access$getObservers$p();
        Function1<Object, Unit> function13 = function1;
        Function1<Object, Unit> function14 = function12;
        if (access$getObservers$p != null) {
            Pair<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> mergeObservers = SnapshotObserverKt.mergeObservers(access$getObservers$p, this, false, function13, function14);
            SnapshotInstanceObservers e10 = mergeObservers.e();
            Function1<Object, Unit> readObserver = e10.getReadObserver();
            function14 = e10.getWriteObserver();
            map = mergeObservers.f();
            function13 = readObserver;
        } else {
            map = null;
        }
        recordPrevious$runtime(getSnapshotId());
        synchronized (SnapshotKt.getLock()) {
            j10 = SnapshotKt.nextSnapshotId;
            j11 = SnapshotKt.nextSnapshotId;
            j12 = 1;
            SnapshotKt.nextSnapshotId = j11 + j12;
            snapshotIdSet = SnapshotKt.openSnapshots;
            SnapshotKt.openSnapshots = snapshotIdSet.set(j10);
            SnapshotIdSet invalid$runtime = getInvalid$runtime();
            setInvalid$runtime(invalid$runtime.set(j10));
            SnapshotIdSet addRange = SnapshotKt.addRange(invalid$runtime, getSnapshotId() + j12, j10);
            Function1 mergedReadObserver$default = SnapshotKt.mergedReadObserver$default(function13, getReadObserver(), false, 4, null);
            mergedWriteObserver = SnapshotKt.mergedWriteObserver(function14, getWriteObserver$runtime());
            nestedMutableSnapshot = new NestedMutableSnapshot(j10, addRange, mergedReadObserver$default, mergedWriteObserver, this);
        }
        if (!getApplied$runtime() && !getDisposed$runtime()) {
            long snapshotId = getSnapshotId();
            synchronized (SnapshotKt.getLock()) {
                j13 = SnapshotKt.nextSnapshotId;
                j14 = SnapshotKt.nextSnapshotId;
                SnapshotKt.nextSnapshotId = j14 + j12;
                setSnapshotId$runtime(j13);
                snapshotIdSet2 = SnapshotKt.openSnapshots;
                SnapshotKt.openSnapshots = snapshotIdSet2.set(getSnapshotId());
                Unit unit = Unit.f60915a;
            }
            setInvalid$runtime(SnapshotKt.addRange(getInvalid$runtime(), snapshotId + j12, getSnapshotId()));
        }
        if (access$getObservers$p != null) {
            SnapshotObserverKt.dispatchCreatedObservers(access$getObservers$p, this, nestedMutableSnapshot, map);
        }
        return nestedMutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot takeNestedSnapshot(@Nullable Function1<Object, Unit> function1) {
        MutableSnapshot mutableSnapshot;
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        long j10;
        long j11;
        long j12;
        SnapshotIdSet snapshotIdSet;
        NestedReadonlySnapshot nestedReadonlySnapshot;
        long j13;
        long j14;
        SnapshotIdSet snapshotIdSet2;
        validateNotDisposed$runtime();
        validateNotAppliedOrPinned();
        long snapshotId = getSnapshotId();
        if (this instanceof GlobalSnapshot) {
            mutableSnapshot = null;
        } else {
            mutableSnapshot = this;
        }
        PersistentList access$getObservers$p = SnapshotObserverKt.access$getObservers$p();
        Function1<Object, Unit> function12 = function1;
        if (access$getObservers$p != null) {
            Pair<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> mergeObservers = SnapshotObserverKt.mergeObservers(access$getObservers$p, mutableSnapshot, true, function12, null);
            SnapshotInstanceObservers e10 = mergeObservers.e();
            Function1<Object, Unit> readObserver = e10.getReadObserver();
            e10.getWriteObserver();
            map = mergeObservers.f();
            function12 = readObserver;
        } else {
            map = null;
        }
        recordPrevious$runtime(getSnapshotId());
        synchronized (SnapshotKt.getLock()) {
            j10 = SnapshotKt.nextSnapshotId;
            j11 = SnapshotKt.nextSnapshotId;
            j12 = 1;
            SnapshotKt.nextSnapshotId = j11 + j12;
            snapshotIdSet = SnapshotKt.openSnapshots;
            SnapshotKt.openSnapshots = snapshotIdSet.set(j10);
            nestedReadonlySnapshot = new NestedReadonlySnapshot(j10, SnapshotKt.addRange(getInvalid$runtime(), snapshotId + j12, j10), SnapshotKt.mergedReadObserver$default(function12, getReadObserver(), false, 4, null), this);
        }
        if (!getApplied$runtime() && !getDisposed$runtime()) {
            long snapshotId2 = getSnapshotId();
            synchronized (SnapshotKt.getLock()) {
                j13 = SnapshotKt.nextSnapshotId;
                j14 = SnapshotKt.nextSnapshotId;
                SnapshotKt.nextSnapshotId = j14 + j12;
                setSnapshotId$runtime(j13);
                snapshotIdSet2 = SnapshotKt.openSnapshots;
                SnapshotKt.openSnapshots = snapshotIdSet2.set(getSnapshotId());
                Unit unit = Unit.f60915a;
            }
            setInvalid$runtime(SnapshotKt.addRange(getInvalid$runtime(), snapshotId2 + j12, getSnapshotId()));
        }
        if (access$getObservers$p != null) {
            SnapshotObserverKt.dispatchCreatedObservers(access$getObservers$p, mutableSnapshot, nestedReadonlySnapshot, map);
        }
        return nestedReadonlySnapshot;
    }

    public final void advance$runtime() {
        long j10;
        long j11;
        long j12;
        SnapshotIdSet snapshotIdSet;
        recordPrevious$runtime(getSnapshotId());
        Unit unit = Unit.f60915a;
        if (getApplied$runtime() || getDisposed$runtime()) {
            return;
        }
        long snapshotId = getSnapshotId();
        synchronized (SnapshotKt.getLock()) {
            j10 = SnapshotKt.nextSnapshotId;
            j11 = SnapshotKt.nextSnapshotId;
            j12 = 1;
            SnapshotKt.nextSnapshotId = j11 + j12;
            setSnapshotId$runtime(j10);
            snapshotIdSet = SnapshotKt.openSnapshots;
            SnapshotKt.openSnapshots = snapshotIdSet.set(getSnapshotId());
        }
        setInvalid$runtime(SnapshotKt.addRange(getInvalid$runtime(), snapshotId + j12, getSnapshotId()));
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot getRoot() {
        return this;
    }
}
