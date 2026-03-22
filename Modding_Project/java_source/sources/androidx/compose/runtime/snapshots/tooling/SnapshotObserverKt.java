package androidx.compose.runtime.snapshots.tooling;

import androidx.collection.ScatterSet;
import androidx.compose.runtime.ExperimentalComposeRuntimeApi;
import androidx.compose.runtime.collection.ScatterSetWrapperKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserver;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserverKt;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.y0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotObserver.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotObserver.kt\nandroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n1893#2:243\n1893#2:265\n33#3:244\n33#3:266\n34#4,5:245\n34#4,5:250\n34#4,5:255\n34#4,5:260\n1#5:267\n*S KotlinDebug\n*F\n+ 1 SnapshotObserver.kt\nandroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt\n*L\n147#1:243\n149#1:265\n147#1:244\n149#1:266\n192#1:245,5\n223#1:250,5\n231#1:255,5\n239#1:260,5\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotObserverKt {
    @Nullable
    private static PersistentList<? extends SnapshotObserver> observers;

    public static final /* synthetic */ PersistentList access$getObservers$p() {
        return observers;
    }

    @ExperimentalComposeRuntimeApi
    @NotNull
    public static final <R extends Snapshot> R creatingSnapshot(@Nullable Snapshot snapshot, @Nullable Function1<Object, Unit> function1, @Nullable Function1<Object, Unit> function12, boolean z10, @NotNull Function2<? super Function1<Object, Unit>, ? super Function1<Object, Unit>, ? extends R> function2) {
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        PersistentList persistentList = observers;
        if (persistentList != null) {
            Pair<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> mergeObservers = mergeObservers(persistentList, snapshot, z10, function1, function12);
            SnapshotInstanceObservers e10 = mergeObservers.e();
            Function1<Object, Unit> readObserver = e10.getReadObserver();
            function12 = e10.getWriteObserver();
            map = mergeObservers.f();
            function1 = readObserver;
        } else {
            map = null;
        }
        R invoke = function2.invoke(function1, function12);
        if (persistentList != null) {
            dispatchCreatedObservers(persistentList, snapshot, invoke, map);
        }
        return invoke;
    }

    @ExperimentalComposeRuntimeApi
    public static final void dispatchCreatedObservers(@NotNull PersistentList<? extends SnapshotObserver> persistentList, @Nullable Snapshot snapshot, @NotNull Snapshot snapshot2, @Nullable Map<SnapshotObserver, SnapshotInstanceObservers> map) {
        SnapshotInstanceObservers snapshotInstanceObservers;
        int size = persistentList.size();
        for (int i10 = 0; i10 < size; i10++) {
            SnapshotObserver snapshotObserver = persistentList.get(i10);
            if (map != null) {
                snapshotInstanceObservers = map.get(snapshotObserver);
            } else {
                snapshotInstanceObservers = null;
            }
            snapshotObserver.onCreated(snapshot2, snapshot, snapshotInstanceObservers);
        }
    }

    public static final void dispatchObserverOnApplied(@NotNull Snapshot snapshot, @Nullable ScatterSet<StateObject> scatterSet) {
        Set<? extends Object> f10;
        PersistentList<? extends SnapshotObserver> persistentList = observers;
        if (persistentList != null && !persistentList.isEmpty()) {
            if (scatterSet == null || (f10 = ScatterSetWrapperKt.wrapIntoSet(scatterSet)) == null) {
                f10 = y0.f();
            }
            int size = persistentList.size();
            for (int i10 = 0; i10 < size; i10++) {
                persistentList.get(i10).onApplied(snapshot, f10);
            }
        }
    }

    public static final void dispatchObserverOnPreDispose(@NotNull Snapshot snapshot) {
        PersistentList<? extends SnapshotObserver> persistentList = observers;
        if (persistentList != null) {
            int size = persistentList.size();
            for (int i10 = 0; i10 < size; i10++) {
                persistentList.get(i10).onPreDispose(snapshot);
            }
        }
    }

    private static final Function1<Object, Unit> mergeObservers(final Function1<Object, Unit> function1, final Function1<Object, Unit> function12) {
        if (function1 == null || function12 == null) {
            return function1 == null ? function12 : function1;
        }
        return new Function1() { // from class: n.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit mergeObservers$lambda$6;
                mergeObservers$lambda$6 = SnapshotObserverKt.mergeObservers$lambda$6(Function1.this, function12, obj);
                return mergeObservers$lambda$6;
            }
        };
    }

    public static final Unit mergeObservers$lambda$6(Function1 function1, Function1 function12, Object obj) {
        function1.invoke(obj);
        function12.invoke(obj);
        return Unit.f60915a;
    }

    @ExperimentalComposeRuntimeApi
    @NotNull
    public static final ObserverHandle observeSnapshots(@NotNull Snapshot.Companion companion, @NotNull final SnapshotObserver snapshotObserver) {
        synchronized (SnapshotKt.getLock()) {
            try {
                PersistentList<? extends SnapshotObserver> persistentList = observers;
                if (persistentList == null) {
                    persistentList = ExtensionsKt.persistentListOf();
                }
                observers = persistentList.add((PersistentList<? extends SnapshotObserver>) snapshotObserver);
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return new ObserverHandle() { // from class: n.b
            @Override // androidx.compose.runtime.snapshots.ObserverHandle
            public final void dispose() {
                SnapshotObserverKt.observeSnapshots$lambda$3(SnapshotObserver.this);
            }
        };
    }

    public static final void observeSnapshots$lambda$3(SnapshotObserver snapshotObserver) {
        PersistentList<? extends SnapshotObserver> persistentList;
        synchronized (SnapshotKt.getLock()) {
            try {
                PersistentList<? extends SnapshotObserver> persistentList2 = observers;
                PersistentList<? extends SnapshotObserver> persistentList3 = null;
                if (persistentList2 != null) {
                    persistentList = persistentList2.remove((PersistentList<? extends SnapshotObserver>) snapshotObserver);
                } else {
                    persistentList = null;
                }
                if (persistentList != null && !persistentList.isEmpty()) {
                    persistentList3 = persistentList;
                }
                observers = persistentList3;
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @ExperimentalComposeRuntimeApi
    @NotNull
    public static final Pair<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> mergeObservers(@NotNull PersistentList<? extends SnapshotObserver> persistentList, @Nullable Snapshot snapshot, boolean z10, @Nullable Function1<Object, Unit> function1, @Nullable Function1<Object, Unit> function12) {
        int size = persistentList.size();
        LinkedHashMap linkedHashMap = null;
        for (int i10 = 0; i10 < size; i10++) {
            SnapshotObserver snapshotObserver = persistentList.get(i10);
            SnapshotInstanceObservers onPreCreate = snapshotObserver.onPreCreate(snapshot, z10);
            if (onPreCreate != null) {
                function1 = mergeObservers(onPreCreate.getReadObserver(), function1);
                function12 = mergeObservers(onPreCreate.getWriteObserver(), function12);
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap();
                }
                linkedHashMap.put(snapshotObserver, onPreCreate);
            }
        }
        return k.a(new SnapshotInstanceObservers(function1, function12), linkedHashMap);
    }

    @ExperimentalComposeRuntimeApi
    private static /* synthetic */ void getObservers$annotations() {
    }
}
