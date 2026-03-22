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
/* compiled from: SnapshotFloatState.kt */
@StabilityInferred(parameters = 1)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotFloatState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotFloatState.kt\nandroidx/compose/runtime/SnapshotMutableFloatStateImpl\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 FloatingPointEquality.android.kt\nandroidx/compose/runtime/internal/FloatingPointEquality_androidKt\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,194:1\n2474#2:195\n2391#2,2:201\n1893#2:203\n2393#2,4:205\n2474#2:215\n41#3,5:196\n41#3,5:210\n33#4:204\n1#5:209\n*S KotlinDebug\n*F\n+ 1 SnapshotFloatState.kt\nandroidx/compose/runtime/SnapshotMutableFloatStateImpl\n*L\n146#1:195\n148#1:201,2\n148#1:203\n148#1:205,4\n180#1:215\n147#1:196,5\n172#1:210,5\n148#1:204\n148#1:209\n*E\n"})
/* loaded from: classes.dex */
public class SnapshotMutableFloatStateImpl extends StateObjectImpl implements MutableFloatState, SnapshotMutableState<Float> {
    public static final int $stable = 0;
    @NotNull
    private FloatStateStateRecord next;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnapshotFloatState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class FloatStateStateRecord extends StateRecord {
        private float value;

        public FloatStateStateRecord(long j10, float f10) {
            super(j10);
            this.value = f10;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(@NotNull StateRecord stateRecord) {
            Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord");
            this.value = ((FloatStateStateRecord) stateRecord).value;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord create() {
            return create(SnapshotKt.currentSnapshot().getSnapshotId());
        }

        public final float getValue() {
            return this.value;
        }

        public final void setValue(float f10) {
            this.value = f10;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord create(long j10) {
            return new FloatStateStateRecord(j10, this.value);
        }
    }

    public SnapshotMutableFloatStateImpl(float f10) {
        Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
        FloatStateStateRecord floatStateStateRecord = new FloatStateStateRecord(currentSnapshot.getSnapshotId(), f10);
        if (!(currentSnapshot instanceof GlobalSnapshot)) {
            floatStateStateRecord.setNext$runtime(new FloatStateStateRecord(SnapshotId_jvmKt.toSnapshotId(1), f10));
        }
        this.next = floatStateStateRecord;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit component2$lambda$4(SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl, float f10) {
        snapshotMutableFloatStateImpl.setFloatValue(f10);
        return Unit.f60915a;
    }

    @Override // androidx.compose.runtime.MutableState
    @NotNull
    public Function1<Float, Unit> component2() {
        return new Function1() { // from class: androidx.compose.runtime.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit component2$lambda$4;
                component2$lambda$4 = SnapshotMutableFloatStateImpl.component2$lambda$4(SnapshotMutableFloatStateImpl.this, ((Float) obj).floatValue());
                return component2$lambda$4;
            }
        };
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.MutableFloatState, androidx.compose.runtime.FloatState
    public float getFloatValue() {
        return ((FloatStateStateRecord) SnapshotKt.readable(this.next, this)).getValue();
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    @NotNull
    public SnapshotMutationPolicy<Float> getPolicy() {
        return SnapshotStateKt.structuralEqualityPolicy();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @Nullable
    public StateRecord mergeRecords(@NotNull StateRecord stateRecord, @NotNull StateRecord stateRecord2, @NotNull StateRecord stateRecord3) {
        Intrinsics.checkNotNull(stateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord");
        Intrinsics.checkNotNull(stateRecord3, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord");
        if (((FloatStateStateRecord) stateRecord2).getValue() != ((FloatStateStateRecord) stateRecord3).getValue()) {
            return null;
        }
        return stateRecord2;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(@NotNull StateRecord stateRecord) {
        Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord");
        this.next = (FloatStateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.MutableFloatState
    public void setFloatValue(float f10) {
        Snapshot current;
        FloatStateStateRecord floatStateStateRecord = (FloatStateStateRecord) SnapshotKt.current(this.next);
        if (floatStateStateRecord.getValue() != f10) {
            FloatStateStateRecord floatStateStateRecord2 = this.next;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                ((FloatStateStateRecord) SnapshotKt.overwritableRecord(floatStateStateRecord2, this, current, floatStateStateRecord)).setValue(f10);
                Unit unit = Unit.f60915a;
            }
            SnapshotKt.notifyWrite(current, this);
        }
    }

    @NotNull
    public String toString() {
        return "MutableFloatState(value=" + ((FloatStateStateRecord) SnapshotKt.current(this.next)).getValue() + ")@" + hashCode();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.MutableState
    @NotNull
    public Float component1() {
        return Float.valueOf(getFloatValue());
    }
}
