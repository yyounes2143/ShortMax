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
@SourceDebugExtension({"SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapKeySet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMap\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,416:1\n1863#2,2:417\n1734#2,3:455\n114#3,2:419\n157#3,5:421\n162#3:427\n150#3:428\n163#3,5:430\n116#3,7:435\n168#3,2:442\n154#3:444\n171#3:453\n123#3:454\n33#4:426\n2474#5:429\n2364#5,2:445\n1893#5:447\n2366#5,4:448\n1#6:452\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapKeySet\n*L\n272#1:417,2\n283#1:455,3\n278#1:419,2\n278#1:421,5\n278#1:427\n278#1:428\n278#1:430,5\n278#1:435,7\n278#1:442,2\n278#1:444\n278#1:453\n278#1:454\n278#1:426\n278#1:429\n278#1:445,2\n278#1:447\n278#1:448,4\n278#1:452\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotMapKeySet<K, V> extends SnapshotMapSet<K, V, K> {
    public SnapshotMapKeySet(@NotNull SnapshotStateMap<K, V> snapshotStateMap) {
        super(snapshotStateMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return ((Boolean) add((SnapshotMapKeySet<K, V>) obj)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return ((Boolean) addAll(collection)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return getMap().containsKey(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(@NotNull Collection<?> collection) {
        Collection<?> collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            if (!getMap().containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        if (getMap().remove(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(@NotNull Collection<?> collection) {
        Iterator<T> it = collection.iterator();
        while (true) {
            boolean z10 = false;
            while (it.hasNext()) {
                if (getMap().remove(it.next()) != null || z10) {
                    z10 = true;
                }
            }
            return z10;
        }
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
                if (!i12.contains(entry.getKey())) {
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
    public Void add(K k10) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // java.util.Set, java.util.Collection
    @NotNull
    public Void addAll(@NotNull Collection<? extends K> collection) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    @NotNull
    public StateMapMutableKeysIterator<K, V> iterator() {
        return new StateMapMutableKeysIterator<>(getMap(), ((ImmutableSet) getMap().getReadable$runtime().getMap$runtime().entrySet()).iterator());
    }
}
