package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/SnapshotStateListKt\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,511:1\n121#1,5:522\n126#1:528\n115#1:529\n127#1,9:531\n111#1:540\n137#1,3:549\n115#1:553\n111#1:555\n163#1,6:565\n169#1:572\n115#1:573\n170#1,9:575\n111#1:584\n179#1,6:593\n163#1,7:599\n115#1:606\n170#1,9:608\n111#1:617\n179#1,6:625\n111#1:631\n115#1:642\n111#1:644\n115#1:655\n111#1:657\n115#1:667\n2364#2,2:512\n1893#2:514\n2366#2,4:516\n2474#2:521\n2474#2:530\n2364#2,2:541\n1893#2:543\n2366#2,4:544\n2474#2:554\n2364#2,2:556\n1893#2:558\n2366#2,4:560\n2474#2:574\n2364#2,2:585\n1893#2:587\n2366#2,4:588\n2474#2:607\n2364#2,2:618\n1893#2:620\n2366#2,4:621\n2364#2,2:632\n1893#2:634\n2366#2,2:636\n2369#2:639\n2474#2:643\n2364#2,2:645\n1893#2:647\n2366#2,4:649\n2474#2:656\n2364#2,2:658\n1893#2:660\n2366#2,4:662\n2474#2:668\n33#3:515\n33#3:527\n33#3:552\n33#3:559\n33#3:571\n33#3:635\n33#3:638\n33#3:641\n33#3:648\n33#3:654\n33#3:661\n33#3:666\n25#3,5:669\n1#4:520\n1#4:548\n1#4:564\n1#4:592\n1#4:640\n1#4:653\n*S KotlinDebug\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/SnapshotStateListKt\n*L\n118#1:522,5\n118#1:528\n118#1:529\n118#1:531,9\n118#1:540\n118#1:549,3\n126#1:553\n135#1:555\n146#1:565,6\n146#1:572\n146#1:573\n146#1:575,9\n146#1:584\n146#1:593,6\n146#1:599,7\n146#1:606\n146#1:608,9\n146#1:617\n146#1:625,6\n151#1:631\n169#1:642\n178#1:644\n169#1:655\n178#1:657\n211#1:667\n111#1:512,2\n111#1:514\n111#1:516,4\n115#1:521\n118#1:530\n118#1:541,2\n118#1:543\n118#1:544,4\n126#1:554\n135#1:556,2\n135#1:558\n135#1:560,4\n146#1:574\n146#1:585,2\n146#1:587\n146#1:588,4\n146#1:607\n146#1:618,2\n146#1:620\n146#1:621,4\n151#1:632,2\n151#1:634\n151#1:636,2\n151#1:639\n169#1:643\n178#1:645,2\n178#1:647\n178#1:649,4\n169#1:656\n178#1:658,2\n178#1:660\n178#1:662,4\n211#1:668\n111#1:515\n118#1:527\n125#1:552\n135#1:559\n146#1:571\n151#1:635\n152#1:638\n168#1:641\n178#1:648\n168#1:654\n178#1:661\n192#1:666\n271#1:669,5\n111#1:520\n118#1:548\n135#1:564\n146#1:592\n151#1:640\n178#1:653\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotStateListKt {
    @NotNull
    private static final Object sync = new Object();

    @NotNull
    public static final <T> SnapshotStateList<T> SnapshotStateList(int i10, @NotNull Function1<? super Integer, ? extends T> function1) {
        if (i10 == 0) {
            return new SnapshotStateList<>();
        }
        PersistentList.Builder builder = ExtensionsKt.persistentListOf().builder();
        for (int i11 = 0; i11 < i10; i11++) {
            builder.add(function1.invoke(Integer.valueOf(i11)));
        }
        return new SnapshotStateList<>(builder.build());
    }

    public static final /* synthetic */ Object access$getSync$p() {
        return sync;
    }

    public static final <T> boolean attemptUpdate(@NotNull StateListStateRecord<T> stateListStateRecord, int i10, @NotNull PersistentList<? extends T> persistentList, boolean z10) {
        boolean z11;
        synchronized (sync) {
            try {
                if (stateListStateRecord.getModification$runtime() == i10) {
                    stateListStateRecord.setList$runtime(persistentList);
                    z11 = true;
                    if (z10) {
                        stateListStateRecord.setStructuralChange$runtime(stateListStateRecord.getStructuralChange$runtime() + 1);
                    }
                    stateListStateRecord.setModification$runtime(stateListStateRecord.getModification$runtime() + 1);
                } else {
                    z11 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z11;
    }

    public static final <T> void clearImpl(@NotNull SnapshotStateList<T> snapshotStateList) {
        Snapshot current;
        StateRecord firstStateRecord = snapshotStateList.getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
        StateListStateRecord stateListStateRecord = (StateListStateRecord) firstStateRecord;
        synchronized (SnapshotKt.getLock()) {
            try {
                current = Snapshot.Companion.getCurrent();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord, snapshotStateList, current);
                synchronized (sync) {
                    stateListStateRecord2.setList$runtime(ExtensionsKt.persistentListOf());
                    stateListStateRecord2.setModification$runtime(stateListStateRecord2.getModification$runtime() + 1);
                    stateListStateRecord2.setStructuralChange$runtime(stateListStateRecord2.getStructuralChange$runtime() + 1);
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
        SnapshotKt.notifyWrite(current, snapshotStateList);
    }

    public static final <T> boolean conditionalUpdate(@NotNull SnapshotStateList<T> snapshotStateList, boolean z10, @NotNull Function1<? super PersistentList<? extends T>, ? extends PersistentList<? extends T>> function1) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (sync) {
                try {
                    StateRecord firstStateRecord = snapshotStateList.getFirstStateRecord();
                    Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                    StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                    modification$runtime = stateListStateRecord.getModification$runtime();
                    list$runtime = stateListStateRecord.getList$runtime();
                    Unit unit = Unit.f60915a;
                    InlineMarker.finallyStart(1);
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
            InlineMarker.finallyEnd(1);
            Intrinsics.checkNotNull(list$runtime);
            PersistentList<? extends T> invoke = function1.invoke(list$runtime);
            if (Intrinsics.areEqual(invoke, list$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = snapshotStateList.getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                try {
                    current = Snapshot.Companion.getCurrent();
                    attemptUpdate = attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, snapshotStateList, current), modification$runtime, invoke, z10);
                    InlineMarker.finallyStart(1);
                } catch (Throwable th3) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th3;
                }
            }
            InlineMarker.finallyEnd(1);
            SnapshotKt.notifyWrite(current, snapshotStateList);
        } while (!attemptUpdate);
        return true;
    }

    public static /* synthetic */ boolean conditionalUpdate$default(SnapshotStateList snapshotStateList, boolean z10, Function1 function1, int i10, Object obj) {
        int modification$runtime;
        PersistentList list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        do {
            synchronized (sync) {
                try {
                    StateRecord firstStateRecord = snapshotStateList.getFirstStateRecord();
                    Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                    StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                    modification$runtime = stateListStateRecord.getModification$runtime();
                    list$runtime = stateListStateRecord.getList$runtime();
                    Unit unit = Unit.f60915a;
                    InlineMarker.finallyStart(1);
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
            InlineMarker.finallyEnd(1);
            Intrinsics.checkNotNull(list$runtime);
            PersistentList persistentList = (PersistentList) function1.invoke(list$runtime);
            if (Intrinsics.areEqual(persistentList, list$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = snapshotStateList.getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                try {
                    current = Snapshot.Companion.getCurrent();
                    attemptUpdate = attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, snapshotStateList, current), modification$runtime, persistentList, z10);
                    InlineMarker.finallyStart(1);
                } catch (Throwable th3) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th3;
                }
            }
            InlineMarker.finallyEnd(1);
            SnapshotKt.notifyWrite(current, snapshotStateList);
        } while (!attemptUpdate);
        return true;
    }

    @NotNull
    public static final <T> StateListStateRecord<T> getReadable(@NotNull SnapshotStateList<T> snapshotStateList) {
        StateRecord firstStateRecord = snapshotStateList.getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.<get-readable>>");
        return (StateListStateRecord) SnapshotKt.readable((StateListStateRecord) firstStateRecord, snapshotStateList);
    }

    public static final <T> int getStructure(@NotNull SnapshotStateList<T> snapshotStateList) {
        StateRecord firstStateRecord = snapshotStateList.getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
        return ((StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord)).getStructuralChange$runtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void invalidIteratorSet() {
        throw new IllegalStateException("Cannot call set before the first call to next() or previous() or immediately after a call to add() or remove()");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void modificationError() {
        throw new IllegalStateException("Cannot modify a state list through an iterator");
    }

    public static final <R, T> R mutate(@NotNull SnapshotStateList<T> snapshotStateList, @NotNull Function1<? super List<T>, ? extends R> function1) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        R invoke;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (sync) {
                try {
                    StateRecord firstStateRecord = snapshotStateList.getFirstStateRecord();
                    Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                    StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                    modification$runtime = stateListStateRecord.getModification$runtime();
                    list$runtime = stateListStateRecord.getList$runtime();
                    Unit unit = Unit.f60915a;
                    InlineMarker.finallyStart(1);
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
            InlineMarker.finallyEnd(1);
            Intrinsics.checkNotNull(list$runtime);
            PersistentList.Builder<T> builder = list$runtime.builder();
            invoke = function1.invoke(builder);
            PersistentList<T> build = builder.build();
            if (Intrinsics.areEqual(build, list$runtime)) {
                break;
            }
            StateRecord firstStateRecord2 = snapshotStateList.getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                try {
                    current = Snapshot.Companion.getCurrent();
                    attemptUpdate = attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, snapshotStateList, current), modification$runtime, build, true);
                    InlineMarker.finallyStart(1);
                } catch (Throwable th3) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th3;
                }
            }
            InlineMarker.finallyEnd(1);
            SnapshotKt.notifyWrite(current, snapshotStateList);
        } while (!attemptUpdate);
        return invoke;
    }

    public static final <T> boolean mutateBoolean(@NotNull SnapshotStateList<T> snapshotStateList, @NotNull Function1<? super List<T>, Boolean> function1) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Boolean invoke;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (sync) {
                StateRecord firstStateRecord = snapshotStateList.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                modification$runtime = stateListStateRecord.getModification$runtime();
                list$runtime = stateListStateRecord.getList$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(list$runtime);
            PersistentList.Builder<T> builder = list$runtime.builder();
            invoke = function1.invoke(builder);
            PersistentList<T> build = builder.build();
            if (Intrinsics.areEqual(build, list$runtime)) {
                break;
            }
            StateRecord firstStateRecord2 = snapshotStateList.getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, snapshotStateList, current), modification$runtime, build, true);
            }
            SnapshotKt.notifyWrite(current, snapshotStateList);
        } while (!attemptUpdate);
        return invoke.booleanValue();
    }

    @NotNull
    public static final <T> StateRecord stateRecordWith(@NotNull SnapshotStateList<T> snapshotStateList, @NotNull PersistentList<? extends T> persistentList) {
        Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
        StateListStateRecord stateListStateRecord = new StateListStateRecord(currentSnapshot.getSnapshotId(), persistentList);
        if (!(currentSnapshot instanceof GlobalSnapshot)) {
            stateListStateRecord.setNext$runtime(new StateListStateRecord(SnapshotId_jvmKt.toSnapshotId(1), persistentList));
        }
        return stateListStateRecord;
    }

    public static final <T> void update(@NotNull SnapshotStateList<T> snapshotStateList, boolean z10, @NotNull Function1<? super PersistentList<? extends T>, ? extends PersistentList<? extends T>> function1) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (sync) {
                try {
                    StateRecord firstStateRecord = snapshotStateList.getFirstStateRecord();
                    Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                    StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                    modification$runtime = stateListStateRecord.getModification$runtime();
                    list$runtime = stateListStateRecord.getList$runtime();
                    Unit unit = Unit.f60915a;
                    InlineMarker.finallyStart(1);
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
            InlineMarker.finallyEnd(1);
            Intrinsics.checkNotNull(list$runtime);
            PersistentList<? extends T> invoke = function1.invoke(list$runtime);
            if (!Intrinsics.areEqual(invoke, list$runtime)) {
                StateRecord firstStateRecord2 = snapshotStateList.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
                synchronized (SnapshotKt.getLock()) {
                    try {
                        current = Snapshot.Companion.getCurrent();
                        attemptUpdate = attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, snapshotStateList, current), modification$runtime, invoke, z10);
                        InlineMarker.finallyStart(1);
                    } catch (Throwable th3) {
                        InlineMarker.finallyStart(1);
                        InlineMarker.finallyEnd(1);
                        throw th3;
                    }
                }
                InlineMarker.finallyEnd(1);
                SnapshotKt.notifyWrite(current, snapshotStateList);
            } else {
                return;
            }
        } while (!attemptUpdate);
    }

    public static /* synthetic */ void update$default(SnapshotStateList snapshotStateList, boolean z10, Function1 function1, int i10, Object obj) {
        int modification$runtime;
        PersistentList list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        do {
            synchronized (sync) {
                try {
                    StateRecord firstStateRecord = snapshotStateList.getFirstStateRecord();
                    Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                    StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                    modification$runtime = stateListStateRecord.getModification$runtime();
                    list$runtime = stateListStateRecord.getList$runtime();
                    Unit unit = Unit.f60915a;
                    InlineMarker.finallyStart(1);
                } catch (Throwable th2) {
                    InlineMarker.finallyStart(1);
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
            }
            InlineMarker.finallyEnd(1);
            Intrinsics.checkNotNull(list$runtime);
            PersistentList persistentList = (PersistentList) function1.invoke(list$runtime);
            if (!Intrinsics.areEqual(persistentList, list$runtime)) {
                StateRecord firstStateRecord2 = snapshotStateList.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
                synchronized (SnapshotKt.getLock()) {
                    try {
                        current = Snapshot.Companion.getCurrent();
                        attemptUpdate = attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, snapshotStateList, current), modification$runtime, persistentList, z10);
                        InlineMarker.finallyStart(1);
                    } catch (Throwable th3) {
                        InlineMarker.finallyStart(1);
                        InlineMarker.finallyEnd(1);
                        throw th3;
                    }
                }
                InlineMarker.finallyEnd(1);
                SnapshotKt.notifyWrite(current, snapshotStateList);
            } else {
                return;
            }
        } while (!attemptUpdate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void validateRange(int i10, int i11) {
        if (i10 >= 0 && i10 < i11) {
            return;
        }
        throw new IndexOutOfBoundsException("index (" + i10 + ") is out of bound of [0, " + i11 + ')');
    }

    public static final <R, T> R withCurrent(@NotNull SnapshotStateList<T> snapshotStateList, @NotNull Function1<? super StateListStateRecord<T>, ? extends R> function1) {
        StateRecord firstStateRecord = snapshotStateList.getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
        return function1.invoke(SnapshotKt.current((StateListStateRecord) firstStateRecord));
    }

    public static final <R, T> R writable(@NotNull SnapshotStateList<T> snapshotStateList, @NotNull Function1<? super StateListStateRecord<T>, ? extends R> function1) {
        Snapshot current;
        R invoke;
        StateRecord firstStateRecord = snapshotStateList.getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
        StateListStateRecord stateListStateRecord = (StateListStateRecord) firstStateRecord;
        synchronized (SnapshotKt.getLock()) {
            try {
                current = Snapshot.Companion.getCurrent();
                invoke = function1.invoke(SnapshotKt.writableRecord(stateListStateRecord, snapshotStateList, current));
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        SnapshotKt.notifyWrite(current, snapshotStateList);
        return invoke;
    }

    public static /* synthetic */ void getReadable$annotations(SnapshotStateList snapshotStateList) {
    }
}
