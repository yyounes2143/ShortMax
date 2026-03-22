package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.snapshots.tooling.SnapshotInstanceObservers;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserver;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserverKt;
import java.util.List;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Snapshot.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/GlobalSnapshot\n+ 2 SnapshotObserver.kt\nandroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,2486:1\n166#2,14:2487\n166#2,14:2501\n1893#3:2515\n1893#3:2517\n33#4:2516\n33#4:2518\n34#5,5:2519\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/GlobalSnapshot\n*L\n1492#1:2487,14\n1512#1:2501,14\n1546#1:2515\n1487#1:2517\n1546#1:2516\n1487#1:2518\n1487#1:2519,5\n*E\n"})
/* loaded from: classes.dex */
public final class GlobalSnapshot extends MutableSnapshot {
    public static final int $stable = 8;

    public GlobalSnapshot(long j10, @NotNull SnapshotIdSet snapshotIdSet) {
        super(j10, snapshotIdSet, null, new Function1() { // from class: androidx.compose.runtime.snapshots.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit _init_$lambda$2;
                _init_$lambda$2 = GlobalSnapshot._init_$lambda$2(obj);
                return _init_$lambda$2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$2(Object obj) {
        List list;
        synchronized (SnapshotKt.getLock()) {
            list = SnapshotKt.globalWriteObservers;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((Function1) list.get(i10)).invoke(obj);
            }
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    @NotNull
    public SnapshotApplyResult apply() {
        throw new IllegalStateException("Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot");
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
        synchronized (SnapshotKt.getLock()) {
            releasePinnedSnapshotLocked$runtime();
            Unit unit = Unit.f60915a;
        }
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void notifyObjectsInitialized$runtime() {
        SnapshotKt.advanceGlobalSnapshot();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    @NotNull
    public MutableSnapshot takeNestedMutableSnapshot(@Nullable final Function1<Object, Unit> function1, @Nullable Function1<Object, Unit> function12) {
        final Function1<Object, Unit> function13;
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        Snapshot takeNewSnapshot;
        PersistentList access$getObservers$p = SnapshotObserverKt.access$getObservers$p();
        if (access$getObservers$p != null) {
            Pair<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> mergeObservers = SnapshotObserverKt.mergeObservers(access$getObservers$p, null, false, function1, function12);
            SnapshotInstanceObservers e10 = mergeObservers.e();
            Function1<Object, Unit> readObserver = e10.getReadObserver();
            Function1<Object, Unit> writeObserver = e10.getWriteObserver();
            map = mergeObservers.f();
            function1 = readObserver;
            function13 = writeObserver;
        } else {
            function13 = function12;
            map = null;
        }
        takeNewSnapshot = SnapshotKt.takeNewSnapshot(new Function1<SnapshotIdSet, MutableSnapshot>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedMutableSnapshot$1$1
            @Override // kotlin.jvm.functions.Function1
            public final MutableSnapshot invoke(SnapshotIdSet snapshotIdSet) {
                long j10;
                long j11;
                synchronized (SnapshotKt.getLock()) {
                    j10 = SnapshotKt.nextSnapshotId;
                    j11 = SnapshotKt.nextSnapshotId;
                    SnapshotKt.nextSnapshotId = j11 + 1;
                }
                return new MutableSnapshot(j10, snapshotIdSet, function1, function13);
            }
        });
        MutableSnapshot mutableSnapshot = (MutableSnapshot) takeNewSnapshot;
        if (access$getObservers$p != null) {
            SnapshotObserverKt.dispatchCreatedObservers(access$getObservers$p, null, mutableSnapshot, map);
        }
        return mutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot takeNestedSnapshot(@Nullable final Function1<Object, Unit> function1) {
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        Snapshot takeNewSnapshot;
        PersistentList access$getObservers$p = SnapshotObserverKt.access$getObservers$p();
        if (access$getObservers$p != null) {
            Pair<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> mergeObservers = SnapshotObserverKt.mergeObservers(access$getObservers$p, null, true, function1, null);
            SnapshotInstanceObservers e10 = mergeObservers.e();
            Function1<Object, Unit> readObserver = e10.getReadObserver();
            e10.getWriteObserver();
            map = mergeObservers.f();
            function1 = readObserver;
        } else {
            map = null;
        }
        takeNewSnapshot = SnapshotKt.takeNewSnapshot(new Function1<SnapshotIdSet, ReadonlySnapshot>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedSnapshot$1$1
            @Override // kotlin.jvm.functions.Function1
            public final ReadonlySnapshot invoke(SnapshotIdSet snapshotIdSet) {
                long j10;
                long j11;
                synchronized (SnapshotKt.getLock()) {
                    j10 = SnapshotKt.nextSnapshotId;
                    j11 = SnapshotKt.nextSnapshotId;
                    SnapshotKt.nextSnapshotId = j11 + 1;
                }
                return new ReadonlySnapshot(j10, snapshotIdSet, function1);
            }
        });
        ReadonlySnapshot readonlySnapshot = (ReadonlySnapshot) takeNewSnapshot;
        if (access$getObservers$p != null) {
            SnapshotObserverKt.dispatchCreatedObservers(access$getObservers$p, null, readonlySnapshot, map);
        }
        return readonlySnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* renamed from: nestedActivated$runtime */
    public Void mo1496nestedActivated$runtime(@NotNull Snapshot snapshot) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* renamed from: nestedDeactivated$runtime */
    public Void mo1497nestedDeactivated$runtime(@NotNull Snapshot snapshot) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }
}
