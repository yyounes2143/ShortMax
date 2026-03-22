package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Snapshot.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class TransparentObserverSnapshot extends Snapshot {
    public static final int $stable = 8;
    private final boolean mergeParentObservers;
    private final boolean ownsParentSnapshot;
    @Nullable
    private final Snapshot parentSnapshot;
    @Nullable
    private Function1<Object, Unit> readObserver;
    @NotNull
    private final Snapshot root;
    private final long threadId;
    @Nullable
    private final Function1<Object, Unit> writeObserver;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TransparentObserverSnapshot(@org.jetbrains.annotations.Nullable androidx.compose.runtime.snapshots.Snapshot r5, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<java.lang.Object, kotlin.Unit> r6, boolean r7, boolean r8) {
        /*
            r4 = this;
            long r0 = androidx.compose.runtime.snapshots.SnapshotKt.access$getINVALID_SNAPSHOT$p()
            androidx.compose.runtime.snapshots.SnapshotIdSet$Companion r2 = androidx.compose.runtime.snapshots.SnapshotIdSet.Companion
            androidx.compose.runtime.snapshots.SnapshotIdSet r2 = r2.getEMPTY()
            r3 = 0
            r4.<init>(r0, r2, r3)
            r4.parentSnapshot = r5
            r4.mergeParentObservers = r7
            r4.ownsParentSnapshot = r8
            if (r5 == 0) goto L1c
            kotlin.jvm.functions.Function1 r5 = r5.getReadObserver()
            if (r5 != 0) goto L24
        L1c:
            androidx.compose.runtime.snapshots.GlobalSnapshot r5 = androidx.compose.runtime.snapshots.SnapshotKt.access$getGlobalSnapshot$p()
            kotlin.jvm.functions.Function1 r5 = r5.getReadObserver()
        L24:
            kotlin.jvm.functions.Function1 r5 = androidx.compose.runtime.snapshots.SnapshotKt.access$mergedReadObserver(r6, r5, r7)
            r4.readObserver = r5
            long r5 = androidx.compose.runtime.internal.Thread_jvmKt.currentThreadId()
            r4.threadId = r5
            r4.root = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.TransparentObserverSnapshot.<init>(androidx.compose.runtime.snapshots.Snapshot, kotlin.jvm.functions.Function1, boolean, boolean):void");
    }

    private final Snapshot getCurrentSnapshot() {
        GlobalSnapshot globalSnapshot;
        Snapshot snapshot = this.parentSnapshot;
        if (snapshot == null) {
            globalSnapshot = SnapshotKt.globalSnapshot;
            return globalSnapshot;
        }
        return snapshot;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
        Snapshot snapshot;
        setDisposed$runtime(true);
        if (this.ownsParentSnapshot && (snapshot = this.parentSnapshot) != null) {
            snapshot.dispose();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public SnapshotIdSet getInvalid$runtime() {
        return getCurrentSnapshot().getInvalid$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public MutableScatterSet<StateObject> getModified$runtime() {
        return getCurrentSnapshot().getModified$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    /* renamed from: getReadObserver$runtime */
    public Function1<Object, Unit> getReadObserver() {
        return this.readObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean getReadOnly() {
        return getCurrentSnapshot().getReadOnly();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot getRoot() {
        return this.root;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public long getSnapshotId() {
        return getCurrentSnapshot().getSnapshotId();
    }

    public final long getThreadId$runtime() {
        return this.threadId;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public Function1<Object, Unit> getWriteObserver$runtime() {
        return this.writeObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean hasPendingChanges() {
        return getCurrentSnapshot().hasPendingChanges();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void notifyObjectsInitialized$runtime() {
        getCurrentSnapshot().notifyObjectsInitialized$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* renamed from: recordModified$runtime */
    public void mo1498recordModified$runtime(@NotNull StateObject stateObject) {
        getCurrentSnapshot().mo1498recordModified$runtime(stateObject);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void setInvalid$runtime(@NotNull SnapshotIdSet snapshotIdSet) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    public void setModified$runtime(@Nullable MutableScatterSet<StateObject> mutableScatterSet) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    public void setReadObserver$runtime(@Nullable Function1<Object, Unit> function1) {
        this.readObserver = function1;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void setSnapshotId$runtime(long j10) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot takeNestedSnapshot(@Nullable Function1<Object, Unit> function1) {
        Snapshot createTransparentSnapshotWithNoParentReadObserver;
        Function1<Object, Unit> mergedReadObserver$default = SnapshotKt.mergedReadObserver$default(function1, getReadObserver(), false, 4, null);
        if (!this.mergeParentObservers) {
            createTransparentSnapshotWithNoParentReadObserver = SnapshotKt.createTransparentSnapshotWithNoParentReadObserver(getCurrentSnapshot().takeNestedSnapshot(null), mergedReadObserver$default, true);
            return createTransparentSnapshotWithNoParentReadObserver;
        }
        return getCurrentSnapshot().takeNestedSnapshot(mergedReadObserver$default);
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
}
