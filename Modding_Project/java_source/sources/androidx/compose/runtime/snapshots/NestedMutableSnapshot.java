package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Snapshot.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/NestedMutableSnapshot\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 SnapshotId.jvm.kt\nandroidx/compose/runtime/snapshots/SnapshotId_jvmKt\n*L\n1#1,2486:1\n1893#2:2487\n33#3:2488\n1#4:2489\n31#5:2490\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/NestedMutableSnapshot\n*L\n1589#1:2487\n1589#1:2488\n1607#1:2490\n*E\n"})
/* loaded from: classes.dex */
public final class NestedMutableSnapshot extends MutableSnapshot {
    public static final int $stable = 8;
    private boolean deactivated;
    @NotNull
    private final MutableSnapshot parent;

    public NestedMutableSnapshot(long j10, @NotNull SnapshotIdSet snapshotIdSet, @Nullable Function1<Object, Unit> function1, @Nullable Function1<Object, Unit> function12, @NotNull MutableSnapshot mutableSnapshot) {
        super(j10, snapshotIdSet, function1, function12);
        this.parent = mutableSnapshot;
        mutableSnapshot.mo1496nestedActivated$runtime(this);
    }

    private final void deactivate() {
        if (!this.deactivated) {
            this.deactivated = true;
            this.parent.mo1497nestedDeactivated$runtime(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0085 A[Catch: all -> 0x0069, TryCatch #0 {all -> 0x0069, blocks: (B:13:0x0035, B:15:0x003a, B:18:0x0041, B:22:0x005d, B:24:0x0065, B:29:0x0079, B:31:0x0085, B:32:0x008a, B:27:0x006b, B:28:0x0074), top: B:40:0x0035 }] */
    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.compose.runtime.snapshots.SnapshotApplyResult apply() {
        /*
            r11 = this;
            androidx.compose.runtime.snapshots.MutableSnapshot r0 = r11.parent
            boolean r0 = r0.getApplied$runtime()
            if (r0 != 0) goto Ld1
            androidx.compose.runtime.snapshots.MutableSnapshot r0 = r11.parent
            boolean r0 = r0.getDisposed$runtime()
            if (r0 == 0) goto L12
            goto Ld1
        L12:
            androidx.collection.MutableScatterSet r0 = r11.getModified$runtime()
            long r7 = r11.getSnapshotId()
            r9 = 0
            if (r0 == 0) goto L2f
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent
            long r1 = r1.getSnapshotId()
            androidx.compose.runtime.snapshots.MutableSnapshot r3 = r11.parent
            androidx.compose.runtime.snapshots.SnapshotIdSet r3 = r3.getInvalid$runtime()
            java.util.Map r1 = androidx.compose.runtime.snapshots.SnapshotKt.access$optimisticMerges(r1, r11, r3)
            r5 = r1
            goto L30
        L2f:
            r5 = r9
        L30:
            java.lang.Object r10 = androidx.compose.runtime.snapshots.SnapshotKt.getLock()
            monitor-enter(r10)
            androidx.compose.runtime.snapshots.SnapshotKt.access$validateOpen(r11)     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L74
            int r1 = r0.getSize()     // Catch: java.lang.Throwable -> L69
            if (r1 != 0) goto L41
            goto L74
        L41:
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent     // Catch: java.lang.Throwable -> L69
            long r2 = r1.getSnapshotId()     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.SnapshotIdSet r6 = r1.getInvalid$runtime()     // Catch: java.lang.Throwable -> L69
            r1 = r11
            r4 = r0
            androidx.compose.runtime.snapshots.SnapshotApplyResult r1 = r1.innerApplyLocked$runtime(r2, r4, r5, r6)     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.SnapshotApplyResult$Success r2 = androidx.compose.runtime.snapshots.SnapshotApplyResult.Success.INSTANCE     // Catch: java.lang.Throwable -> L69
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)     // Catch: java.lang.Throwable -> L69
            if (r2 != 0) goto L5d
            monitor-exit(r10)
            return r1
        L5d:
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent     // Catch: java.lang.Throwable -> L69
            androidx.collection.MutableScatterSet r1 = r1.getModified$runtime()     // Catch: java.lang.Throwable -> L69
            if (r1 == 0) goto L6b
            r1.addAll(r0)     // Catch: java.lang.Throwable -> L69
            goto L79
        L69:
            r0 = move-exception
            goto Lcf
        L6b:
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent     // Catch: java.lang.Throwable -> L69
            r1.setModified$runtime(r0)     // Catch: java.lang.Throwable -> L69
            r11.setModified$runtime(r9)     // Catch: java.lang.Throwable -> L69
            goto L79
        L74:
            r11.closeAndReleasePinning$runtime()     // Catch: java.lang.Throwable -> L69
            kotlin.Unit r1 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L69
        L79:
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent     // Catch: java.lang.Throwable -> L69
            long r1 = r1.getSnapshotId()     // Catch: java.lang.Throwable -> L69
            int r1 = kotlin.jvm.internal.Intrinsics.compare(r1, r7)     // Catch: java.lang.Throwable -> L69
            if (r1 >= 0) goto L8a
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent     // Catch: java.lang.Throwable -> L69
            r1.advance$runtime()     // Catch: java.lang.Throwable -> L69
        L8a:
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.SnapshotIdSet r2 = r1.getInvalid$runtime()     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.SnapshotIdSet r2 = r2.clear(r7)     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.SnapshotIdSet r3 = r11.getPreviousIds$runtime()     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.SnapshotIdSet r2 = r2.andNot(r3)     // Catch: java.lang.Throwable -> L69
            r1.setInvalid$runtime(r2)     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent     // Catch: java.lang.Throwable -> L69
            r1.recordPrevious$runtime(r7)     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent     // Catch: java.lang.Throwable -> L69
            int r2 = r11.takeoverPinnedSnapshot$runtime()     // Catch: java.lang.Throwable -> L69
            r1.recordPreviousPinnedSnapshot$runtime(r2)     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.SnapshotIdSet r2 = r11.getPreviousIds$runtime()     // Catch: java.lang.Throwable -> L69
            r1.recordPreviousList$runtime(r2)     // Catch: java.lang.Throwable -> L69
            androidx.compose.runtime.snapshots.MutableSnapshot r1 = r11.parent     // Catch: java.lang.Throwable -> L69
            int[] r2 = r11.getPreviousPinnedSnapshots$runtime()     // Catch: java.lang.Throwable -> L69
            r1.recordPreviousPinnedSnapshots$runtime(r2)     // Catch: java.lang.Throwable -> L69
            kotlin.Unit r1 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L69
            monitor-exit(r10)
            r1 = 1
            r11.setApplied$runtime(r1)
            r11.deactivate()
            androidx.compose.runtime.snapshots.tooling.SnapshotObserverKt.dispatchObserverOnApplied(r11, r0)
            androidx.compose.runtime.snapshots.SnapshotApplyResult$Success r0 = androidx.compose.runtime.snapshots.SnapshotApplyResult.Success.INSTANCE
            return r0
        Lcf:
            monitor-exit(r10)
            throw r0
        Ld1:
            androidx.compose.runtime.snapshots.SnapshotApplyResult$Failure r0 = new androidx.compose.runtime.snapshots.SnapshotApplyResult$Failure
            r0.<init>(r11)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.NestedMutableSnapshot.apply():androidx.compose.runtime.snapshots.SnapshotApplyResult");
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
        if (!getDisposed$runtime()) {
            super.dispose();
            deactivate();
        }
    }

    @NotNull
    public final MutableSnapshot getParent() {
        return this.parent;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot getRoot() {
        return this.parent.getRoot();
    }
}
