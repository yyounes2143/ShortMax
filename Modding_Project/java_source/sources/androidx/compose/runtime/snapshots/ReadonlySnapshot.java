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
@SourceDebugExtension({"SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/ReadonlySnapshot\n+ 2 SnapshotObserver.kt\nandroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt\n*L\n1#1,2486:1\n166#2,14:2487\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/ReadonlySnapshot\n*L\n1372#1:2487,14\n*E\n"})
/* loaded from: classes.dex */
public final class ReadonlySnapshot extends Snapshot {
    public static final int $stable = 8;
    @Nullable
    private final Function1<Object, Unit> readObserver;
    private int snapshots;

    public ReadonlySnapshot(long j10, @NotNull SnapshotIdSet snapshotIdSet, @Nullable Function1<Object, Unit> function1) {
        super(j10, snapshotIdSet, (DefaultConstructorMarker) null);
        this.readObserver = function1;
        this.snapshots = 1;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
        if (!getDisposed$runtime()) {
            mo1497nestedDeactivated$runtime(this);
            super.dispose();
            SnapshotObserverKt.dispatchObserverOnPreDispose(this);
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public MutableScatterSet<StateObject> getModified$runtime() {
        return null;
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
    @Nullable
    public Function1<Object, Unit> getWriteObserver$runtime() {
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean hasPendingChanges() {
        return false;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* renamed from: nestedActivated$runtime */
    public void mo1496nestedActivated$runtime(@NotNull Snapshot snapshot) {
        this.snapshots++;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* renamed from: nestedDeactivated$runtime */
    public void mo1497nestedDeactivated$runtime(@NotNull Snapshot snapshot) {
        int i10 = this.snapshots - 1;
        this.snapshots = i10;
        if (i10 == 0) {
            closeAndReleasePinning$runtime();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* renamed from: recordModified$runtime */
    public void mo1498recordModified$runtime(@NotNull StateObject stateObject) {
        SnapshotKt.reportReadonlySnapshotWrite();
        throw new KotlinNothingValueException();
    }

    public void setModified$runtime(@Nullable MutableScatterSet<StateObject> mutableScatterSet) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot takeNestedSnapshot(@Nullable Function1<Object, Unit> function1) {
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        SnapshotKt.validateOpen(this);
        PersistentList access$getObservers$p = SnapshotObserverKt.access$getObservers$p();
        if (access$getObservers$p != null) {
            Pair<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> mergeObservers = SnapshotObserverKt.mergeObservers(access$getObservers$p, this, true, function1, null);
            SnapshotInstanceObservers e10 = mergeObservers.e();
            Function1<Object, Unit> readObserver = e10.getReadObserver();
            e10.getWriteObserver();
            map = mergeObservers.f();
            function1 = readObserver;
        } else {
            map = null;
        }
        NestedReadonlySnapshot nestedReadonlySnapshot = new NestedReadonlySnapshot(getSnapshotId(), getInvalid$runtime(), SnapshotKt.mergedReadObserver$default(function1, getReadObserver(), false, 4, null), this);
        if (access$getObservers$p != null) {
            SnapshotObserverKt.dispatchCreatedObservers(access$getObservers$p, this, nestedReadonlySnapshot, map);
        }
        return nestedReadonlySnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot getRoot() {
        return this;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void notifyObjectsInitialized$runtime() {
    }
}
