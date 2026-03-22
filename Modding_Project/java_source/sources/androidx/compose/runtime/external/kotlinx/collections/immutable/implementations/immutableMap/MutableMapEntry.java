package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableMap;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PersistentHashMapBuilderContentIterators.kt */
@Metadata
/* loaded from: classes.dex */
public final class MutableMapEntry<K, V> extends MapEntry<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {
    @NotNull
    private final PersistentHashMapBuilderEntriesIterator<K, V> parentIterator;
    private V value;

    public MutableMapEntry(@NotNull PersistentHashMapBuilderEntriesIterator<K, V> persistentHashMapBuilderEntriesIterator, K k10, V v10) {
        super(k10, v10);
        this.parentIterator = persistentHashMapBuilderEntriesIterator;
        this.value = v10;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public void setValue(V v10) {
        this.value = v10;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public V setValue(V v10) {
        V value = getValue();
        setValue((MutableMapEntry<K, V>) v10);
        this.parentIterator.setValue(getKey(), v10);
        return value;
    }
}
