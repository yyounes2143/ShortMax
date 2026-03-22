package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SnapshotStateMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapValueSet\n+ 2 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMap\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,416:1\n114#2,2:417\n157#2,5:419\n162#2:425\n150#2:426\n163#2,5:428\n116#2,7:433\n168#2,2:440\n154#2:442\n171#2:451\n123#2:452\n114#2,2:453\n157#2,5:455\n162#2:461\n150#2:462\n163#2,5:464\n116#2,7:469\n168#2,2:476\n154#2:478\n171#2:487\n123#2:488\n33#3:424\n33#3:460\n2474#4:427\n2364#4,2:443\n1893#4:445\n2366#4,4:446\n2474#4:463\n2364#4,2:479\n1893#4:481\n2366#4,4:482\n1#5:450\n1#5:486\n1734#6,3:489\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapValueSet\n*L\n299#1:417,2\n299#1:419,5\n299#1:425\n299#1:426\n299#1:428,5\n299#1:433,7\n299#1:440,2\n299#1:442\n299#1:451\n299#1:452\n304#1:453,2\n304#1:455,5\n304#1:461\n304#1:462\n304#1:464,5\n304#1:469,7\n304#1:476,2\n304#1:478\n304#1:487\n304#1:488\n299#1:424\n304#1:460\n299#1:427\n299#1:443,2\n299#1:445\n299#1:446,4\n304#1:463\n304#1:479,2\n304#1:481\n304#1:482,4\n299#1:450\n304#1:486\n310#1:489,3\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotMapValueSet<K, V> extends SnapshotMapSet<K, V, V> {
    public SnapshotMapValueSet(@NotNull SnapshotStateMap<K, V> snapshotStateMap) {
        super(snapshotStateMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return ((Boolean) add((SnapshotMapValueSet<K, V>) obj)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return ((Boolean) addAll(collection)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return getMap().containsValue(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(@NotNull Collection<?> collection) {
        Collection<?> collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            if (!getMap().containsValue(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        return getMap().removeValue$runtime(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(@NotNull Collection<?> collection) {
        Object obj;
        PersistentMap<K, V> map$runtime;
        int modification$runtime;
        Snapshot current;
        boolean attemptUpdate;
        Set i12 = CollectionsKt.i1(collection);
        SnapshotStateMap<K, V> map = getMap();
        boolean z10 = false;
        do {
            obj = SnapshotStateMapKt.sync;
            synchronized (obj) {
                StateRecord firstStateRecord = map.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.current((SnapshotStateMap.StateMapStateRecord) firstStateRecord);
                map$runtime = stateMapStateRecord.getMap$runtime();
                modification$runtime = stateMapStateRecord.getModification$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(map$runtime);
            PersistentMap.Builder<K, V> builder = map$runtime.builder();
            for (Map.Entry<K, V> entry : map.entrySet()) {
                if (i12.contains(entry.getValue())) {
                    builder.remove(entry.getKey());
                    z10 = true;
                }
            }
            Unit unit2 = Unit.f60915a;
            PersistentMap<K, V> build = builder.build();
            if (Intrinsics.areEqual(build, map$runtime)) {
                break;
            }
            StateRecord firstStateRecord2 = map.getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = map.attemptUpdate((SnapshotStateMap.StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, map, current), modification$runtime, build);
            }
            SnapshotKt.notifyWrite(current, map);
        } while (!attemptUpdate);
        return z10;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(@NotNull Collection<?> collection) {
        Object obj;
        PersistentMap<K, V> map$runtime;
        int modification$runtime;
        Snapshot current;
        boolean attemptUpdate;
        Set i12 = CollectionsKt.i1(collection);
        SnapshotStateMap<K, V> map = getMap();
        boolean z10 = false;
        do {
            obj = SnapshotStateMapKt.sync;
            synchronized (obj) {
                StateRecord firstStateRecord = map.getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.current((SnapshotStateMap.StateMapStateRecord) firstStateRecord);
                map$runtime = stateMapStateRecord.getMap$runtime();
                modification$runtime = stateMapStateRecord.getModification$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(map$runtime);
            PersistentMap.Builder<K, V> builder = map$runtime.builder();
            for (Map.Entry<K, V> entry : map.entrySet()) {
                if (!i12.contains(entry.getValue())) {
                    builder.remove(entry.getKey());
                    z10 = true;
                }
            }
            Unit unit2 = Unit.f60915a;
            PersistentMap<K, V> build = builder.build();
            if (Intrinsics.areEqual(build, map$runtime)) {
                break;
            }
            StateRecord firstStateRecord2 = map.getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>");
            SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = map.attemptUpdate((SnapshotStateMap.StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, map, current), modification$runtime, build);
            }
            SnapshotKt.notifyWrite(current, map);
        } while (!attemptUpdate);
        return z10;
    }

    @Override // java.util.Set, java.util.Collection
    @NotNull
    public Void add(V v10) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // java.util.Set, java.util.Collection
    @NotNull
    public Void addAll(@NotNull Collection<? extends V> collection) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    @NotNull
    public StateMapMutableValuesIterator<K, V> iterator() {
        return new StateMapMutableValuesIterator<>(getMap(), ((ImmutableSet) getMap().getReadable$runtime().getMap$runtime().entrySet()).iterator());
    }
}
