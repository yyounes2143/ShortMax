package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Snapshot.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/StateRecord\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2486:1\n1#2:2487\n*E\n"})
/* loaded from: classes.dex */
public abstract class StateRecord {
    public static final int $stable = 8;
    @Nullable
    private StateRecord next;
    private long snapshotId;

    public StateRecord(long j10) {
        this.snapshotId = j10;
    }

    public abstract void assign(@NotNull StateRecord stateRecord);

    @NotNull
    public abstract StateRecord create();

    @ms.c
    public /* synthetic */ StateRecord create(int i10) {
        StateRecord create = create();
        create.snapshotId = SnapshotId_jvmKt.toSnapshotId(i10);
        return create;
    }

    @Nullable
    public final StateRecord getNext$runtime() {
        return this.next;
    }

    public final long getSnapshotId$runtime() {
        return this.snapshotId;
    }

    public final void setNext$runtime(@Nullable StateRecord stateRecord) {
        this.next = stateRecord;
    }

    public final void setSnapshotId$runtime(long j10) {
        this.snapshotId = j10;
    }

    @NotNull
    public StateRecord create(long j10) {
        StateRecord create = create();
        create.snapshotId = j10;
        return create;
    }

    public StateRecord() {
        this(SnapshotKt.currentSnapshot().getSnapshotId());
    }

    @ms.c
    public StateRecord(int i10) {
        this(SnapshotId_jvmKt.toSnapshotId(i10));
    }
}
