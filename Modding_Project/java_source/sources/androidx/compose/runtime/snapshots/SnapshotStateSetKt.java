package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateSet.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateSet.kt\nandroidx/compose/runtime/snapshots/SnapshotStateSetKt\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,253:1\n112#1:254\n118#1,5:266\n123#1:272\n112#1:273\n124#1,7:275\n108#1:282\n132#1:291\n112#1:293\n108#1:295\n112#1:306\n108#1:308\n108#1:318\n2474#2:255\n2364#2,2:256\n1893#2:258\n2366#2,4:260\n2474#2:265\n2474#2:274\n2364#2,2:283\n1893#2:285\n2366#2,4:286\n2474#2:294\n2364#2,2:296\n1893#2:298\n2366#2,4:300\n2474#2:307\n2364#2,2:309\n1893#2:311\n2366#2,4:313\n2364#2,2:319\n1893#2:321\n2366#2,2:323\n2369#2:326\n33#3:259\n33#3:271\n33#3:292\n33#3:299\n33#3:305\n33#3:312\n33#3:322\n33#3:325\n33#3:328\n25#3,5:329\n1#4:264\n1#4:290\n1#4:304\n1#4:317\n1#4:327\n*S KotlinDebug\n*F\n+ 1 SnapshotStateSet.kt\nandroidx/compose/runtime/snapshots/SnapshotStateSetKt\n*L\n101#1:254\n115#1:266,5\n115#1:272\n115#1:273\n115#1:275,7\n115#1:282\n115#1:291\n123#1:293\n130#1:295\n143#1:306\n152#1:308\n162#1:318\n101#1:255\n108#1:256,2\n108#1:258\n108#1:260,4\n112#1:265\n115#1:274\n115#1:283,2\n115#1:285\n115#1:286,4\n123#1:294\n130#1:296,2\n130#1:298\n130#1:300,4\n143#1:307\n152#1:309,2\n152#1:311\n152#1:313,4\n162#1:319,2\n162#1:321\n162#1:323,2\n162#1:326\n108#1:259\n115#1:271\n122#1:292\n130#1:299\n142#1:305\n152#1:312\n162#1:322\n163#1:325\n175#1:328\n204#1:329,5\n108#1:264\n115#1:290\n130#1:304\n152#1:317\n162#1:327\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotStateSetKt {
    @NotNull
    private static final Object sync = new Object();

    public static final /* synthetic */ Object access$getSync$p() {
        return sync;
    }

    public static final <T> boolean attemptUpdate(@NotNull StateSetStateRecord<T> stateSetStateRecord, int i10, @NotNull PersistentSet<? extends T> persistentSet) {
        boolean z10;
        synchronized (sync) {
            if (stateSetStateRecord.getModification$runtime() == i10) {
                stateSetStateRecord.setSet$runtime(persistentSet);
                z10 = true;
                stateSetStateRecord.setModification$runtime(stateSetStateRecord.getModification$runtime() + 1);
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    public static final <T> void clearImpl(@NotNull SnapshotStateSet<T> snapshotStateSet) {
        Snapshot current;
        StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>");
        StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) firstStateRecord;
        synchronized (SnapshotKt.getLock()) {
            try {
                current = Snapshot.Companion.getCurrent();
                StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord, snapshotStateSet, current);
                synchronized (sync) {
                    stateSetStateRecord2.setSet$runtime(ExtensionsKt.persistentSetOf());
                    stateSetStateRecord2.setModification$runtime(stateSetStateRecord2.getModification$runtime() + 1);
                    InlineMarker.finallyStart(1);
                }
                InlineMarker.finallyEnd(1);
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        SnapshotKt.notifyWrite(current, snapshotStateSet);
    }

    public static final <T> boolean conditionalUpdate(@NotNull SnapshotStateSet<T> snapshotStateSet, @NotNull Function1<? super PersistentSet<? extends T>, ? extends PersistentSet<? extends T>> function1) {
        int modification$runtime;
        PersistentSet<T> set$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (sync) {
                try {
                    StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
                    Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>");
                    StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord);
                    modification$runtime = stateSetStateRecord.getModification$runtime();
                    set$runtime = stateSetStateRecord.getSet$runtime();
                    Unit unit = Unit.f60915a;
                    InlineMarker.finallyStart(1);
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
            InlineMarker.finallyEnd(1);
            Intrinsics.checkNotNull(set$runtime);
            PersistentSet<? extends T> invoke = function1.invoke(set$runtime);
            if (Intrinsics.areEqual(invoke, set$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = snapshotStateSet.getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>");
            StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                try {
                    current = Snapshot.Companion.getCurrent();
                    attemptUpdate = attemptUpdate((StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord2, snapshotStateSet, current), modification$runtime, invoke);
                    InlineMarker.finallyStart(1);
                } catch (Throwable th3) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th3;
                }
            }
            InlineMarker.finallyEnd(1);
            SnapshotKt.notifyWrite(current, snapshotStateSet);
        } while (!attemptUpdate);
        return true;
    }

    public static final <T> int getModification(@NotNull SnapshotStateSet<T> snapshotStateSet) {
        StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>");
        return ((StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord)).getModification$runtime();
    }

    @NotNull
    public static final <T> StateSetStateRecord<T> getReadable(@NotNull SnapshotStateSet<T> snapshotStateSet) {
        StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.<get-readable>>");
        return (StateSetStateRecord) SnapshotKt.readable((StateSetStateRecord) firstStateRecord, snapshotStateSet);
    }

    public static final <R, T> R mutate(@NotNull SnapshotStateSet<T> snapshotStateSet, @NotNull Function1<? super Set<T>, ? extends R> function1) {
        int modification$runtime;
        PersistentSet<T> set$runtime;
        PersistentSet.Builder<T> builder;
        R invoke;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (sync) {
                try {
                    StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
                    Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>");
                    StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord);
                    modification$runtime = stateSetStateRecord.getModification$runtime();
                    set$runtime = stateSetStateRecord.getSet$runtime();
                    Unit unit = Unit.f60915a;
                    InlineMarker.finallyStart(1);
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
            InlineMarker.finallyEnd(1);
            if (set$runtime != null && (builder = set$runtime.builder()) != null) {
                invoke = function1.invoke(builder);
                PersistentSet<T> build = builder.build();
                if (Intrinsics.areEqual(build, set$runtime)) {
                    break;
                }
                StateRecord firstStateRecord2 = snapshotStateSet.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>");
                StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) firstStateRecord2;
                synchronized (SnapshotKt.getLock()) {
                    try {
                        current = Snapshot.Companion.getCurrent();
                        attemptUpdate = attemptUpdate((StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord2, snapshotStateSet, current), modification$runtime, build);
                        InlineMarker.finallyStart(1);
                    } catch (Throwable th3) {
                        InlineMarker.finallyStart(1);
                        InlineMarker.finallyEnd(1);
                        throw th3;
                    }
                }
                InlineMarker.finallyEnd(1);
                SnapshotKt.notifyWrite(current, snapshotStateSet);
            } else {
                throw new IllegalStateException("No set to mutate");
            }
        } while (!attemptUpdate);
        return invoke;
    }

    public static final <T> boolean mutateBoolean(@NotNull SnapshotStateSet<T> snapshotStateSet, @NotNull Function1<? super Set<T>, Boolean> function1) {
        int modification$runtime;
        PersistentSet<T> set$runtime;
        PersistentSet.Builder<T> builder;
        Boolean invoke;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (sync) {
                StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>");
                StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord);
                modification$runtime = stateSetStateRecord.getModification$runtime();
                set$runtime = stateSetStateRecord.getSet$runtime();
                Unit unit = Unit.f60915a;
            }
            if (set$runtime != null && (builder = set$runtime.builder()) != null) {
                invoke = function1.invoke(builder);
                PersistentSet<T> build = builder.build();
                if (Intrinsics.areEqual(build, set$runtime)) {
                    break;
                }
                StateRecord firstStateRecord2 = snapshotStateSet.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>");
                StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) firstStateRecord2;
                synchronized (SnapshotKt.getLock()) {
                    current = Snapshot.Companion.getCurrent();
                    attemptUpdate = attemptUpdate((StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord2, snapshotStateSet, current), modification$runtime, build);
                }
                SnapshotKt.notifyWrite(current, snapshotStateSet);
            } else {
                throw new IllegalStateException("No set to mutate");
            }
        } while (!attemptUpdate);
        return invoke.booleanValue();
    }

    @NotNull
    public static final <T> StateRecord stateRecordWith(@NotNull SnapshotStateSet<T> snapshotStateSet, @NotNull PersistentSet<? extends T> persistentSet) {
        StateSetStateRecord stateSetStateRecord = new StateSetStateRecord(SnapshotKt.currentSnapshot().getSnapshotId(), persistentSet);
        if (Snapshot.Companion.isInSnapshot()) {
            stateSetStateRecord.setNext$runtime(new StateSetStateRecord(SnapshotId_jvmKt.toSnapshotId(1), persistentSet));
        }
        return stateSetStateRecord;
    }

    public static final <R, T> R withCurrent(@NotNull SnapshotStateSet<T> snapshotStateSet, @NotNull Function1<? super StateSetStateRecord<T>, ? extends R> function1) {
        StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>");
        return function1.invoke(SnapshotKt.current((StateSetStateRecord) firstStateRecord));
    }

    public static final <R, T> R writable(@NotNull SnapshotStateSet<T> snapshotStateSet, @NotNull Function1<? super StateSetStateRecord<T>, ? extends R> function1) {
        Snapshot current;
        R invoke;
        StateRecord firstStateRecord = snapshotStateSet.getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>");
        StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) firstStateRecord;
        synchronized (SnapshotKt.getLock()) {
            try {
                current = Snapshot.Companion.getCurrent();
                invoke = function1.invoke(SnapshotKt.writableRecord(stateSetStateRecord, snapshotStateSet, current));
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        SnapshotKt.notifyWrite(current, snapshotStateSet);
        return invoke;
    }

    public static /* synthetic */ void getReadable$annotations(SnapshotStateSet snapshotStateSet) {
    }
}
