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
/* compiled from: SnapshotDoubleState.kt */
@StabilityInferred(parameters = 1)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotDoubleState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotDoubleState.kt\nandroidx/compose/runtime/SnapshotMutableDoubleStateImpl\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 FloatingPointEquality.android.kt\nandroidx/compose/runtime/internal/FloatingPointEquality_androidKt\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,194:1\n2474#2:195\n2391#2,2:201\n1893#2:203\n2393#2,4:205\n2474#2:215\n49#3,5:196\n49#3,5:210\n33#4:204\n1#5:209\n*S KotlinDebug\n*F\n+ 1 SnapshotDoubleState.kt\nandroidx/compose/runtime/SnapshotMutableDoubleStateImpl\n*L\n146#1:195\n148#1:201,2\n148#1:203\n148#1:205,4\n180#1:215\n147#1:196,5\n172#1:210,5\n148#1:204\n148#1:209\n*E\n"})
/* loaded from: classes.dex */
public class SnapshotMutableDoubleStateImpl extends StateObjectImpl implements MutableDoubleState, SnapshotMutableState<Double> {
    public static final int $stable = 0;
    @NotNull
    private DoubleStateStateRecord next;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnapshotDoubleState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DoubleStateStateRecord extends StateRecord {
        private double value;

        public DoubleStateStateRecord(long j10, double d10) {
            super(j10);
            this.value = d10;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(@NotNull StateRecord stateRecord) {
            Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
            this.value = ((DoubleStateStateRecord) stateRecord).value;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord create() {
            return create(getSnapshotId$runtime());
        }

        public final double getValue() {
            return this.value;
        }

        public final void setValue(double d10) {
            this.value = d10;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord create(long j10) {
            return new DoubleStateStateRecord(j10, this.value);
        }
    }

    public SnapshotMutableDoubleStateImpl(double d10) {
        Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
        DoubleStateStateRecord doubleStateStateRecord = new DoubleStateStateRecord(currentSnapshot.getSnapshotId(), d10);
        if (!(currentSnapshot instanceof GlobalSnapshot)) {
            doubleStateStateRecord.setNext$runtime(new DoubleStateStateRecord(SnapshotId_jvmKt.toSnapshotId(1), d10));
        }
        this.next = doubleStateStateRecord;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit component2$lambda$4(SnapshotMutableDoubleStateImpl snapshotMutableDoubleStateImpl, double d10) {
        snapshotMutableDoubleStateImpl.setDoubleValue(d10);
        return Unit.f60915a;
    }

    @Override // androidx.compose.runtime.MutableState
    @NotNull
    public Function1<Double, Unit> component2() {
        return new Function1() { // from class: androidx.compose.runtime.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit component2$lambda$4;
                component2$lambda$4 = SnapshotMutableDoubleStateImpl.component2$lambda$4(SnapshotMutableDoubleStateImpl.this, ((Double) obj).doubleValue());
                return component2$lambda$4;
            }
        };
    }

    @Override // androidx.compose.runtime.MutableDoubleState, androidx.compose.runtime.DoubleState
    public double getDoubleValue() {
        return ((DoubleStateStateRecord) SnapshotKt.readable(this.next, this)).getValue();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    @NotNull
    public SnapshotMutationPolicy<Double> getPolicy() {
        return SnapshotStateKt.structuralEqualityPolicy();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @Nullable
    public StateRecord mergeRecords(@NotNull StateRecord stateRecord, @NotNull StateRecord stateRecord2, @NotNull StateRecord stateRecord3) {
        Intrinsics.checkNotNull(stateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
        Intrinsics.checkNotNull(stateRecord3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
        if (((DoubleStateStateRecord) stateRecord2).getValue() != ((DoubleStateStateRecord) stateRecord3).getValue()) {
            return null;
        }
        return stateRecord2;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(@NotNull StateRecord stateRecord) {
        Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableDoubleStateImpl.DoubleStateStateRecord");
        this.next = (DoubleStateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.MutableDoubleState
    public void setDoubleValue(double d10) {
        Snapshot current;
        DoubleStateStateRecord doubleStateStateRecord = (DoubleStateStateRecord) SnapshotKt.current(this.next);
        if (doubleStateStateRecord.getValue() != d10) {
            DoubleStateStateRecord doubleStateStateRecord2 = this.next;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                ((DoubleStateStateRecord) SnapshotKt.overwritableRecord(doubleStateStateRecord2, this, current, doubleStateStateRecord)).setValue(d10);
                Unit unit = Unit.f60915a;
            }
            SnapshotKt.notifyWrite(current, this);
        }
    }

    @NotNull
    public String toString() {
        return "MutableDoubleState(value=" + ((DoubleStateStateRecord) SnapshotKt.current(this.next)).getValue() + ")@" + hashCode();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.MutableState
    @NotNull
    public Double component1() {
        return Double.valueOf(getDoubleValue());
    }
}
