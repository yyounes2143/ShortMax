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
/* compiled from: SnapshotState.kt */
@StabilityInferred(parameters = 2)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotState.kt\nandroidx/compose/runtime/SnapshotMutableStateImpl\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,337:1\n2474#2:338\n2391#2,2:339\n1893#2:341\n2393#2,4:343\n2474#2:349\n2474#2:350\n33#3:342\n1#4:347\n1#4:348\n*S KotlinDebug\n*F\n+ 1 SnapshotState.kt\nandroidx/compose/runtime/SnapshotMutableStateImpl\n*L\n144#1:338\n146#1:339,2\n146#1:341\n146#1:343,4\n189#1:349\n226#1:350\n146#1:342\n146#1:347\n*E\n"})
/* loaded from: classes.dex */
public class SnapshotMutableStateImpl<T> extends StateObjectImpl implements SnapshotMutableState<T> {
    public static final int $stable = 0;
    @NotNull
    private StateStateRecord<T> next;
    @NotNull
    private final SnapshotMutationPolicy<T> policy;

    public SnapshotMutableStateImpl(T t10, @NotNull SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        this.policy = snapshotMutationPolicy;
        Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
        StateStateRecord<T> stateStateRecord = new StateStateRecord<>(currentSnapshot.getSnapshotId(), t10);
        if (!(currentSnapshot instanceof GlobalSnapshot)) {
            stateStateRecord.setNext$runtime(new StateStateRecord(SnapshotId_jvmKt.toSnapshotId(1), t10));
        }
        this.next = stateStateRecord;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit component2$lambda$6(SnapshotMutableStateImpl snapshotMutableStateImpl, Object obj) {
        snapshotMutableStateImpl.setValue(obj);
        return Unit.f60915a;
    }

    @Override // androidx.compose.runtime.MutableState
    public T component1() {
        return getValue();
    }

    @Override // androidx.compose.runtime.MutableState
    @NotNull
    public Function1<T, Unit> component2() {
        return new Function1() { // from class: androidx.compose.runtime.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit component2$lambda$6;
                component2$lambda$6 = SnapshotMutableStateImpl.component2$lambda$6(SnapshotMutableStateImpl.this, obj);
                return component2$lambda$6;
            }
        };
    }

    public final T getDebuggerDisplayValue() {
        return (T) ((StateStateRecord) SnapshotKt.current(this.next)).getValue();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    @NotNull
    public SnapshotMutationPolicy<T> getPolicy() {
        return this.policy;
    }

    @Override // androidx.compose.runtime.MutableState, androidx.compose.runtime.State
    public T getValue() {
        return (T) ((StateStateRecord) SnapshotKt.readable(this.next, this)).getValue();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @Nullable
    public StateRecord mergeRecords(@NotNull StateRecord stateRecord, @NotNull StateRecord stateRecord2, @NotNull StateRecord stateRecord3) {
        Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        StateStateRecord stateStateRecord = (StateStateRecord) stateRecord;
        Intrinsics.checkNotNull(stateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        StateStateRecord stateStateRecord2 = (StateStateRecord) stateRecord2;
        Intrinsics.checkNotNull(stateRecord3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        StateStateRecord stateStateRecord3 = (StateStateRecord) stateRecord3;
        if (!getPolicy().equivalent((T) stateStateRecord2.getValue(), (T) stateStateRecord3.getValue())) {
            T merge = getPolicy().merge((T) stateStateRecord.getValue(), (T) stateStateRecord2.getValue(), (T) stateStateRecord3.getValue());
            if (merge != null) {
                StateStateRecord<T> create = stateStateRecord3.create(stateStateRecord3.getSnapshotId$runtime());
                create.setValue(merge);
                return create;
            }
            return null;
        }
        return stateRecord2;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(@NotNull StateRecord stateRecord) {
        Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>");
        this.next = (StateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.MutableState
    public void setValue(T t10) {
        Snapshot current;
        StateStateRecord stateStateRecord = (StateStateRecord) SnapshotKt.current(this.next);
        if (!getPolicy().equivalent((T) stateStateRecord.getValue(), t10)) {
            StateStateRecord<T> stateStateRecord2 = this.next;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                ((StateStateRecord) SnapshotKt.overwritableRecord(stateStateRecord2, this, current, stateStateRecord)).setValue(t10);
                Unit unit = Unit.f60915a;
            }
            SnapshotKt.notifyWrite(current, this);
        }
    }

    @NotNull
    public String toString() {
        return "MutableState(value=" + ((StateStateRecord) SnapshotKt.current(this.next)).getValue() + ")@" + hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnapshotState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class StateStateRecord<T> extends StateRecord {
        private T value;

        public StateStateRecord(long j10, T t10) {
            super(j10);
            this.value = t10;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(@NotNull StateRecord stateRecord) {
            Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord>");
            this.value = ((StateStateRecord) stateRecord).value;
        }

        public final T getValue() {
            return this.value;
        }

        public final void setValue(T t10) {
            this.value = t10;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateStateRecord<T> create() {
            return new StateStateRecord<>(SnapshotKt.currentSnapshot().getSnapshotId(), this.value);
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateStateRecord<T> create(long j10) {
            return new StateStateRecord<>(SnapshotKt.currentSnapshot().getSnapshotId(), this.value);
        }
    }

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }

    public static /* synthetic */ void getValue$annotations() {
    }
}
