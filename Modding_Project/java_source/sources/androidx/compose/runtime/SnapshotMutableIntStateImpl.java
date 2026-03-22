package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.snapshots.GlobalSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotIntState.kt */
@StabilityInferred(parameters = 1)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotIntState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotMutableIntStateImpl\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,199:1\n2474#2:200\n2391#2,2:201\n1893#2:203\n2393#2,4:205\n2474#2:210\n2474#2:211\n33#3:204\n1#4:209\n*S KotlinDebug\n*F\n+ 1 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotMutableIntStateImpl\n*L\n147#1:200\n149#1:201,2\n149#1:203\n149#1:205,4\n181#1:210\n185#1:211\n149#1:204\n149#1:209\n*E\n"})
/* loaded from: classes.dex */
public class SnapshotMutableIntStateImpl extends StateObjectImpl implements MutableIntState, SnapshotMutableState<Integer> {
    public static final int $stable = 0;
    @NotNull
    private IntStateStateRecord next;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnapshotIntState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class IntStateStateRecord extends StateRecord {
        private int value;

        public IntStateStateRecord(long j10, int i10) {
            super(j10);
            this.value = i10;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(@NotNull StateRecord stateRecord) {
            Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
            this.value = ((IntStateStateRecord) stateRecord).value;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord create() {
            return create(SnapshotKt.currentSnapshot().getSnapshotId());
        }

        public final int getValue() {
            return this.value;
        }

        public final void setValue(int i10) {
            this.value = i10;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord create(long j10) {
            return new IntStateStateRecord(j10, this.value);
        }
    }

    public SnapshotMutableIntStateImpl(int i10) {
        Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
        IntStateStateRecord intStateStateRecord = new IntStateStateRecord(currentSnapshot.getSnapshotId(), i10);
        if (!(currentSnapshot instanceof GlobalSnapshot)) {
            intStateStateRecord.setNext$runtime(new IntStateStateRecord(SnapshotId_jvmKt.toSnapshotId(1), i10));
        }
        this.next = intStateStateRecord;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit component2$lambda$4(SnapshotMutableIntStateImpl snapshotMutableIntStateImpl, int i10) {
        snapshotMutableIntStateImpl.setIntValue(i10);
        return Unit.f60915a;
    }

    @Override // androidx.compose.runtime.MutableState
    @NotNull
    public Function1<Integer, Unit> component2() {
        return new Function1() { // from class: androidx.compose.runtime.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit component2$lambda$4;
                component2$lambda$4 = SnapshotMutableIntStateImpl.component2$lambda$4(SnapshotMutableIntStateImpl.this, ((Integer) obj).intValue());
                return component2$lambda$4;
            }
        };
    }

    public final int getDebuggerDisplayValue() {
        return ((IntStateStateRecord) SnapshotKt.current(this.next)).getValue();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.MutableIntState, androidx.compose.runtime.IntState
    public int getIntValue() {
        return ((IntStateStateRecord) SnapshotKt.readable(this.next, this)).getValue();
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    @NotNull
    public SnapshotMutationPolicy<Integer> getPolicy() {
        return SnapshotStateKt.structuralEqualityPolicy();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @Nullable
    public StateRecord mergeRecords(@NotNull StateRecord stateRecord, @NotNull StateRecord stateRecord2, @NotNull StateRecord stateRecord3) {
        Intrinsics.checkNotNull(stateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
        Intrinsics.checkNotNull(stateRecord3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
        if (((IntStateStateRecord) stateRecord2).getValue() != ((IntStateStateRecord) stateRecord3).getValue()) {
            return null;
        }
        return stateRecord2;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(@NotNull StateRecord stateRecord) {
        Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord");
        this.next = (IntStateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.MutableIntState
    public void setIntValue(int i10) {
        Snapshot current;
        IntStateStateRecord intStateStateRecord = (IntStateStateRecord) SnapshotKt.current(this.next);
        if (intStateStateRecord.getValue() != i10) {
            IntStateStateRecord intStateStateRecord2 = this.next;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                ((IntStateStateRecord) SnapshotKt.overwritableRecord(intStateStateRecord2, this, current, intStateStateRecord)).setValue(i10);
                Unit unit = Unit.f60915a;
            }
            SnapshotKt.notifyWrite(current, this);
        }
    }

    @NotNull
    public String toString() {
        return "MutableIntState(value=" + ((IntStateStateRecord) SnapshotKt.current(this.next)).getValue() + ")@" + hashCode();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.MutableState
    @NotNull
    public Integer component1() {
        return Integer.valueOf(getIntValue());
    }

    @InternalComposeApi
    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }
}
