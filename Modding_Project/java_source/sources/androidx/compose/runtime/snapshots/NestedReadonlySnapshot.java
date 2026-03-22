package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.snapshots.tooling.SnapshotInstanceObservers;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserver;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserverKt;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Snapshot.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/NestedReadonlySnapshot\n+ 2 SnapshotObserver.kt\nandroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt\n*L\n1#1,2486:1\n166#2,14:2487\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/NestedReadonlySnapshot\n*L\n1433#1:2487,14\n*E\n"})
/* loaded from: classes.dex */
public final class NestedReadonlySnapshot extends Snapshot {
    public static final int $stable = 8;
    @NotNull
    private final Snapshot parent;
    @Nullable
    private final Function1<Object, Unit> readObserver;

    public NestedReadonlySnapshot(long j10, @NotNull SnapshotIdSet snapshotIdSet, @Nullable Function1<Object, Unit> function1, @NotNull Snapshot snapshot) {
        super(j10, snapshotIdSet, (DefaultConstructorMarker) null);
        this.readObserver = function1;
        this.parent = snapshot;
        snapshot.mo1496nestedActivated$runtime(this);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
        if (!getDisposed$runtime()) {
            if (getSnapshotId() != this.parent.getSnapshotId()) {
                closeAndReleasePinning$runtime();
            }
            this.parent.mo1497nestedDeactivated$runtime(this);
            super.dispose();
            SnapshotObserverKt.dispatchObserverOnPreDispose(this);
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public MutableScatterSet<StateObject> getModified$runtime() {
        return null;
    }

    @NotNull
    public final Snapshot getParent() {
        return this.parent;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    /* renamed from: getReadObserver$runtime */
    public Function1<Object, Unit> getReadObserver() {
        return this.readObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean getReadOnly() {
        return true;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot getRoot() {
        return this.parent.getRoot();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public Function1<Object, Unit> getWriteObserver$runtime() {
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean hasPendingChanges() {
        return false;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public /* bridge */ /* synthetic */ Snapshot takeNestedSnapshot(Function1 function1) {
        return takeNestedSnapshot((Function1<Object, Unit>) function1);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* renamed from: nestedActivated$runtime */
    public Void mo1496nestedActivated$runtime(@NotNull Snapshot snapshot) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* renamed from: nestedDeactivated$runtime */
    public Void mo1497nestedDeactivated$runtime(@NotNull Snapshot snapshot) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* renamed from: recordModified$runtime */
    public Void mo1498recordModified$runtime(@NotNull StateObject stateObject) {
        SnapshotKt.reportReadonlySnapshotWrite();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public NestedReadonlySnapshot takeNestedSnapshot(@Nullable Function1<Object, Unit> function1) {
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        PersistentList persistentList = SnapshotObserverKt.observers;
        if (persistentList != null) {
            Pair<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> mergeObservers = SnapshotObserverKt.mergeObservers(persistentList, this, true, function1, null);
            SnapshotInstanceObservers e10 = mergeObservers.e();
            Function1<Object, Unit> readObserver = e10.getReadObserver();
            e10.getWriteObserver();
            map = mergeObservers.f();
            function1 = readObserver;
        } else {
            map = null;
        }
        NestedReadonlySnapshot nestedReadonlySnapshot = new NestedReadonlySnapshot(getSnapshotId(), getInvalid$runtime(), SnapshotKt.mergedReadObserver$default(function1, getReadObserver(), false, 4, null), getParent());
        if (persistentList != null) {
            SnapshotObserverKt.dispatchCreatedObservers(persistentList, this, nestedReadonlySnapshot, map);
        }
        return nestedReadonlySnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void notifyObjectsInitialized$runtime() {
    }
}
