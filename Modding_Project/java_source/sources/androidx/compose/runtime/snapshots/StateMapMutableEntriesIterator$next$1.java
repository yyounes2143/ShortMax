package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableMap;
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: SnapshotStateMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1\n+ 2 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/StateMapMutableIterator\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,416:1\n360#2,4:417\n1#3:421\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1\n*L\n378#1:417,4\n378#1:421\n*E\n"})
/* loaded from: classes.dex */
public final class StateMapMutableEntriesIterator$next$1<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {
    private final K key;
    final /* synthetic */ StateMapMutableEntriesIterator<K, V> this$0;
    private V value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateMapMutableEntriesIterator$next$1(StateMapMutableEntriesIterator<K, V> stateMapMutableEntriesIterator) {
        this.this$0 = stateMapMutableEntriesIterator;
        Map.Entry<K, V> current = stateMapMutableEntriesIterator.getCurrent();
        Intrinsics.checkNotNull(current);
        this.key = current.getKey();
        Map.Entry<K, V> current2 = stateMapMutableEntriesIterator.getCurrent();
        Intrinsics.checkNotNull(current2);
        this.value = current2.getValue();
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public void setValue(V v10) {
        this.value = v10;
    }

    @Override // java.util.Map.Entry
    public V setValue(V v10) {
        StateMapMutableEntriesIterator<K, V> stateMapMutableEntriesIterator = this.this$0;
        if (stateMapMutableEntriesIterator.getMap().getModification$runtime() == ((StateMapMutableIterator) stateMapMutableEntriesIterator).modification) {
            V value = getValue();
            stateMapMutableEntriesIterator.getMap().put(getKey(), v10);
            setValue((StateMapMutableEntriesIterator$next$1<K, V>) v10);
            return value;
        }
        throw new ConcurrentModificationException();
    }
}
