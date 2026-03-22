package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.InternalComposeApi;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.internal.Thread_jvmKt;
import androidx.compose.runtime.snapshots.Snapshot;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Snapshot.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 2 SnapshotId.jvm.kt\nandroidx/compose/runtime/snapshots/SnapshotId_jvmKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2486:1\n46#2:2487\n1893#3:2488\n1893#3:2494\n33#4:2489\n33#4:2495\n49#5,4:2490\n34#5,4:2496\n1#6:2500\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n81#1:2487\n113#1:2488\n245#1:2494\n113#1:2489\n245#1:2495\n190#1:2490,4\n274#1:2496,4\n*E\n"})
/* loaded from: classes.dex */
public abstract class Snapshot {
    public static final int PreexistingSnapshotId = 1;
    private boolean disposed;
    @NotNull
    private SnapshotIdSet invalid;
    private int pinningTrackingHandle;
    private long snapshotId;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    /* compiled from: Snapshot.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,2486:1\n547#1:2492\n547#1:2498\n550#1:2499\n149#2,5:2487\n149#2,5:2493\n1893#3:2500\n1893#3:2502\n1893#3:2504\n1893#3:2506\n1893#3:2508\n33#4:2501\n33#4:2503\n33#4:2505\n33#4:2507\n33#4:2509\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n*L\n493#1:2492\n555#1:2498\n559#1:2499\n456#1:2487,5\n528#1:2493,5\n624#1:2500\n645#1:2502\n679#1:2504\n625#1:2506\n648#1:2508\n624#1:2501\n645#1:2503\n679#1:2505\n625#1:2507\n648#1:2509\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean getCanBeReused(TransparentObserverMutableSnapshot transparentObserverMutableSnapshot) {
            return transparentObserverMutableSnapshot.getThreadId$runtime() == Thread_jvmKt.currentThreadId();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object observe$default(Companion companion, Function1 function1, Function1 function12, Function0 function0, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                function1 = null;
            }
            if ((i10 & 2) != 0) {
                function12 = null;
            }
            return companion.observe(function1, function12, function0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void registerApplyObserver$lambda$3(Function2 function2) {
            synchronized (SnapshotKt.getLock()) {
                SnapshotKt.access$setApplyObservers$p(CollectionsKt.I0(SnapshotKt.access$getApplyObservers$p(), function2));
                Unit unit = Unit.f60915a;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void registerGlobalWriteObserver$lambda$6(Function1 function1) {
            synchronized (SnapshotKt.getLock()) {
                SnapshotKt.access$setGlobalWriteObservers$p(CollectionsKt.I0(SnapshotKt.access$getGlobalWriteObservers$p(), function1));
                Unit unit = Unit.f60915a;
            }
            SnapshotKt.access$advanceGlobalSnapshot();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ MutableSnapshot takeMutableSnapshot$default(Companion companion, Function1 function1, Function1 function12, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                function1 = null;
            }
            if ((i10 & 2) != 0) {
                function12 = null;
            }
            return companion.takeMutableSnapshot(function1, function12);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Snapshot takeSnapshot$default(Companion companion, Function1 function1, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                function1 = null;
            }
            return companion.takeSnapshot(function1);
        }

        @NotNull
        public final Snapshot createNonObservableSnapshot() {
            return SnapshotKt.createTransparentSnapshotWithNoParentReadObserver$default((Snapshot) SnapshotKt.access$getThreadSnapshot$p().get(), null, false, 6, null);
        }

        @NotNull
        public final Snapshot getCurrent() {
            return SnapshotKt.currentSnapshot();
        }

        @Nullable
        public final Snapshot getCurrentThreadSnapshot() {
            return (Snapshot) SnapshotKt.access$getThreadSnapshot$p().get();
        }

        public final <T> T global(@NotNull Function0<? extends T> function0) {
            Snapshot removeCurrent = removeCurrent();
            try {
                return function0.invoke();
            } finally {
                InlineMarker.finallyStart(1);
                restoreCurrent(removeCurrent);
                InlineMarker.finallyEnd(1);
            }
        }

        public final boolean isApplyObserverNotificationPending() {
            if (SnapshotKt.access$getPendingApplyObserverCount$p().get() > 0) {
                return true;
            }
            return false;
        }

        public final boolean isInSnapshot() {
            if (SnapshotKt.access$getThreadSnapshot$p().get() != null) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Snapshot makeCurrentNonObservable(@Nullable Snapshot snapshot) {
            if (snapshot instanceof TransparentObserverMutableSnapshot) {
                TransparentObserverMutableSnapshot transparentObserverMutableSnapshot = (TransparentObserverMutableSnapshot) snapshot;
                if (transparentObserverMutableSnapshot.getThreadId$runtime() == Thread_jvmKt.currentThreadId()) {
                    transparentObserverMutableSnapshot.setReadObserver$runtime(null);
                    return snapshot;
                }
            }
            if (snapshot instanceof TransparentObserverSnapshot) {
                TransparentObserverSnapshot transparentObserverSnapshot = (TransparentObserverSnapshot) snapshot;
                if (transparentObserverSnapshot.getThreadId$runtime() == Thread_jvmKt.currentThreadId()) {
                    transparentObserverSnapshot.setReadObserver$runtime(null);
                    return snapshot;
                }
            }
            Snapshot createTransparentSnapshotWithNoParentReadObserver$default = SnapshotKt.createTransparentSnapshotWithNoParentReadObserver$default(snapshot, null, false, 6, null);
            createTransparentSnapshotWithNoParentReadObserver$default.makeCurrent();
            return createTransparentSnapshotWithNoParentReadObserver$default;
        }

        public final void notifyObjectsInitialized() {
            SnapshotKt.currentSnapshot().notifyObjectsInitialized$runtime();
        }

        public final <T> T observe(@Nullable Function1<Object, Unit> function1, @Nullable Function1<Object, Unit> function12, @NotNull Function0<? extends T> function0) {
            Snapshot transparentObserverMutableSnapshot;
            if (function1 == null && function12 == null) {
                return function0.invoke();
            }
            Snapshot snapshot = (Snapshot) SnapshotKt.access$getThreadSnapshot$p().get();
            MutableSnapshot mutableSnapshot = null;
            if (snapshot instanceof TransparentObserverMutableSnapshot) {
                TransparentObserverMutableSnapshot transparentObserverMutableSnapshot2 = (TransparentObserverMutableSnapshot) snapshot;
                if (transparentObserverMutableSnapshot2.getThreadId$runtime() == Thread_jvmKt.currentThreadId()) {
                    Function1<Object, Unit> readObserver = transparentObserverMutableSnapshot2.getReadObserver();
                    Function1<Object, Unit> writeObserver$runtime = transparentObserverMutableSnapshot2.getWriteObserver$runtime();
                    try {
                        ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(SnapshotKt.mergedReadObserver$default(function1, readObserver, false, 4, null));
                        ((TransparentObserverMutableSnapshot) snapshot).setWriteObserver$runtime(SnapshotKt.access$mergedWriteObserver(function12, writeObserver$runtime));
                        return function0.invoke();
                    } finally {
                        transparentObserverMutableSnapshot2.setReadObserver$runtime(readObserver);
                        transparentObserverMutableSnapshot2.setWriteObserver$runtime(writeObserver$runtime);
                    }
                }
            }
            if (snapshot != null && !(snapshot instanceof MutableSnapshot)) {
                if (function1 == null) {
                    return function0.invoke();
                }
                transparentObserverMutableSnapshot = snapshot.takeNestedSnapshot(function1);
            } else {
                if (snapshot instanceof MutableSnapshot) {
                    mutableSnapshot = (MutableSnapshot) snapshot;
                }
                transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(mutableSnapshot, function1, function12, true, false);
            }
            try {
                Snapshot makeCurrent = transparentObserverMutableSnapshot.makeCurrent();
                T invoke = function0.invoke();
                transparentObserverMutableSnapshot.restoreCurrent(makeCurrent);
                return invoke;
            } finally {
                transparentObserverMutableSnapshot.dispose();
            }
        }

        @InternalComposeApi
        public final int openSnapshotCount() {
            return CollectionsKt.d1(SnapshotKt.access$getOpenSnapshots$p()).size();
        }

        @NotNull
        public final ObserverHandle registerApplyObserver(@NotNull final Function2<? super Set<? extends Object>, ? super Snapshot, Unit> function2) {
            SnapshotKt.access$advanceGlobalSnapshot(SnapshotKt.access$getEmptyLambda$p());
            synchronized (SnapshotKt.getLock()) {
                SnapshotKt.access$setApplyObservers$p(CollectionsKt.L0(SnapshotKt.access$getApplyObservers$p(), function2));
                Unit unit = Unit.f60915a;
            }
            return new ObserverHandle() { // from class: androidx.compose.runtime.snapshots.b
                @Override // androidx.compose.runtime.snapshots.ObserverHandle
                public final void dispose() {
                    Snapshot.Companion.registerApplyObserver$lambda$3(Function2.this);
                }
            };
        }

        @NotNull
        public final ObserverHandle registerGlobalWriteObserver(@NotNull final Function1<Object, Unit> function1) {
            synchronized (SnapshotKt.getLock()) {
                SnapshotKt.access$setGlobalWriteObservers$p(CollectionsKt.L0(SnapshotKt.access$getGlobalWriteObservers$p(), function1));
                Unit unit = Unit.f60915a;
            }
            SnapshotKt.access$advanceGlobalSnapshot();
            return new ObserverHandle() { // from class: androidx.compose.runtime.snapshots.c
                @Override // androidx.compose.runtime.snapshots.ObserverHandle
                public final void dispose() {
                    Snapshot.Companion.registerGlobalWriteObserver$lambda$6(Function1.this);
                }
            };
        }

        @Nullable
        public final Snapshot removeCurrent() {
            Snapshot snapshot = (Snapshot) SnapshotKt.access$getThreadSnapshot$p().get();
            if (snapshot != null) {
                SnapshotKt.access$getThreadSnapshot$p().set(null);
            }
            return snapshot;
        }

        public final void restoreCurrent(@Nullable Snapshot snapshot) {
            if (snapshot != null) {
                SnapshotKt.access$getThreadSnapshot$p().set(snapshot);
            }
        }

        public final void restoreNonObservable(@Nullable Snapshot snapshot, @NotNull Snapshot snapshot2, @Nullable Function1<Object, Unit> function1) {
            if (snapshot == snapshot2) {
                if (snapshot instanceof TransparentObserverMutableSnapshot) {
                    ((TransparentObserverMutableSnapshot) snapshot).setReadObserver$runtime(function1);
                    return;
                } else if (snapshot instanceof TransparentObserverSnapshot) {
                    ((TransparentObserverSnapshot) snapshot).setReadObserver$runtime(function1);
                    return;
                } else {
                    throw new IllegalStateException(("Non-transparent snapshot was reused: " + snapshot).toString());
                }
            }
            snapshot2.restoreCurrent(snapshot);
            snapshot2.dispose();
        }

        public final void sendApplyNotifications() {
            boolean hasPendingChanges;
            synchronized (SnapshotKt.getLock()) {
                hasPendingChanges = SnapshotKt.access$getGlobalSnapshot$p().hasPendingChanges();
            }
            if (hasPendingChanges) {
                SnapshotKt.access$advanceGlobalSnapshot();
            }
        }

        @NotNull
        public final MutableSnapshot takeMutableSnapshot(@Nullable Function1<Object, Unit> function1, @Nullable Function1<Object, Unit> function12) {
            MutableSnapshot mutableSnapshot;
            MutableSnapshot takeNestedMutableSnapshot;
            Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
            if (currentSnapshot instanceof MutableSnapshot) {
                mutableSnapshot = (MutableSnapshot) currentSnapshot;
            } else {
                mutableSnapshot = null;
            }
            if (mutableSnapshot != null && (takeNestedMutableSnapshot = mutableSnapshot.takeNestedMutableSnapshot(function1, function12)) != null) {
                return takeNestedMutableSnapshot;
            }
            throw new IllegalStateException("Cannot create a mutable snapshot of an read-only snapshot");
        }

        @NotNull
        public final Snapshot takeSnapshot(@Nullable Function1<Object, Unit> function1) {
            return SnapshotKt.currentSnapshot().takeNestedSnapshot(function1);
        }

        public final <R> R withMutableSnapshot(@NotNull Function0<? extends R> function0) {
            MutableSnapshot takeMutableSnapshot$default = takeMutableSnapshot$default(this, null, null, 3, null);
            try {
                Snapshot makeCurrent = takeMutableSnapshot$default.makeCurrent();
                R invoke = function0.invoke();
                InlineMarker.finallyStart(1);
                takeMutableSnapshot$default.restoreCurrent(makeCurrent);
                InlineMarker.finallyEnd(1);
                InlineMarker.finallyStart(1);
                takeMutableSnapshot$default.apply().check();
                takeMutableSnapshot$default.dispose();
                InlineMarker.finallyEnd(1);
                return invoke;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    InlineMarker.finallyStart(1);
                    takeMutableSnapshot$default.dispose();
                    InlineMarker.finallyEnd(1);
                    throw th3;
                }
            }
        }

        public final <T> T withoutReadObservation(@NotNull Function0<? extends T> function0) {
            Function1<Object, Unit> function1;
            Snapshot currentThreadSnapshot = getCurrentThreadSnapshot();
            if (currentThreadSnapshot != null) {
                function1 = currentThreadSnapshot.getReadObserver();
            } else {
                function1 = null;
            }
            Snapshot makeCurrentNonObservable = makeCurrentNonObservable(currentThreadSnapshot);
            try {
                return function0.invoke();
            } finally {
                InlineMarker.finallyStart(1);
                restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, function1);
                InlineMarker.finallyEnd(1);
            }
        }

        private Companion() {
        }

        private final boolean getCanBeReused(TransparentObserverSnapshot transparentObserverSnapshot) {
            return transparentObserverSnapshot.getThreadId$runtime() == Thread_jvmKt.currentThreadId();
        }

        public static /* synthetic */ void getCurrentThreadSnapshot$annotations() {
        }

