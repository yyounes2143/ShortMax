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
/* compiled from: SnapshotLongState.kt */
@StabilityInferred(parameters = 1)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotLongState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotLongState.kt\nandroidx/compose/runtime/SnapshotMutableLongStateImpl\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n2474#2:193\n2391#2,2:194\n1893#2:196\n2393#2,4:198\n2474#2:203\n33#3:197\n1#4:202\n*S KotlinDebug\n*F\n+ 1 SnapshotLongState.kt\nandroidx/compose/runtime/SnapshotMutableLongStateImpl\n*L\n144#1:193\n146#1:194,2\n146#1:196\n146#1:198,4\n178#1:203\n146#1:197\n146#1:202\n*E\n"})
/* loaded from: classes.dex */
public class SnapshotMutableLongStateImpl extends StateObjectImpl implements MutableLongState, SnapshotMutableState<Long> {
    public static final int $stable = 0;
    @NotNull
    private LongStateStateRecord next;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnapshotLongState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class LongStateStateRecord extends StateRecord {
        private long value;

        public LongStateStateRecord(long j10, long j11) {
            super(j10);
            this.value = j11;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(@NotNull StateRecord stateRecord) {
            Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
            this.value = ((LongStateStateRecord) stateRecord).value;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord create() {
            return create(SnapshotKt.currentSnapshot().getSnapshotId());
        }

        public final long getValue() {
            return this.value;
        }

        public final void setValue(long j10) {
            this.value = j10;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord create(long j10) {
            return new LongStateStateRecord(j10, this.value);
        }
    }

    public SnapshotMutableLongStateImpl(long j10) {
        Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
        LongStateStateRecord longStateStateRecord = new LongStateStateRecord(currentSnapshot.getSnapshotId(), j10);
        if (!(currentSnapshot instanceof GlobalSnapshot)) {
            longStateStateRecord.setNext$runtime(new LongStateStateRecord(SnapshotId_jvmKt.toSnapshotId(1), j10));
        }
        this.next = longStateStateRecord;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit component2$lambda$4(SnapshotMutableLongStateImpl snapshotMutableLongStateImpl, long j10) {
        snapshotMutableLongStateImpl.setLongValue(j10);
        return Unit.f60915a;
    }

    @Override // androidx.compose.runtime.MutableState
    @NotNull
    public Function1<Long, Unit> component2() {
        return new Function1() { // from class: androidx.compose.runtime.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit component2$lambda$4;
                component2$lambda$4 = SnapshotMutableLongStateImpl.component2$lambda$4(SnapshotMutableLongStateImpl.this, ((Long) obj).longValue());
                return component2$lambda$4;
            }
        };
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.MutableLongState, androidx.compose.runtime.LongState
    public long getLongValue() {
        return ((LongStateStateRecord) SnapshotKt.readable(this.next, this)).getValue();
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    @NotNull
    public SnapshotMutationPolicy<Long> getPolicy() {
        return SnapshotStateKt.structuralEqualityPolicy();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @Nullable
    public StateRecord mergeRecords(@NotNull StateRecord stateRecord, @NotNull StateRecord stateRecord2, @NotNull StateRecord stateRecord3) {
        Intrinsics.checkNotNull(stateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
        Intrinsics.checkNotNull(stateRecord3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
        if (((LongStateStateRecord) stateRecord2).getValue() != ((LongStateStateRecord) stateRecord3).getValue()) {
            return null;
        }
        return stateRecord2;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(@NotNull StateRecord stateRecord) {
        Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord");
        this.next = (LongStateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.MutableLongState
    public void setLongValue(long j10) {
        Snapshot current;
        LongStateStateRecord longStateStateRecord = (LongStateStateRecord) SnapshotKt.current(this.next);
        if (longStateStateRecord.getValue() != j10) {
            LongStateStateRecord longStateStateRecord2 = this.next;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                ((LongStateStateRecord) SnapshotKt.overwritableRecord(longStateStateRecord2, this, current, longStateStateRecord)).setValue(j10);
                Unit unit = Unit.f60915a;
            }
            SnapshotKt.notifyWrite(current, this);
        }
    }

    @NotNull
    public String toString() {
        return "MutableLongState(value=" + ((LongStateStateRecord) SnapshotKt.current(this.next)).getValue() + ")@" + hashCode();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.MutableState
    @NotNull
    public Long component1() {
        return Long.valueOf(getLongValue());
    }
}
