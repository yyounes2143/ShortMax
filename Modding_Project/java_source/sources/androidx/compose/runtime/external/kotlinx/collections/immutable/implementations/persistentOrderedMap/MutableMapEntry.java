package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableMap;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentOrderedMapBuilderContentIterators.kt */
@Metadata
/* loaded from: classes.dex */
final class MutableMapEntry<K, V> extends MapEntry<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {
    @NotNull
    private LinkedValue<V> links;
    @NotNull
    private final Map<K, LinkedValue<V>> mutableMap;

    public MutableMapEntry(@NotNull Map<K, LinkedValue<V>> map, K k10, @NotNull LinkedValue<V> linkedValue) {
        super(k10, linkedValue.getValue());
        this.mutableMap = map;
        this.links = linkedValue;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public V getValue() {
        return this.links.getValue();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public V setValue(V v10) {
        V value = this.links.getValue();
        this.links = this.links.withValue(v10);
        this.mutableMap.put(getKey(), this.links);
        return value;
    }
}