        public static /* synthetic */ void getPreexistingSnapshotId$annotations() {
        }
    }

    public /* synthetic */ Snapshot(int i10, SnapshotIdSet snapshotIdSet, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, snapshotIdSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Snapshot takeNestedSnapshot$default(Snapshot snapshot, Function1 function1, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                function1 = null;
            }
            return snapshot.takeNestedSnapshot(function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: takeNestedSnapshot");
    }

    public final void closeAndReleasePinning$runtime() {
        synchronized (SnapshotKt.getLock()) {
            closeLocked$runtime();
            releasePinnedSnapshotsForCloseLocked$runtime();
            Unit unit = Unit.f60915a;
        }
    }

    public void closeLocked$runtime() {
        SnapshotKt.access$setOpenSnapshots$p(SnapshotKt.access$getOpenSnapshots$p().clear(getSnapshotId()));
    }

    public void dispose() {
        this.disposed = true;
        synchronized (SnapshotKt.getLock()) {
            releasePinnedSnapshotLocked$runtime();
            Unit unit = Unit.f60915a;
        }
    }

    public final <T> T enter(@NotNull Function0<? extends T> function0) {
        Snapshot makeCurrent = makeCurrent();
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            restoreCurrent(makeCurrent);
            InlineMarker.finallyEnd(1);
        }
    }

    public final boolean getDisposed$runtime() {
        return this.disposed;
    }

    public int getId() {
        return (int) getSnapshotId();
    }

    @NotNull
    public SnapshotIdSet getInvalid$runtime() {
        return this.invalid;
    }

    @Nullable
    public abstract MutableScatterSet<StateObject> getModified$runtime();

    @Nullable
    public abstract Function1<Object, Unit> getReadObserver();

    public abstract boolean getReadOnly();

    @NotNull
    public abstract Snapshot getRoot();

    public long getSnapshotId() {
        return this.snapshotId;
    }

    public int getWriteCount$runtime() {
        return 0;
    }

    @Nullable
    public abstract Function1<Object, Unit> getWriteObserver$runtime();

    public abstract boolean hasPendingChanges();

    public final boolean isPinned$runtime() {
        if (this.pinningTrackingHandle >= 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public Snapshot makeCurrent() {
        Snapshot snapshot = (Snapshot) SnapshotKt.access$getThreadSnapshot$p().get();
        SnapshotKt.access$getThreadSnapshot$p().set(this);
        return snapshot;
    }

    /* renamed from: nestedActivated$runtime */
    public abstract void mo1496nestedActivated$runtime(@NotNull Snapshot snapshot);

    /* renamed from: nestedDeactivated$runtime */
    public abstract void mo1497nestedDeactivated$runtime(@NotNull Snapshot snapshot);

    public abstract void notifyObjectsInitialized$runtime();

    /* renamed from: recordModified$runtime */
    public abstract void mo1498recordModified$runtime(@NotNull StateObject stateObject);

    public final void releasePinnedSnapshotLocked$runtime() {
        int i10 = this.pinningTrackingHandle;
        if (i10 >= 0) {
            SnapshotKt.releasePinningLocked(i10);
            this.pinningTrackingHandle = -1;
        }
    }

    public void releasePinnedSnapshotsForCloseLocked$runtime() {
        releasePinnedSnapshotLocked$runtime();
    }

    public void restoreCurrent(@Nullable Snapshot snapshot) {
        SnapshotKt.access$getThreadSnapshot$p().set(snapshot);
    }

    public final void setDisposed$runtime(boolean z10) {
        this.disposed = z10;
    }

    public void setInvalid$runtime(@NotNull SnapshotIdSet snapshotIdSet) {
        this.invalid = snapshotIdSet;
    }

    public void setSnapshotId$runtime(long j10) {
        this.snapshotId = j10;
    }

    public void setWriteCount$runtime(int i10) {
        throw new IllegalStateException("Updating write count is not supported for this snapshot");
    }

    @NotNull
    public abstract Snapshot takeNestedSnapshot(@Nullable Function1<Object, Unit> function1);

    public final int takeoverPinnedSnapshot$runtime() {
        int i10 = this.pinningTrackingHandle;
        this.pinningTrackingHandle = -1;
        return i10;
    }

    @Nullable
    public final Snapshot unsafeEnter() {
        return makeCurrent();
    }

    public final void unsafeLeave(@Nullable Snapshot snapshot) {
        boolean z10;
        if (SnapshotKt.access$getThreadSnapshot$p().get() == this) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalStateException("Cannot leave snapshot; " + this + " is not the current snapshot");
        }
        restoreCurrent(snapshot);
    }

    public final void validateNotDisposed$runtime() {
        if (this.disposed) {
            PreconditionsKt.throwIllegalArgumentException("Cannot use a disposed snapshot");
        }
    }

    public /* synthetic */ Snapshot(long j10, SnapshotIdSet snapshotIdSet, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, snapshotIdSet);
    }

    private Snapshot(long j10, SnapshotIdSet snapshotIdSet) {
        this.invalid = snapshotIdSet;
        this.snapshotId = j10;
        this.pinningTrackingHandle = j10 != SnapshotKt.access$getINVALID_SNAPSHOT$p() ? SnapshotKt.trackPinning(j10, getInvalid$runtime()) : -1;
    }

    @ms.c
    private /* synthetic */ Snapshot(int i10, SnapshotIdSet snapshotIdSet) {
        this(SnapshotId_jvmKt.toSnapshotId(i10), snapshotIdSet, (DefaultConstructorMarker) null);
    }

    @ms.c
    public static /* synthetic */ void getId$annotations() {
    }

    private static /* synthetic */ void getPinningTrackingHandle$annotations() {
    }

    public static /* synthetic */ void getReadObserver$annotations() {
    }
}
