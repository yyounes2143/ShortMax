package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateList.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/StateListStateRecord\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,511:1\n33#2:512\n*S KotlinDebug\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/StateListStateRecord\n*L\n244#1:512\n*E\n"})
/* loaded from: classes.dex */
public final class StateListStateRecord<T> extends StateRecord {
    public static final int $stable = 8;
    @NotNull
    private PersistentList<? extends T> list;
    private int modification;
    private int structuralChange;

    public StateListStateRecord(long j10, @NotNull PersistentList<? extends T> persistentList) {
        super(j10);
        this.list = persistentList;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public void assign(@NotNull StateRecord stateRecord) {
        synchronized (SnapshotStateListKt.sync) {
            Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.StateListStateRecord>");
            this.list = ((StateListStateRecord) stateRecord).list;
            this.modification = ((StateListStateRecord) stateRecord).modification;
            this.structuralChange = ((StateListStateRecord) stateRecord).structuralChange;
            Unit unit = Unit.f60915a;
        }
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    @NotNull
    public StateRecord create() {
        return create(SnapshotKt.currentSnapshot().getSnapshotId());
    }

    @NotNull
    public final PersistentList<T> getList$runtime() {
        return (PersistentList<? extends T>) this.list;
    }

    public final int getModification$runtime() {
        return this.modification;
    }

    public final int getStructuralChange$runtime() {
        return this.structuralChange;
    }

    public final void setList$runtime(@NotNull PersistentList<? extends T> persistentList) {
        this.list = persistentList;
    }

    public final void setModification$runtime(int i10) {
        this.modification = i10;
    }

    public final void setStructuralChange$runtime(int i10) {
        this.structuralChange = i10;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    @NotNull
    public StateRecord create(long j10) {
        return new StateListStateRecord(j10, this.list);
    }
}
