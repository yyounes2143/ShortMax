package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SnapshotStateMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapEntrySet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMap\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,416:1\n1187#2,2:417\n1261#2,4:419\n1734#2,3:459\n114#3,2:423\n157#3,5:425\n162#3:431\n150#3:432\n163#3,5:434\n116#3,7:439\n168#3,2:446\n154#3:448\n171#3:457\n123#3:458\n33#4:430\n2474#5:433\n2364#5,2:449\n1893#5:451\n2366#5,4:452\n1#6:456\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapEntrySet\n*L\n248#1:417,2\n248#1:419,4\n257#1:459,3\n249#1:423,2\n249#1:425,5\n249#1:431\n249#1:432\n249#1:434,5\n249#1:439,7\n249#1:446,2\n249#1:448\n249#1:457\n249#1:458\n249#1:430\n249#1:433\n249#1:449,2\n249#1:451\n249#1:452,4\n249#1:456\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotMapEntrySet<K, V> extends SnapshotMapSet<K, V, Map.Entry<K, V>> {
    public SnapshotMapEntrySet(@NotNull SnapshotStateMap<K, V> snapshotStateMap) {
        super(snapshotStateMap);
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return ((Boolean) add((Map.Entry) ((Map.Entry) obj))).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return ((Boolean) addAll(collection)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (TypeIntrinsics.isMutableMapEntry(obj)) {
            return contains((Map.Entry) ((Map.Entry) obj));
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(@NotNull Collection<?> collection) {
        Collection<?> collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains((Object) ((Map.Entry) it.next()))) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<Map.Entry<K, V>> iterator() {
        return new StateMapMutableEntriesIterator(getMap(), ((ImmutableSet) getMap().getReadable$runtime().getMap$runtime().entrySet()).iterator());
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ boolean remove(Object obj) {
        if (TypeIntrinsics.isMutableMapEntry(obj)) {
            return remove((Map.Entry) ((Map.Entry) obj));
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(@NotNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (true) {
            boolean z10 = false;
            while (it.hasNext()) {
                if (getMap().remove(((Map.Entry) it.next()).getKey()) != null || z10) {
                    z10 = true;
                }
            }
            return z10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(@NotNull Collection<?> collection) {
        Object obj;
        PersistentMap<K, V> map$runtime;
        int modification$runtime;
        Snapshot current;
        boolean attemptUpdate;
        Collection<?> collection2 = collection;
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(p0.e(CollectionsKt.z(collection2, 10)), 16));
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Pair a10 = ms.k.a(entry.getKey(), entry.getValue());
            linkedHashMap.put(a10.e(), a10.f());
        }
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
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                if (!linkedHashMap.containsKey(entry2.getKey()) || !Intrinsics.areEqual(linkedHashMap.get(entry2.getKey()), entry2.getValue())) {
                    builder.remove(entry2.getKey());
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

    @NotNull
    public Void add(@NotNull Map.Entry<K, V> entry) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // java.util.Set, java.util.Collection
    @NotNull
    public Void addAll(@NotNull Collection<? extends Map.Entry<K, V>> collection) {
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    public boolean contains(@NotNull Map.Entry<K, V> entry) {
        return Intrinsics.areEqual(getMap().get(entry.getKey()), entry.getValue());
    }

    public boolean remove(@NotNull Map.Entry<K, V> entry) {
        return getMap().remove(entry.getKey()) != null;
    }
}
