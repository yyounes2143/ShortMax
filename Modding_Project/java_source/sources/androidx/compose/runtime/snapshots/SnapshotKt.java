package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.collection.ScatterSetWrapperKt;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.internal.WeakReference;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Snapshot.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 SnapshotId.jvm.kt\nandroidx/compose/runtime/snapshots/SnapshotId_jvmKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 5 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 SnapshotWeakSet.kt\nandroidx/compose/runtime/snapshots/SnapshotWeakSet\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2486:1\n1893#1:2487\n1893#1:2491\n1893#1:2498\n1893#1:2525\n1893#1:2529\n1893#1:2531\n2212#1,4:2537\n2216#1,4:2542\n1893#1:2575\n1893#1:2577\n1893#1:2579\n1893#1:2582\n1893#1:2584\n1893#1:2586\n1893#1:2613\n1893#1:2615\n1893#1:2619\n33#2:2488\n33#2:2489\n33#2:2492\n33#2:2499\n33#2:2526\n33#2:2530\n33#2:2532\n33#2:2576\n33#2:2578\n33#2:2580\n33#2:2583\n33#2:2585\n33#2:2587\n33#2:2614\n33#2:2616\n33#2:2620\n25#2,5:2621\n36#3:2490\n31#3:2527\n31#3:2528\n40#3:2533\n31#3:2534\n31#3:2535\n31#3:2536\n31#3:2541\n31#3:2546\n31#3:2617\n36#3:2618\n36#3:2626\n36#3:2627\n34#4,5:2493\n231#5,3:2500\n200#5,7:2503\n211#5,3:2511\n214#5,9:2515\n234#5:2524\n231#5,3:2588\n200#5,7:2591\n211#5,3:2599\n214#5,9:2603\n234#5:2612\n1399#6:2510\n1270#6:2514\n1399#6:2598\n1270#6:2602\n125#7,28:2547\n1#8:2581\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n*L\n707#1:2487\n1967#1:2491\n1986#1:2498\n2014#1:2525\n2074#1:2529\n2096#1:2531\n2196#1:2537,4\n2196#1:2542,4\n2248#1:2575\n2276#1:2577\n2286#1:2579\n2354#1:2582\n2365#1:2584\n2392#1:2586\n2448#1:2613\n2459#1:2615\n1999#1:2619\n707#1:2488\n1893#1:2489\n1967#1:2492\n1986#1:2499\n2014#1:2526\n2074#1:2530\n2096#1:2532\n2248#1:2576\n2276#1:2578\n2286#1:2580\n2354#1:2583\n2365#1:2585\n2392#1:2587\n2448#1:2614\n2459#1:2616\n1999#1:2620\n1886#1:2621,5\n1944#1:2490\n2038#1:2527\n2055#1:2528\n2121#1:2533\n2136#1:2534\n2175#1:2535\n2184#1:2536\n2196#1:2541\n2216#1:2546\n2480#1:2617\n2482#1:2618\n1904#1:2626\n1928#1:2627\n1980#1:2493,5\n1988#1:2500,3\n1988#1:2503,7\n1988#1:2511,3\n1988#1:2515,9\n1988#1:2524\n2414#1:2588,3\n2414#1:2591,7\n2414#1:2599,3\n2414#1:2603,9\n2414#1:2612\n1988#1:2510\n1988#1:2514\n2414#1:2598\n2414#1:2602\n2223#1:2547,28\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotKt {
    private static final long INVALID_SNAPSHOT = 0;
    @NotNull
    private static List<? extends Function2<? super Set<? extends Object>, ? super Snapshot, Unit>> applyObservers;
    @NotNull
    private static final SnapshotWeakSet<StateObject> extraStateObjects;
    @NotNull
    private static final GlobalSnapshot globalSnapshot;
    @NotNull
    private static List<? extends Function1<Object, Unit>> globalWriteObservers;
    private static long nextSnapshotId;
    @NotNull
    private static SnapshotIdSet openSnapshots;
    @NotNull
    private static AtomicInt pendingApplyObserverCount;
    @NotNull
    private static final SnapshotDoubleIndexHeap pinningTable;
    @NotNull
    private static final Snapshot snapshotInitializer;
    @NotNull
    private static final Function1<SnapshotIdSet, Unit> emptyLambda = new Function1() { // from class: androidx.compose.runtime.snapshots.e
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Unit emptyLambda$lambda$1;
            emptyLambda$lambda$1 = SnapshotKt.emptyLambda$lambda$1((SnapshotIdSet) obj);
            return emptyLambda$lambda$1;
        }
    };
    @NotNull
    private static final SnapshotThreadLocal<Snapshot> threadSnapshot = new SnapshotThreadLocal<>();
    @NotNull
    private static final Object lock = new Object();

    static {
        SnapshotIdSet.Companion companion = SnapshotIdSet.Companion;
        openSnapshots = companion.getEMPTY();
        long j10 = 1;
        nextSnapshotId = SnapshotId_jvmKt.toSnapshotId(1) + j10;
        pinningTable = new SnapshotDoubleIndexHeap();
        extraStateObjects = new SnapshotWeakSet<>();
        applyObservers = CollectionsKt.n();
        globalWriteObservers = CollectionsKt.n();
        long j11 = nextSnapshotId;
        nextSnapshotId = j10 + j11;
        GlobalSnapshot globalSnapshot2 = new GlobalSnapshot(j11, companion.getEMPTY());
        openSnapshots = openSnapshots.set(globalSnapshot2.getSnapshotId());
        globalSnapshot = globalSnapshot2;
        snapshotInitializer = globalSnapshot2;
        pendingApplyObserverCount = new AtomicInt(0);
    }

    @NotNull
    public static final SnapshotIdSet addRange(@NotNull SnapshotIdSet snapshotIdSet, long j10, long j11) {
        while (Intrinsics.compare(j10, j11) < 0) {
            snapshotIdSet = snapshotIdSet.set(j10);
            j10++;
        }
        return snapshotIdSet;
    }

    public static final <T> T advanceGlobalSnapshot(Function1<? super SnapshotIdSet, ? extends T> function1) {
        MutableScatterSet<StateObject> modified$runtime;
        T t10;
        GlobalSnapshot globalSnapshot2 = globalSnapshot;
        synchronized (getLock()) {
            try {
                modified$runtime = globalSnapshot2.getModified$runtime();
                if (modified$runtime != null) {
                    pendingApplyObserverCount.add(1);
                }
                t10 = (T) resetGlobalSnapshotLocked(globalSnapshot2, function1);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (modified$runtime != null) {
            try {
                List<? extends Function2<? super Set<? extends Object>, ? super Snapshot, Unit>> list = applyObservers;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    list.get(i10).invoke(ScatterSetWrapperKt.wrapIntoSet(modified$runtime), globalSnapshot2);
                }
            } finally {
                pendingApplyObserverCount.add(-1);
            }
        }
        synchronized (getLock()) {
            try {
                checkAndOverwriteUnusedRecordsLocked();
                if (modified$runtime != null) {
                    Object[] objArr = modified$runtime.elements;
                    long[] jArr = modified$runtime.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i11 = 0;
                        while (true) {
                            long j10 = jArr[i11];
                            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i12 = 8 - ((~(i11 - length)) >>> 31);
                                for (int i13 = 0; i13 < i12; i13++) {
                                    if ((255 & j10) < 128) {
                                        processForUnusedRecordsLocked((StateObject) objArr[(i11 << 3) + i13]);
                                    }
                                    j10 >>= 8;
                                }
                                if (i12 != 8) {
                                    break;
                                }
                            }
                            if (i11 == length) {
                                break;
                            }
                            i11++;
                        }
                    }
                    Unit unit = Unit.f60915a;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return t10;
    }

    public static final void checkAndOverwriteUnusedRecordsLocked() {
        SnapshotWeakSet<StateObject> snapshotWeakSet = extraStateObjects;
        int size$runtime = snapshotWeakSet.getSize$runtime();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            StateObject stateObject = null;
            if (i10 >= size$runtime) {
                break;
            }
            WeakReference<StateObject> weakReference = snapshotWeakSet.getValues$runtime()[i10];
            if (weakReference != null) {
                stateObject = weakReference.get();
            }
            if (stateObject != null && overwriteUnusedRecordsLocked(stateObject)) {
                if (i11 != i10) {
                    snapshotWeakSet.getValues$runtime()[i11] = weakReference;
                    snapshotWeakSet.getHashes$runtime()[i11] = snapshotWeakSet.getHashes$runtime()[i10];
                }
                i11++;
            }
            i10++;
        }
        for (int i12 = i11; i12 < size$runtime; i12++) {
            snapshotWeakSet.getValues$runtime()[i12] = null;
            snapshotWeakSet.getHashes$runtime()[i12] = 0;
        }
        if (i11 != size$runtime) {
            snapshotWeakSet.setSize$runtime(i11);
        }
    }

    public static final Snapshot createTransparentSnapshotWithNoParentReadObserver(Snapshot snapshot, Function1<Object, Unit> function1, boolean z10) {
        MutableSnapshot mutableSnapshot;
        boolean z11 = snapshot instanceof MutableSnapshot;
        if (!z11 && snapshot != null) {
            return new TransparentObserverSnapshot(snapshot, function1, false, z10);
        }
        if (z11) {
            mutableSnapshot = (MutableSnapshot) snapshot;
        } else {
            mutableSnapshot = null;
        }
        return new TransparentObserverMutableSnapshot(mutableSnapshot, function1, null, false, z10);
    }

    public static /* synthetic */ Snapshot createTransparentSnapshotWithNoParentReadObserver$default(Snapshot snapshot, Function1 function1, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return createTransparentSnapshotWithNoParentReadObserver(snapshot, function1, z10);
    }

    @NotNull
    public static final <T extends StateRecord> T current(@NotNull T t10, @NotNull Snapshot snapshot) {
        T t11;
        T t12 = (T) readable(t10, snapshot.getSnapshotId(), snapshot.getInvalid$runtime());
        if (t12 == null) {
            synchronized (getLock()) {
                t11 = (T) readable(t10, snapshot.getSnapshotId(), snapshot.getInvalid$runtime());
            }
            if (t11 != null) {
                return t11;
            }
            readError();
            throw new KotlinNothingValueException();
        }
        return t12;
    }

    @NotNull
    public static final Snapshot currentSnapshot() {
        Snapshot snapshot = threadSnapshot.get();
        if (snapshot == null) {
            return globalSnapshot;
        }
        return snapshot;
    }

    public static final Unit emptyLambda$lambda$1(SnapshotIdSet snapshotIdSet) {
        return Unit.f60915a;
    }

    private static final StateRecord findYoungestOr(StateRecord stateRecord, Function1<? super StateRecord, Boolean> function1) {
        StateRecord stateRecord2 = stateRecord;
        while (stateRecord != null) {
            if (function1.invoke(stateRecord).booleanValue()) {
                return stateRecord;
            }
            if (Intrinsics.compare(stateRecord2.getSnapshotId$runtime(), stateRecord.getSnapshotId$runtime()) < 0) {
                stateRecord2 = stateRecord;
            }
            stateRecord = stateRecord.getNext$runtime();
        }
        return stateRecord2;
    }

    @NotNull
    public static final Object getLock() {
        return lock;
    }

    @NotNull
    public static final Snapshot getSnapshotInitializer() {
        return snapshotInitializer;
    }

    public static final Function1<Object, Unit> mergedReadObserver(final Function1<Object, Unit> function1, final Function1<Object, Unit> function12, boolean z10) {
        if (!z10) {
            function12 = null;
        }
        if (function1 != null && function12 != null && function1 != function12) {
            return new Function1() { // from class: androidx.compose.runtime.snapshots.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit mergedReadObserver$lambda$2;
                    mergedReadObserver$lambda$2 = SnapshotKt.mergedReadObserver$lambda$2(Function1.this, function12, obj);
                    return mergedReadObserver$lambda$2;
                }
            };
        }
        if (function1 == null) {
            return function12;
        }
        return function1;
    }

    public static /* synthetic */ Function1 mergedReadObserver$default(Function1 function1, Function1 function12, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        return mergedReadObserver(function1, function12, z10);
    }

    public static final Unit mergedReadObserver$lambda$2(Function1 function1, Function1 function12, Object obj) {
        function1.invoke(obj);
        function12.invoke(obj);
        return Unit.f60915a;
    }

    public static final Function1<Object, Unit> mergedWriteObserver(final Function1<Object, Unit> function1, final Function1<Object, Unit> function12) {
        if (function1 != null && function12 != null && function1 != function12) {
            return new Function1() { // from class: androidx.compose.runtime.snapshots.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit mergedWriteObserver$lambda$3;
                    mergedWriteObserver$lambda$3 = SnapshotKt.mergedWriteObserver$lambda$3(Function1.this, function12, obj);
                    return mergedWriteObserver$lambda$3;
                }
            };
        }
        if (function1 == null) {
            return function12;
        }
        return function1;
    }

    public static final Unit mergedWriteObserver$lambda$3(Function1 function1, Function1 function12, Object obj) {
        function1.invoke(obj);
        function12.invoke(obj);
        return Unit.f60915a;
    }

    @NotNull
    public static final <T extends StateRecord> T newOverwritableRecordLocked(@NotNull T t10, @NotNull StateObject stateObject) {
        T t11 = (T) usedLocked(stateObject);
        if (t11 != null) {
            t11.setSnapshotId$runtime(Long.MAX_VALUE);
            return t11;
        }
        T t12 = (T) t10.create(Long.MAX_VALUE);
        t12.setNext$runtime(stateObject.getFirstStateRecord());
        Intrinsics.checkNotNull(t12, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked");
        stateObject.prependStateRecord(t12);
        Intrinsics.checkNotNull(t12, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked");
        return t12;
    }

    @NotNull
    public static final <T extends StateRecord> T newWritableRecord(@NotNull T t10, @NotNull StateObject stateObject, @NotNull Snapshot snapshot) {
        T t11;
        synchronized (getLock()) {
            t11 = (T) newWritableRecordLocked(t10, stateObject, snapshot);
        }
        return t11;
    }

    private static final <T extends StateRecord> T newWritableRecordLocked(T t10, StateObject stateObject, Snapshot snapshot) {
        T t11 = (T) newOverwritableRecordLocked(t10, stateObject);
        t11.assign(t10);
        t11.setSnapshotId$runtime(snapshot.getSnapshotId());
        return t11;
    }

    public static final void notifyWrite(@NotNull Snapshot snapshot, @NotNull StateObject stateObject) {
        snapshot.setWriteCount$runtime(snapshot.getWriteCount$runtime() + 1);
        Function1<Object, Unit> writeObserver$runtime = snapshot.getWriteObserver$runtime();
        if (writeObserver$runtime != null) {
            writeObserver$runtime.invoke(stateObject);
        }
    }

    public static final Map<StateRecord, StateRecord> optimisticMerges(long j10, MutableSnapshot mutableSnapshot, SnapshotIdSet snapshotIdSet) {
        long[] jArr;
        HashMap hashMap;
        SnapshotIdSet snapshotIdSet2;
        long[] jArr2;
        HashMap hashMap2;
        SnapshotIdSet snapshotIdSet3;
        long j11 = j10;
        MutableScatterSet<StateObject> modified$runtime = mutableSnapshot.getModified$runtime();
        HashMap hashMap3 = null;
        if (modified$runtime == null) {
            return null;
        }
        SnapshotIdSet or2 = mutableSnapshot.getInvalid$runtime().set(mutableSnapshot.getSnapshotId()).or(mutableSnapshot.getPreviousIds$runtime());
        Object[] objArr = modified$runtime.elements;
        long[] jArr3 = modified$runtime.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            HashMap hashMap4 = null;
            int i10 = 0;
            while (true) {
                long j12 = jArr3[i10];
                if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8;
                    int i12 = 8 - ((~(i10 - length)) >>> 31);
                    int i13 = 0;
                    while (i13 < i12) {
                        if ((255 & j12) < 128) {
                            StateObject stateObject = (StateObject) objArr[(i10 << 3) + i13];
                            StateRecord firstStateRecord = stateObject.getFirstStateRecord();
                            StateRecord readable = readable(firstStateRecord, j11, snapshotIdSet);
                            if (readable == null) {
                                jArr2 = jArr3;
                            } else {
                                jArr2 = jArr3;
                                StateRecord readable2 = readable(firstStateRecord, j11, or2);
                                if (readable2 != null && !Intrinsics.areEqual(readable, readable2)) {
                                    snapshotIdSet3 = or2;
                                    StateRecord readable3 = readable(firstStateRecord, mutableSnapshot.getSnapshotId(), mutableSnapshot.getInvalid$runtime());
                                    if (readable3 != null) {
                                        StateRecord mergeRecords = stateObject.mergeRecords(readable2, readable, readable3);
                                        if (mergeRecords != null) {
                                            if (hashMap4 == null) {
                                                hashMap4 = new HashMap();
                                            }
                                            hashMap4.put(readable, mergeRecords);
                                            hashMap4 = hashMap4;
                                            hashMap2 = null;
                                        } else {
                                            return null;
                                        }
                                    } else {
                                        readError();
                                        throw new KotlinNothingValueException();
                                    }
                                }
                            }
                            snapshotIdSet3 = or2;
                            hashMap2 = null;
                        } else {
                            jArr2 = jArr3;
                            hashMap2 = hashMap3;
                            snapshotIdSet3 = or2;
                        }
                        j12 >>= 8;
                        i13++;
                        hashMap3 = hashMap2;
                        i11 = 8;
                        jArr3 = jArr2;
                        or2 = snapshotIdSet3;
                        j11 = j10;
                    }
                    jArr = jArr3;
                    hashMap = hashMap3;
                    snapshotIdSet2 = or2;
                    if (i12 != i11) {
                        return hashMap4;
                    }
                } else {
                    jArr = jArr3;
                    hashMap = hashMap3;
                    snapshotIdSet2 = or2;
                }
                if (i10 != length) {
                    i10++;
                    hashMap3 = hashMap;
                    jArr3 = jArr;
                    or2 = snapshotIdSet2;
                    j11 = j10;
                } else {
                    hashMap3 = hashMap4;
                    break;
                }
            }
        }
        return hashMap3;
    }

    public static final <T extends StateRecord, R> R overwritable(@NotNull T t10, @NotNull StateObject stateObject, @NotNull T t11, @NotNull Function1<? super T, ? extends R> function1) {
        Snapshot current;
        R invoke;
        synchronized (getLock()) {
            try {
                current = Snapshot.Companion.getCurrent();
                invoke = function1.invoke(overwritableRecord(t10, stateObject, current, t11));
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        notifyWrite(current, stateObject);
        return invoke;
    }

    @NotNull
    public static final <T extends StateRecord> T overwritableRecord(@NotNull T t10, @NotNull StateObject stateObject, @NotNull Snapshot snapshot, @NotNull T t11) {
        T t12;
        if (snapshot.getReadOnly()) {
            snapshot.mo1498recordModified$runtime(stateObject);
        }
        long snapshotId = snapshot.getSnapshotId();
        if (t11.getSnapshotId$runtime() == snapshotId) {
            return t11;
        }
        synchronized (getLock()) {
            t12 = (T) newOverwritableRecordLocked(t10, stateObject);
        }
        t12.setSnapshotId$runtime(snapshotId);
        if (t11.getSnapshotId$runtime() != SnapshotId_jvmKt.toSnapshotId(1)) {
            snapshot.mo1498recordModified$runtime(stateObject);
        }
        return t12;
    }

    private static final boolean overwriteUnusedRecordsLocked(StateObject stateObject) {
        StateRecord stateRecord;
        long lowestOrDefault = pinningTable.lowestOrDefault(nextSnapshotId);
        StateRecord stateRecord2 = null;
        StateRecord stateRecord3 = null;
        int i10 = 0;
        for (StateRecord firstStateRecord = stateObject.getFirstStateRecord(); firstStateRecord != null; firstStateRecord = firstStateRecord.getNext$runtime()) {
            long snapshotId$runtime = firstStateRecord.getSnapshotId$runtime();
            if (snapshotId$runtime != INVALID_SNAPSHOT) {
                if (Intrinsics.compare(snapshotId$runtime, lowestOrDefault) < 0) {
                    if (stateRecord2 == null) {
                        i10++;
                        stateRecord2 = firstStateRecord;
                    } else {
                        if (Intrinsics.compare(firstStateRecord.getSnapshotId$runtime(), stateRecord2.getSnapshotId$runtime()) < 0) {
                            stateRecord = stateRecord2;
                            stateRecord2 = firstStateRecord;
                        } else {
                            stateRecord = firstStateRecord;
                        }
                        if (stateRecord3 == null) {
                            stateRecord3 = stateObject.getFirstStateRecord();
                            StateRecord stateRecord4 = stateRecord3;
                            while (true) {
                                if (stateRecord3 != null) {
                                    if (Intrinsics.compare(stateRecord3.getSnapshotId$runtime(), lowestOrDefault) >= 0) {
                                        break;
                                    }
                                    if (Intrinsics.compare(stateRecord4.getSnapshotId$runtime(), stateRecord3.getSnapshotId$runtime()) < 0) {
                                        stateRecord4 = stateRecord3;
                                    }
                                    stateRecord3 = stateRecord3.getNext$runtime();
                                } else {
                                    stateRecord3 = stateRecord4;
                                    break;
                                }
                            }
                        }
                        stateRecord2.setSnapshotId$runtime(INVALID_SNAPSHOT);
                        stateRecord2.assign(stateRecord3);
                        stateRecord2 = stateRecord;
                    }
                } else {
                    i10++;
                }
            }
        }
        if (i10 <= 1) {
            return false;
        }
        return true;
    }

    public static final void processForUnusedRecordsLocked(StateObject stateObject) {
        if (overwriteUnusedRecordsLocked(stateObject)) {
            extraStateObjects.add(stateObject);
        }
    }

    public static final Void readError() {
        throw new IllegalStateException("Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied");
    }

    public static final <T extends StateRecord> T readable(T t10, long j10, SnapshotIdSet snapshotIdSet) {
        T t11 = null;
        while (t10 != null) {
            if (valid(t10, j10, snapshotIdSet) && (t11 == null || Intrinsics.compare(t11.getSnapshotId$runtime(), t10.getSnapshotId$runtime()) < 0)) {
                t11 = t10;
            }
            t10 = (T) t10.getNext$runtime();
        }
        if (t11 != null) {
            return t11;
        }
        return null;
    }

    public static final void releasePinningLocked(int i10) {
        pinningTable.remove(i10);
    }

    public static final Void reportReadonlySnapshotWrite() {
        throw new IllegalStateException("Cannot modify a state object in a read-only snapshot");
    }

    public static final <T> T resetGlobalSnapshotLocked(GlobalSnapshot globalSnapshot2, Function1<? super SnapshotIdSet, ? extends T> function1) {
        long snapshotId = globalSnapshot2.getSnapshotId();
        T invoke = function1.invoke(openSnapshots.clear(snapshotId));
        long j10 = nextSnapshotId;
        nextSnapshotId = 1 + j10;
        openSnapshots = openSnapshots.clear(snapshotId);
        globalSnapshot2.setSnapshotId$runtime(j10);
        globalSnapshot2.setInvalid$runtime(openSnapshots);
        globalSnapshot2.setWriteCount$runtime(0);
        globalSnapshot2.setModified$runtime(null);
        globalSnapshot2.releasePinnedSnapshotLocked$runtime();
        openSnapshots = openSnapshots.set(j10);
        return invoke;
    }

    public static final <T> T sync(@NotNull Function0<? extends T> function0) {
        T invoke;
        synchronized (getLock()) {
            try {
                invoke = function0.invoke();
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        return invoke;
    }

    public static final <T extends Snapshot> T takeNewSnapshot(final Function1<? super SnapshotIdSet, ? extends T> function1) {
        return (T) advanceGlobalSnapshot(new Function1() { // from class: androidx.compose.runtime.snapshots.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Snapshot takeNewSnapshot$lambda$12;
                takeNewSnapshot$lambda$12 = SnapshotKt.takeNewSnapshot$lambda$12(Function1.this, (SnapshotIdSet) obj);
                return takeNewSnapshot$lambda$12;
            }
        });
    }

    public static final Snapshot takeNewSnapshot$lambda$12(Function1 function1, SnapshotIdSet snapshotIdSet) {
        Snapshot snapshot = (Snapshot) function1.invoke(snapshotIdSet);
        synchronized (getLock()) {
            openSnapshots = openSnapshots.set(snapshot.getSnapshotId());
            Unit unit = Unit.f60915a;
        }
        return snapshot;
    }

    public static final int trackPinning(long j10, @NotNull SnapshotIdSet snapshotIdSet) {
        int add;
        long lowest = snapshotIdSet.lowest(j10);
        synchronized (getLock()) {
            add = pinningTable.add(lowest);
        }
        return add;
    }

    private static final StateRecord usedLocked(StateObject stateObject) {
        long lowestOrDefault = pinningTable.lowestOrDefault(nextSnapshotId) - 1;
        SnapshotIdSet empty = SnapshotIdSet.Companion.getEMPTY();
        StateRecord stateRecord = null;
        for (StateRecord firstStateRecord = stateObject.getFirstStateRecord(); firstStateRecord != null; firstStateRecord = firstStateRecord.getNext$runtime()) {
            if (firstStateRecord.getSnapshotId$runtime() == INVALID_SNAPSHOT) {
                return firstStateRecord;
            }
            if (valid(firstStateRecord, lowestOrDefault, empty)) {
                if (stateRecord == null) {
                    stateRecord = firstStateRecord;
                } else if (Intrinsics.compare(firstStateRecord.getSnapshotId$runtime(), stateRecord.getSnapshotId$runtime()) >= 0) {
                    return stateRecord;
                } else {
                    return firstStateRecord;
                }
            }
        }
        return null;
    }

    private static final boolean valid(long j10, long j11, SnapshotIdSet snapshotIdSet) {
        return (j11 == INVALID_SNAPSHOT || Intrinsics.compare(j11, j10) > 0 || snapshotIdSet.get(j11)) ? false : true;
    }

    public static final void validateOpen(Snapshot snapshot) {
        MutableSnapshot mutableSnapshot;
        Object obj;
        long lowestOrDefault;
        if (!openSnapshots.get(snapshot.getSnapshotId())) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Snapshot is not open: snapshotId=");
            sb2.append(snapshot.getSnapshotId());
            sb2.append(", disposed=");
            sb2.append(snapshot.getDisposed$runtime());
            sb2.append(", applied=");
            if (snapshot instanceof MutableSnapshot) {
                mutableSnapshot = (MutableSnapshot) snapshot;
            } else {
                mutableSnapshot = null;
            }
            if (mutableSnapshot != null) {
                obj = Boolean.valueOf(mutableSnapshot.getApplied$runtime());
            } else {
                obj = "read-only";
            }
            sb2.append(obj);
            sb2.append(", lowestPin=");
            synchronized (getLock()) {
                lowestOrDefault = pinningTable.lowestOrDefault(-1L);
            }
            sb2.append(lowestOrDefault);
            throw new IllegalStateException(sb2.toString().toString());
        }
    }

    public static final <T extends StateRecord, R> R withCurrent(@NotNull T t10, @NotNull Function1<? super T, ? extends R> function1) {
        return function1.invoke(current(t10));
    }

    public static final <T extends StateRecord, R> R writable(@NotNull T t10, @NotNull StateObject stateObject, @NotNull Snapshot snapshot, @NotNull Function1<? super T, ? extends R> function1) {
        R invoke;
        synchronized (getLock()) {
            try {
                invoke = function1.invoke(writableRecord(t10, stateObject, snapshot));
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        notifyWrite(snapshot, stateObject);
        return invoke;
    }

    @NotNull
    public static final <T extends StateRecord> T writableRecord(@NotNull T t10, @NotNull StateObject stateObject, @NotNull Snapshot snapshot) {
        T t11;
        if (snapshot.getReadOnly()) {
            snapshot.mo1498recordModified$runtime(stateObject);
        }
        long snapshotId = snapshot.getSnapshotId();
        T t12 = (T) readable(t10, snapshotId, snapshot.getInvalid$runtime());
        if (t12 != null) {
            if (t12.getSnapshotId$runtime() == snapshot.getSnapshotId()) {
                return t12;
            }
            synchronized (getLock()) {
                t11 = (T) readable(stateObject.getFirstStateRecord(), snapshotId, snapshot.getInvalid$runtime());
                if (t11 != null) {
                    if (t11.getSnapshotId$runtime() != snapshotId) {
                        t11 = (T) newWritableRecordLocked(t11, stateObject, snapshot);
                    }
                } else {
                    readError();
                    throw new KotlinNothingValueException();
                }
            }
            Intrinsics.checkNotNull(t11, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.writableRecord");
            if (t12.getSnapshotId$runtime() != SnapshotId_jvmKt.toSnapshotId(1)) {
                snapshot.mo1498recordModified$runtime(stateObject);
            }
            return t11;
        }
        readError();
        throw new KotlinNothingValueException();
    }

    private static final boolean valid(StateRecord stateRecord, long j10, SnapshotIdSet snapshotIdSet) {
        return valid(j10, stateRecord.getSnapshotId$runtime(), snapshotIdSet);
    }

    @NotNull
    public static final <T extends StateRecord> T readable(@NotNull T t10, @NotNull StateObject stateObject) {
        T t11;
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot current = companion.getCurrent();
        Function1<Object, Unit> readObserver = current.getReadObserver();
        if (readObserver != null) {
            readObserver.invoke(stateObject);
        }
        T t12 = (T) readable(t10, current.getSnapshotId(), current.getInvalid$runtime());
        if (t12 == null) {
            synchronized (getLock()) {
                Snapshot current2 = companion.getCurrent();
                StateRecord firstStateRecord = stateObject.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.readable");
                t11 = (T) readable(firstStateRecord, current2.getSnapshotId(), current2.getInvalid$runtime());
                if (t11 == null) {
                    readError();
                    throw new KotlinNothingValueException();
                }
            }
            return t11;
        }
        return t12;
    }

    public static final <T extends StateRecord, R> R writable(@NotNull T t10, @NotNull StateObject stateObject, @NotNull Function1<? super T, ? extends R> function1) {
        Snapshot current;
        R invoke;
        synchronized (getLock()) {
            try {
                current = Snapshot.Companion.getCurrent();
                invoke = function1.invoke(writableRecord(t10, stateObject, current));
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        notifyWrite(current, stateObject);
        return invoke;
    }

    @NotNull
    public static final <T extends StateRecord> T current(@NotNull T t10) {
        T t11;
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot current = companion.getCurrent();
        T t12 = (T) readable(t10, current.getSnapshotId(), current.getInvalid$runtime());
        if (t12 == null) {
            synchronized (getLock()) {
                Snapshot current2 = companion.getCurrent();
                t11 = (T) readable(t10, current2.getSnapshotId(), current2.getInvalid$runtime());
            }
            if (t11 != null) {
                return t11;
            }
            readError();
            throw new KotlinNothingValueException();
        }
        return t12;
    }

    @NotNull
    public static final <T extends StateRecord> T readable(@NotNull T t10, @NotNull StateObject stateObject, @NotNull Snapshot snapshot) {
        T t11;
        Function1<Object, Unit> readObserver = snapshot.getReadObserver();
        if (readObserver != null) {
            readObserver.invoke(stateObject);
        }
        T t12 = (T) readable(t10, snapshot.getSnapshotId(), snapshot.getInvalid$runtime());
        if (t12 == null) {
            synchronized (getLock()) {
                Snapshot current = Snapshot.Companion.getCurrent();
                StateRecord firstStateRecord = stateObject.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.readable");
                t11 = (T) readable(firstStateRecord, current.getSnapshotId(), current.getInvalid$runtime());
                if (t11 == null) {
                    readError();
                    throw new KotlinNothingValueException();
                }
            }
            return t11;
        }
        return t12;
    }

    public static /* synthetic */ void getLock$annotations() {
    }

    public static /* synthetic */ void getSnapshotInitializer$annotations() {
    }

    public static final void advanceGlobalSnapshot() {
        advanceGlobalSnapshot(emptyLambda);
    }
}
