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
public final class TransparentObserverMutableSnapshot extends MutableSnapshot {
    public static final int $stable = 8;
    private final boolean mergeParentObservers;
    private final boolean ownsParentSnapshot;
    @Nullable
    private final MutableSnapshot parentSnapshot;
    @Nullable
    private Function1<Object, Unit> readObserver;
    private final long threadId;
    @Nullable
    private Function1<Object, Unit> writeObserver;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TransparentObserverMutableSnapshot(@org.jetbrains.annotations.Nullable androidx.compose.runtime.snapshots.MutableSnapshot r7, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<java.lang.Object, kotlin.Unit> r8, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<java.lang.Object, kotlin.Unit> r9, boolean r10, boolean r11) {
        /*
            r6 = this;
            long r1 = androidx.compose.runtime.snapshots.SnapshotKt.access$getINVALID_SNAPSHOT$p()
            androidx.compose.runtime.snapshots.SnapshotIdSet$Companion r0 = androidx.compose.runtime.snapshots.SnapshotIdSet.Companion
            androidx.compose.runtime.snapshots.SnapshotIdSet r3 = r0.getEMPTY()
            if (r7 == 0) goto L12
            kotlin.jvm.functions.Function1 r0 = r7.getReadObserver()
            if (r0 != 0) goto L1a
        L12:
            androidx.compose.runtime.snapshots.GlobalSnapshot r0 = androidx.compose.runtime.snapshots.SnapshotKt.access$getGlobalSnapshot$p()
            kotlin.jvm.functions.Function1 r0 = r0.getReadObserver()
        L1a:
            kotlin.jvm.functions.Function1 r4 = androidx.compose.runtime.snapshots.SnapshotKt.access$mergedReadObserver(r8, r0, r10)
            if (r7 == 0) goto L26
            kotlin.jvm.functions.Function1 r8 = r7.getWriteObserver$runtime()
            if (r8 != 0) goto L2e
        L26:
            androidx.compose.runtime.snapshots.GlobalSnapshot r8 = androidx.compose.runtime.snapshots.SnapshotKt.access$getGlobalSnapshot$p()
            kotlin.jvm.functions.Function1 r8 = r8.getWriteObserver$runtime()
        L2e:
            kotlin.jvm.functions.Function1 r5 = androidx.compose.runtime.snapshots.SnapshotKt.access$mergedWriteObserver(r9, r8)
            r0 = r6
            r0.<init>(r1, r3, r4, r5)
            r6.parentSnapshot = r7
            r6.mergeParentObservers = r10
            r6.ownsParentSnapshot = r11
            kotlin.jvm.functions.Function1 r7 = super.getReadObserver()
            r6.readObserver = r7
            kotlin.jvm.functions.Function1 r7 = super.getWriteObserver$runtime()
            r6.writeObserver = r7
            long r7 = androidx.compose.runtime.internal.Thread_jvmKt.currentThreadId()
            r6.threadId = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.TransparentObserverMutableSnapshot.<init>(androidx.compose.runtime.snapshots.MutableSnapshot, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, boolean, boolean):void");
    }

    private final MutableSnapshot getCurrentSnapshot() {
        GlobalSnapshot globalSnapshot;
        MutableSnapshot mutableSnapshot = this.parentSnapshot;
        if (mutableSnapshot == null) {
            globalSnapshot = SnapshotKt.globalSnapshot;
            return globalSnapshot;
        }
        return mutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    @NotNull
    public SnapshotApplyResult apply() {
        return getCurrentSnapshot().apply();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
        MutableSnapshot mutableSnapshot;
        setDisposed$runtime(true);
        if (this.ownsParentSnapshot && (mutableSnapshot = this.parentSnapshot) != null) {
            mutableSnapshot.dispose();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public SnapshotIdSet getInvalid$runtime() {
        return getCurrentSnapshot().getInvalid$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public MutableScatterSet<StateObject> getModified$runtime() {
        return getCurrentSnapshot().getModified$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    /* renamed from: getReadObserver$runtime */
    public Function1<Object, Unit> getReadObserver() {
        return this.readObserver;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public boolean getReadOnly() {
        return getCurrentSnapshot().getReadOnly();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public long getSnapshotId() {
        return getCurrentSnapshot().getSnapshotId();
    }

    public final long getThreadId$runtime() {
        return this.threadId;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public int getWriteCount$runtime() {
        return getCurrentSnapshot().getWriteCount$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public Function1<Object, Unit> getWriteObserver$runtime() {
        return this.writeObserver;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public boolean hasPendingChanges() {
        return getCurrentSnapshot().hasPendingChanges();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void notifyObjectsInitialized$runtime() {
        getCurrentSnapshot().notifyObjectsInitialized$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    /* renamed from: recordModified$runtime */
    public void mo1498recordModified$runtime(@NotNull StateObject stateObject) {
        getCurrentSnapshot().mo1498recordModified$runtime(stateObject);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void setInvalid$runtime(@NotNull SnapshotIdSet snapshotIdSet) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
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

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void setWriteCount$runtime(int i10) {
        getCurrentSnapshot().setWriteCount$runtime(i10);
    }

    public void setWriteObserver$runtime(@Nullable Function1<Object, Unit> function1) {
        this.writeObserver = function1;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    @NotNull
    public MutableSnapshot takeNestedMutableSnapshot(@Nullable Function1<Object, Unit> function1, @Nullable Function1<Object, Unit> function12) {
        Function1<Object, Unit> mergedWriteObserver;
        Function1<Object, Unit> mergedReadObserver$default = SnapshotKt.mergedReadObserver$default(function1, getReadObserver(), false, 4, null);
        mergedWriteObserver = SnapshotKt.mergedWriteObserver(function12, getWriteObserver$runtime());
        if (!this.mergeParentObservers) {
            return new TransparentObserverMutableSnapshot(getCurrentSnapshot().takeNestedMutableSnapshot(null, mergedWriteObserver), mergedReadObserver$default, mergedWriteObserver, false, true);
        }
        return getCurrentSnapshot().takeNestedMutableSnapshot(mergedReadObserver$default, mergedWriteObserver);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
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

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* renamed from: nestedActivated$runtime */
    public Void mo1496nestedActivated$runtime(@NotNull Snapshot snapshot) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* renamed from: nestedDeactivated$runtime */
    public Void mo1497nestedDeactivated$runtime(@NotNull Snapshot snapshot) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }
}
