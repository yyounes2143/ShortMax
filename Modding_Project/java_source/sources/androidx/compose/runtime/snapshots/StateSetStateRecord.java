package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateSet.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateSet.kt\nandroidx/compose/runtime/snapshots/StateSetStateRecord\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,253:1\n33#2:254\n*S KotlinDebug\n*F\n+ 1 SnapshotStateSet.kt\nandroidx/compose/runtime/snapshots/StateSetStateRecord\n*L\n88#1:254\n*E\n"})
/* loaded from: classes.dex */
public final class StateSetStateRecord<T> extends StateRecord {
    public static final int $stable = 8;
    private int modification;
    @NotNull
    private PersistentSet<? extends T> set;

    public StateSetStateRecord(long j10, @NotNull PersistentSet<? extends T> persistentSet) {
        super(j10);
        this.set = persistentSet;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public void assign(@NotNull StateRecord stateRecord) {
        synchronized (SnapshotStateSetKt.sync) {
            Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.StateSetStateRecord>");
            this.set = ((StateSetStateRecord) stateRecord).set;
            this.modification = ((StateSetStateRecord) stateRecord).modification;
            Unit unit = Unit.f60915a;
        }
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    @NotNull
    public StateRecord create() {
        return new StateSetStateRecord(SnapshotKt.currentSnapshot().getSnapshotId(), this.set);
    }

    public final int getModification$runtime() {
        return this.modification;
    }

    @NotNull
    public final PersistentSet<T> getSet$runtime() {
        return (PersistentSet<? extends T>) this.set;
    }

    public final void setModification$runtime(int i10) {
        this.modification = i10;
    }

    public final void setSet$runtime(@NotNull PersistentSet<? extends T> persistentSet) {
        this.set = persistentSet;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    @NotNull
    public StateRecord create(long j10) {
        return new StateSetStateRecord(j10, this.set);
    }
}
