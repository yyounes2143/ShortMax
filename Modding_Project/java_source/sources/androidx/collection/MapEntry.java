package androidx.collection;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
/* compiled from: ScatterMap.kt */
@Metadata
/* loaded from: classes.dex */
final class MapEntry<K, V> implements Map.Entry<K, V>, KMappedMarker {
    private final K key;
    private final V value;

    public MapEntry(K k10, V v10) {
        this.key = k10;
        this.value = v10;
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
    public V setValue(V v10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
